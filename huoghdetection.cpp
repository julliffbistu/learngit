#include"opencv2/opencv.hpp"
#include "opencv2/imgproc/imgproc.hpp"

using namespace cv;
using namespace std;
int main()
{
	VideoCapture capture(0);
	waitKey(200);
	Mat edges,frame,out,out3;
	while(1)
	{
		capture >> frame;
		resize(frame, frame, Size(320,240) );
	    /* 设置窗口大小，提高采集速度。
		--------------------------------------------------------------------------------------------------------------------*/
		medianBlur(frame,out3,3);
		/*中值滤波，去掉孤立的点。保证边缘清晰。
		------------------------------------------------------------------------------------------------------------------*/
		cvtColor(out3,edges,COLOR_BGR2GRAY);
		/* 对图像进行二值化处理。
		--------------------------------------------------------------------------------------------------------------------*/
		Canny(edges,edges,120, 360,3);       
		/*第三个数和第四个数是设定的阈值。较小的值用于边缘链接，较大的值用于控制强边缘的初始段，推荐高低阈值之比为2：1或者3：1
		3是孔径大小，默认是3；
		---------------------------------------------------------------------------------------------------------------------*/
	/*	Mat gread_x,gread_y;
		Mat abs_gread_x,abs_gread_y;
		Scharr(frame,gread_x,CV_16S,1,0,1,0,BORDER_DEFAULT);
		convertScaleAbs(gread_x,abs_gread_x);
		Sobel(frame,gread_y,CV_16S,0,1,1,0,BORDER_DEFAULT);
		convertScaleAbs(gread_y,abs_gread_y);
		addWeighted(abs_gread_x,0.5,abs_gread_y,0.5,0,frame);     */
		GaussianBlur(edges,out,Size(1,1),1,1);      
		/*高斯滤波，Size内核大小宽和高可以不同，但都必须为整数或0.第四个第五个数是高斯函数在X，Y方向的标准偏差。当某一个为零
		最后值将有另一个算出来，当都为零时。最终值由Size算出来。
		-------------------------------------------------------------------------------------------------------------------*/
		
		Mat element = getStructuringElement(MORPH_RECT,Size(1,1));
		for(int i=0;i<2;i++)
			dilate(out,out,element);
	    for(int i=0;i<2;i++)
			erode(out,out,element);
		/*对图像进行膨胀腐蚀化处理，使得白线加宽，变凉。
		-------------------------------------------------------------------------------------------------------------------*/
		//bilateralFilter(out1,out2,25,25*2,25/2);
		/*对图像进行双边滤波，第三个参数表示在滤波过程中每个像素邻域直径，如果是非正数， 由第五个数算出他。第四个数颜色空间滤波
		的sigam值。参数越大，表示该像素邻域内有越宽广的颜色会被混合到一起。第五个参数坐标中空间滤波器的sigam值，数值越大没标明
		越远的像素会受到影响从而使的更大区域中足够相似的颜色获取相同的颜色。第六个参数，用于推断图像外部像素的某种边界模式。
		------------------------------------------------------------------------------------------------------------------*/
		
		vector<Vec3f> circles;
		/*//声明一个向量，保存检测出的圆的圆心坐标和半径.
		------------------------------------------------------------------------------------------------------------------*/
		HoughCircles(out,circles,HOUGH_GRADIENT,1.8,10,100,100,0,120);
		/*霍夫变换检测圆.
		------------------------------------------------------------------------------------------------------------------*/
		cout << "x=\ty=\tr=" << endl;
		for (size_t i=0;i<circles.size();i++)        //把霍夫变换检测出的圆画出来
		{
			Point center(cvRound(circles[i][0]),cvRound(circles[i][1]));
			int radius = cvRound(circles[i][2]);
			circle( frame, center, 1, Scalar(255, 0, 0), 2 );
			circle( frame, center, radius, Scalar(0, 0, 255), 2 );

			cout << cvRound(circles[i][0]) << "\t" << cvRound(circles[i][1]) << "\t" 
				<< cvRound(circles[i][2]) << endl;
			/*在控制台输出圆心坐标和半径
		------------------------------------------------------------------------------------------------------------------*/
		}
		                                                                                                                                                                                                                                                                                                                                                                                                                                           
		imshow("被canny后的视频",edges);
		imshow("被Gauss后的视频",out);
		//imshow("被dilate后的视频",out1);
		//imshow("被bilateralFilter后的视频",out2);
		imshow("被画圆后的视频",frame);  
		if (waitKey(66)==32) break;
     }
	return 0;
}


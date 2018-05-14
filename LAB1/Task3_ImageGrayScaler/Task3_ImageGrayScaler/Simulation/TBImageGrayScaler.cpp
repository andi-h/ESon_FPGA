/*
 * TBImageGrayScaler.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: Andreas Hirtenlehner
 */

#include "TBImageGrayScaler.h"

TB_ImageGrayScaler::TB_ImageGrayScaler(sc_module_name name) :
	clk("clk"),
	red("red"),
	green("green"),
	blue("blue"),
	gray("gray")
{
	cout << "Start Testbench for ImageGrayScaler...\n";
	SC_CTHREAD(stim, clk.pos());
}

void TB_ImageGrayScaler::stim() {
	sc_uint<24> pixel[3];
	int width = 0;
	int height = 0;
	long size = 0;
	cout << "read image...\n";
	RGBTriplet_t* rgb_data = bmp2rgb(&width, &height, &size, L"parrot.bmp");

	if (rgb_data == NULL)
	{
		return;
	}

	BYTE* gray_img = new BYTE[size];

	cout << "\nclaculate gray image...\n";

	for (int i = 0; i < width * height; i++)
	{
		red.write(rgb_data[i].red);
		green.write(rgb_data[i].green);
		blue.write(rgb_data[i].blue);
		wait(1);
		wait(1, SC_NS);
		gray_img[3*i+0] = gray.read();
		gray_img[3*i+1] = gray.read();
		gray_img[3*i+2] = gray.read();
	}

	cout << "Gray image ready.\n";
	cout << "\nsave image...\n";

	bool save_ok = rgb2bmp((BYTE*)gray_img, width, height, L"parrot_gray.bmp");

	if (save_ok) cout << "Image saved successfully.\n";
	else cout << "Error while saving image.\n";
}

TB_ImageGrayScaler::RGBTriplet_t* TB_ImageGrayScaler::bmp2rgb(int* width, int* height, long* size, LPCTSTR file_name)
{
	// http://tipsandtricks.runicsoft.com/Cpp/BitmapTutorial.html

	BITMAPFILEHEADER bmp_header;
	BITMAPINFOHEADER bmp_info;
	DWORD bytes_read;

	HANDLE bmp_handler = CreateFile(file_name, GENERIC_READ, FILE_SHARE_READ,
		NULL, OPEN_EXISTING, FILE_FLAG_SEQUENTIAL_SCAN, NULL);

	// open file
	if (bmp_handler == NULL)
	{
		cout << "File can not be opened.\n";
		return NULL;
	}

	// read file header
	if (ReadFile(bmp_handler, &bmp_header, sizeof(BITMAPFILEHEADER),
		&bytes_read, NULL) == false)
	{
		CloseHandle(bmp_handler);
		cout << "File header can not be read.\n";
		return NULL;
	}

	// read info header
	if (ReadFile(bmp_handler, &bmp_info, sizeof(BITMAPINFOHEADER),
		&bytes_read, NULL) == false)
	{
		CloseHandle(bmp_handler);
		cout << "Info header can not be read.\n";
		return NULL;
	}

	// check if bitmap
	if (bmp_header.bfType != 'MB')
	{
		CloseHandle(bmp_handler);
		cout << "Not a bitmap file.\n";
		return NULL;
	}

	// check if it is uncompressed
	if (bmp_info.biCompression != BI_RGB)
	{
		CloseHandle(bmp_handler);
		cout << "Compressed files are not supported.\n";
		return NULL;
	}

	// check if the bit depth is 24 bit
	if (bmp_info.biBitCount != 24)
	{
		CloseHandle(bmp_handler);
		cout << "Bitmap depth is not 24 bit";
		return NULL;
	}

	*width = bmp_info.biWidth;
	*height = abs(bmp_info.biHeight);
	*size = bmp_header.bfSize - bmp_header.bfOffBits;

	static BYTE* buffer = new BYTE[*size];

	SetFilePointer(bmp_handler, bmp_header.bfOffBits, NULL, FILE_BEGIN);

	if (ReadFile(bmp_handler, buffer, *size, &bytes_read, NULL) == false)
	{
		delete[] buffer;
		CloseHandle(bmp_handler);
		cout << "Error while reading data.\n";
		return NULL;
	}

	CloseHandle(bmp_handler);

	// restructure buffer to RGB format
	int padding = 0;
	int scanlinebytes = *width * 3;
	while ((scanlinebytes + padding) % 4 != 0)
		padding++;

	int psw = scanlinebytes + padding;

	BYTE* buffer_rgb = new BYTE[*width * *height * 3];

	long bufpos = 0;
	long newpos = 0;
	for (int y = 0; y < *height; y++)
		for (int x = 0; x < 3 * *width; x += 3)
		{
			newpos = y * 3 * *width + x;
			bufpos = (*height - y - 1) * psw + x;

			buffer_rgb[newpos] = buffer[bufpos + 2];
			buffer_rgb[newpos + 1] = buffer[bufpos + 1];
			buffer_rgb[newpos + 2] = buffer[bufpos];
		}

	cout << "Read bitmap successfully.\n";

	return (RGBTriplet_t*) buffer_rgb;
}

bool TB_ImageGrayScaler::rgb2bmp(BYTE* buffer, int width, int height, LPCTSTR file_name)
{
	// first make sure the parameters are valid
	if ((NULL == buffer) || (width == 0) || (height == 0))
		return false;

	// now we have to find with how many bytes
	// we have to pad for the next DWORD boundary	
	int padding = 0;
	int scanlinebytes = width * 3;
	while ((scanlinebytes + padding) % 4 != 0)     // DWORD = 4 bytes
		padding++;
	// get the padded scanline width
	int psw = scanlinebytes + padding;

	// we can already store the size of the new padded buffer
	long newsize = height * psw;

	// and create new buffer
	BYTE* newbuf = new BYTE[newsize];

	// fill the buffer with zero bytes then we dont have to add
	// extra padding zero bytes later on
	memset(newbuf, 0, newsize);

	// now we loop trough all bytes of the original buffer, 
	// swap the R and B bytes and the scanlines
	long bufpos = 0;
	long newpos = 0;
	for (int y = 0; y < height; y++)
		for (int x = 0; x < 3 * width; x += 3)
		{
			bufpos = y * 3 * width + x;     // position in original buffer
			newpos = (height - y - 1) * psw + x;           // position in padded buffer

			newbuf[newpos] = buffer[bufpos + 2];       // swap r and b
			newbuf[newpos + 1] = buffer[bufpos + 1]; // g stays
			newbuf[newpos + 2] = buffer[bufpos];     // swap b and r
		}

	// declare bmp structures 
	BITMAPFILEHEADER bmfh;
	BITMAPINFOHEADER info;

	// andinitialize them to zero
	memset(&bmfh, 0, sizeof(BITMAPFILEHEADER));
	memset(&info, 0, sizeof(BITMAPINFOHEADER));

	// fill the fileheader with data
	bmfh.bfType = 0x4d42;       // 0x4d42 = 'BM'
	bmfh.bfReserved1 = 0;
	bmfh.bfReserved2 = 0;
	bmfh.bfSize = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER) + newsize;
	bmfh.bfOffBits = 0x36;		// number of bytes to start of bitmap bits

								// fill the infoheader

	info.biSize = sizeof(BITMAPINFOHEADER);
	info.biWidth = width;
	info.biHeight = height;
	info.biPlanes = 1;			// we only have one bitplane
	info.biBitCount = 24;		// RGB mode is 24 bits
	info.biCompression = BI_RGB;
	info.biSizeImage = 0;		// can be 0 for 24 bit images
	info.biXPelsPerMeter = 0x0ec4;     // paint and PSP use this values
	info.biYPelsPerMeter = 0x0ec4;
	info.biClrUsed = 0;			// we are in RGB mode and have no palette
	info.biClrImportant = 0;    // all colors are important

								// now we open the file to write to
	HANDLE file = CreateFile(file_name, GENERIC_WRITE, FILE_SHARE_READ,
		NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
	if (file == NULL)
	{
		CloseHandle(file);
		return false;
	}

	// write file header
	unsigned long bwritten;
	if (WriteFile(file, &bmfh, sizeof(BITMAPFILEHEADER), &bwritten, NULL) == false)
	{
		CloseHandle(file);
		return false;
	}
	// write infoheader
	if (WriteFile(file, &info, sizeof(BITMAPINFOHEADER), &bwritten, NULL) == false)
	{
		CloseHandle(file);
		return false;
	}
	// write image data
	if (WriteFile(file, newbuf, newsize, &bwritten, NULL) == false)
	{
		CloseHandle(file);
		return false;
	}

	// and close file
	CloseHandle(file);

	return true;
}

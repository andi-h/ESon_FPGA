
#include "systemc.h"
#include "ImageGrayScaler.h"

void ImageGrayScaler::gray_scale()
{
	while (true)
	{
		gray = (0.2989 * red.read().to_double() + 0.5870 * green.read().to_double() + 0.1140 * blue.read().to_double());

		wait();
	}
}

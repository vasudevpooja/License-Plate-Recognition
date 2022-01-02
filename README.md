# License Plate Recognition
The Automatic Number plate Recognition (ANPR) system is based on image processing technology. With the development of this system it becomes easy to keep a record and use it whenever required. The main objective here is to design an efficient automatic vehicle identification system by using vehicle number plate. The system first would capture the vehicles image as soon as the vehicle reaches the security checking area. The captured images are then extracted by using the segmentation process. Optical character recognition is used to identify the characters. The obtained data is then compared with the data stored in their database. The system is implemented and simulated on MATLAB and performance is tested on real images. This type of system is widely used in Traffic control areas, tolling, parking area, etc. 

# How the code works? 
![working of the code](https://user-images.githubusercontent.com/76071184/147873309-2b0f9f3c-2697-4d0e-9735-abb437a8a034.PNG)

# [License_Plate_Recognition.m](https://github.com/vasudevpooja/License-Plate-Recognition/blob/main/License_Plate_Recognition.m)
Process the image and then call the below two m-files to detect the number

**Explanation/Algorithmic Steps for the Code:**

![License Plate Recognition](https://user-images.githubusercontent.com/76071184/147873336-15e838ee-8866-4f98-86eb-f9712213720a.PNG)

# [Letter_and_Number_Recongition.m](https://github.com/vasudevpooja/License-Plate-Recognition/blob/main/Letter_and_Number_Recongition.m)

Reads the characters from the input image and find the highest matched corresponding alphanumeric value.

**Explanation/Algorithmic Steps for the Code:** 

![letter](https://user-images.githubusercontent.com/76071184/147873344-10616964-1f01-4b44-a991-af7165219ef1.PNG)

# [Sample_Template_in_bmp_format.m](https://github.com/vasudevpooja/License-Plate-Recognition/blob/main/Sample_Template_in_bmp_format.m)

This is used to call the saved images of alpha-numerics and then save them as a new template in MATLAB memory.

**Explanation/Algorithmic Steps for the Code:**

![sample](https://user-images.githubusercontent.com/76071184/147873421-c2880c51-ccbc-4bcd-b793-b80a2a0fa125.PNG)

# Concepts used:

## Pre Processing:

**Binarization:** 

• BW = imbinarize(I) creates a binary image from 2-D or 3-D grayscale image I by replacing all values above a globally determined threshold with 1s and setting all other values to 0s. 

• imbinarize uses Otsu's method, which chooses the threshold value to minimize the intraclass variance of the thresholded black and white pixels [1]. imbinarize uses a 256-bin image histogram to compute Otsu's threshold. 

• The algorithm iteratively searches for the threshold that minimizes the within-class variance, defined as a weighted sum of variances of the two classes (background and foreground). The colors in grayscale are usually between 0-255 (0-1 in case of float). So, If we choose a threshold of 100, then all the pixels with values  less than 100 becomes the background and all pixels with values greater than or equal to 100 becomes the foreground of the image. 

• The formula for finding the within-class variance at any threshold t is given by: 
σ2(t)=ωbg(t)σ2bg(t)+ωfg(t)σ2fg(t) , 
where ωbg(t) and ωfg(t) represents the probability of number of pixels for each class at threshold t and σ2 represents the variance of color values. 

• So the least value is considered the threshold for which the with-in class variance remains same until a certain point. 

**Connected components labelling:**

• Connected components labelling scans an image and groups its pixels into components based on pixel connectivity, i.e. all pixels in a connected component share similar pixel intensity values and are in some way connected with each other. Once all groups have been determined, each pixel is labelled with a gray-level or a colour (colour labelling) according to the component it was assigned to. 

• Extracting and labelling of various disjoint and connected components in an image is central to many automated image analysis applications. 

• Connected component labelling works by scanning an image, pixel-by-pixel (from top to bottom and left to right) in order to identify connected pixel regions, i.e. regions of adjacent pixels which share the same set of intensity values V. (For a binary image V={1}; however, in a gray-level image V will take on a range of values, for example: V={51, 52, 53, ..., 77, 78, 79, 80}.) 

**Noise Removal:**
• Digital images are prone to various types of noise. Noise is the result of errors in the image acquisition 
process that result in pixel values that do not reflect the true intensities of the real scene. There are several 
ways that noise can be introduced into an image, depending on how the image is created. 
• You can use linear filtering to remove certain types of noise. Certain filters, such as averaging or 
Gaussian filters, are appropriate for this purpose. For example, an averaging filter is useful for removing grain 
noise from a photograph. Because each pixel gets set to the average of the pixels in its neighbourhood, local 
variations caused by grain are reduced. 
**Edge detection:**
Edge detection is a technique of image processing used to identify points in a digital image with 
discontinuities, simply to say, sharp changes in the image brightness. These points where the image brightness 
varies sharply are called the edges (or boundaries) of the image 
Prewitt operator is used in this case for edge detection in the image. It detects two types of edges 
• Horizontal edges 
• Vertical Edges 
Edges are calculated by using difference between corresponding pixel intensities of an image. All the masks 
that are used for edge detection are also known as derivative masks. Because as we have stated many times 
before in this series of tutorials that image is also a signal so changes in a signal can only be calculated using 
differentiation. So that’s why these operators are also called as derivative operators or derivative masks. 
All the derivative masks should have the following properties: 
• Opposite sign should be present in the mask. 
• Sum of mask should be equal to zero. 
• More weight means more edge detection. 
Prewitt operator provides us two masks one for detecting edges in horizontal direction and another for 
detecting edges in a vertical direction. 
# Character segmentation: 
• Character segmentation is an operation that seeks to decompose an image of a sequence of 
characters into sub images of individual symbols. It is one of the decision processes in a system for optical 
character recognition (OCR). Its decision, that a pattern isolated from the image is that of a character (or some 
other identifiable unit), can be right or wrong. It is wrong sufficiently often to make a major contribution to 
the error rate of the system 
• Character segmentation involves converting an image into a collection of regions of pixels that are 
represented by a mask or a labelled character. By dividing an image into segments, you can process only the 
important segments of the image instead of processing the entire image. 
• A common technique is to look for abrupt discontinuities in pixel values, which typically indicate edges 
that define a region. 
• Another common approach is to detect similarities in the regions of an image. Some techniques that 
follow this approach are region growing, clustering, and thresholding. 
# Character recognition: 
• Initially we store saved images of alpha-numerics as a new template in MATLAB memory. These 
templates are saved in bmp format (bitmap format). 
• We then call another file which reads the characters from the input image and find the highest 
matched corresponding alphanumeric. 
• The final license number output of the license plate image is then displayed. 
# Possible difficulties: 
• Broken number plate 
• Blurry images 
• Number plate not within the legal specification 
• Low resolution of the characters 
• Poor maintenance of the vehicle plate 
• Similarity between certain characters, namely, O and D; 5 and S; 8 and B, E; O and 0, etc.

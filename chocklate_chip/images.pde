
//Global Variables
 float pic,pic2,pic3,pic4,pic5,pic6,pic7,pic8,pic9;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float picWidthAdjusted3=0.0, picHeightAdjusted3=0.0;
float topHalfX, topHalfY, topHalfWidth, topHalfHeight;
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
PImage pic, pic2, pic3,pic4,pic5,pic6,pic7,pic8,pic9;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85
//


 
  //Population
  pic = loadImage("_116970402_a20-20sahas20barve20-20parrotbill_chavan.jpg")//with aspect ratio
  pic2 = loadImage("22wednesday-review-mediumSquareAt3X.jpg");
  pic3 = loadImage("221127164140-lionel-messi-inter-miami-rumors-spt-intl.jpg");
  pic4= loadImage("Billie_Eilish_2019_by_Glenn_Francis_(cropped)_2.jpg");
  pic6=loadImage("Cat03.jpg");
  pic7=loadImage("pexels-pixabay-268533.jpg");
  pic8=loadImage("rs_1200x1200-211111143759-1200-Young-Sheldon.jpg");
  pic9=loadImage("The_Weeknd_Portrait_by_Brian_Ziff.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  topHalfX = appWidth * 1/4;
  topHalfY = appHeight * 1/20;
  topHalfWidth = appWidth * 1/2;
  topHalfHeight = appHeight * 13/20;
  bottomHalfX = appWidth *1/2;
  bottomHalfY = appHeight * 3/4;
  bottomHalfWidth = appWidth * 1/4;
  bottomHalfHeight = appHeight * 4/20;
  //
    backgroundImageX2 = appWidth*0;
  backgroundImageY2 = appHeight*0;
  backgroundImageWidth2 = appWidth-1;
  backgroundImageHeight2 = appHeight-1;
  topHalfX2 = appWidth * 1/4;
  topHalfY2 = appHeight * 1/20;
  topHalfWidth2 = appWidth * 1/2;
  topHalfHeight2 = appHeight * 13/20;
  bottomHalfX2 = appWidth *1/2;
  bottomHalfY2 = appHeight * 3/4;
  bottomHalfWidth2 = appWidth * 1/4;
  bottomHalfHeight2 = appHeight * 4/20;
  //
  // oneImage Dimensions for Aspect Ratio : image meta data
  //8 images without aspect ratio 
  //Note: meta explored in MP3's or music files
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth1 = 800; //
  int picHeight1 = 600;
  int picWidth2 = 860; //
  int picHeight2 = 529;
  int picWidth3 = 325; //
  int picHeight3 = 485;
  //
  //Image Orientation: Landscape, Portrait, Square
  //Scaling Image size with aspect ratio requires larger dimension
  float smallerDimension1, smallerDimension2, smallerDimension3;
  float largerDimension1, largerDimension2, largerDimension3;
  float imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  if ( picWidth1 >= picHeight1 ) { //True if Landscape or Square
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    picWidthAdjusted1 = backgroundImageWidth; //from rect() layout
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
  } else { //False if Portrait
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    picHeightAdjusted1 = backgroundImageHeight; //from rect() layout
    imageWidthRatio1 = smallerDimension1 / largerDimension1;
    picWidthAdjusted1 = picHeightAdjusted1 * imageWidthRatio1;
  }
  if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    //
    picWidthAdjusted2 = topHalfWidth; //from rect() layout
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
  } else { //False if Portrait
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    //
    picHeightAdjusted2 = topHalfHeight; //from rect() layout
    imageWidthRatio2 = smallerDimension2 / largerDimension2;
    picWidthAdjusted2 = picHeightAdjusted2 * imageWidthRatio2;
  }
  if ( picWidth3 >= picHeight3 ) { //True if Landscape or Square
    largerDimension3 = picWidth3;
    smallerDimension3 = picHeight3;
    //
    picWidthAdjusted3 = bottomHalfWidth; //from rect() layout
    imageHeightRatio3 = smallerDimension3 / largerDimension3;
    picHeightAdjusted3 = picWidthAdjusted3 * imageHeightRatio3;
  } else { //False if Portrait
    largerDimension3 = picHeight3;
    smallerDimension3 = picWidth3;
    //
    picHeightAdjusted3 = bottomHalfHeight; //from rect() layout
    imageWidthRatio3 = smallerDimension3 / largerDimension3;
    picWidthAdjusted3 = picHeightAdjusted3 * imageWidthRatio3;
  }
  //

  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  //image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  //
}//End setup
//

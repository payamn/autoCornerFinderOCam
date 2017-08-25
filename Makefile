
INCS = -I/usr/local/include/opencv -I/usr/local/include
LIBS = -L/usr/local/lib -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_aruco -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_dpm -lopencv_freetype -lopencv_fuzzy -lopencv_hdf -lopencv_line_descriptor -lopencv_optflow -lopencv_reg -lopencv_saliency -lopencv_stereo -lopencv_structured_light -lopencv_phase_unwrapping -lopencv_rgbd -lopencv_surface_matching -lopencv_tracking -lopencv_datasets -lopencv_text -lopencv_face -lopencv_plot -lopencv_dnn -lopencv_xfeatures2d -lopencv_shape -lopencv_video -lopencv_ximgproc -lopencv_calib3d -lopencv_features2d -lopencv_flann -lopencv_xobjdetect -lopencv_objdetect -lopencv_ml -lopencv_xphoto -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_photo -lopencv_imgproc -lopencv_core


DEFINCS = #-I/usr/include -I/usr/include/opencv2
DEFLIBS = #-L/usr/lib 
LINKLIBS = #-lopencv_core -lopencv_highgui -lopencv_imgproc 


CPP  = g++
CC   = gcc
OBJ  = main.o cvcalibinit3.o 
LINKOBJ  = main.o cvcalibinit3.o 
BIN  = FindCorners.exe
RM = rm -f


all: $(BIN)

clean:
	${RM} $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CPP) $(LINKOBJ) -g -o $(BIN)  $(LIBS) $(DEFLIBS) $(LINKLIBS)

main.o: main.cpp
	$(CPP) -c -g main.cpp -o main.o $(INCS) $(DEFINCS) 

cvcalibinit3.o: cvcalibinit3.cpp
	$(CPP) -c -g cvcalibinit3.cpp -o cvcalibinit3.o  $(INCS) $(DEFINCS)

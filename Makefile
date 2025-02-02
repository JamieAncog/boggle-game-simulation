CXX=g++
CXXFLAGS=-g -Wall -std=c++11 
GTESTINCL := -I /usr/include/gtest/  
GTESTLIBS := -lgtest -lgtest_main  -lpthread
# Uncomment for parser DEBUG
#DEFS=-DDEBUG

boggle-driver: boggle.cpp boggle.h boggle-driver.cpp
	$(CXX) $(CXXFLAGS) $(DEFS) boggle.cpp boggle-driver.cpp -o $@

clean:
	rm -f *~ *.o boggle-driver

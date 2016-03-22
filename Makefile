PROGRAM = wol
SOURCES = wol.cpp
OBJECTS = $(SOURCES:.cpp=.o)
CXXFLAGS = -Wall -Os -DNDEBUG -std=c++11

.PHONY: clean mrproper

all: $(PROGRAM)

clean:
	$(RM) $(OBJECTS) $(PROGRAM)

.cpp.o:
	$(COMPILE.cpp) $< -o $@

$(PROGRAM): $(OBJECTS)
	$(LINK.cpp) -o $@ $<

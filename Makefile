CXX = g++
CXXFLAGS = -std=c++14 -Wall -Wextra -O2 -Iinclude

SRC_COMMON = src/Exceptions.cpp src/Product.cpp src/StandardProduct.cpp \
             src/PerishableProduct.cpp src/Supplier.cpp src/Invoice.cpp \
             src/FilePersistence.cpp

SRC_MAIN = $(SRC_COMMON) src/ConsoleUI.cpp src/main.cpp
SRC_TEST = $(SRC_COMMON) tests/test_runner.cpp

BIN_DIR = bin
DATA_DIR = data

TARGET_MAIN = $(BIN_DIR)/inventory_billing
TARGET_TEST = $(BIN_DIR)/test_runner

.PHONY: all clean test dirs

all: dirs $(TARGET_MAIN) $(TARGET_TEST)

dirs:
	@mkdir -p $(BIN_DIR) $(DATA_DIR)

$(TARGET_MAIN): $(SRC_MAIN)
	$(CXX) $(CXXFLAGS) $^ -o $@

$(TARGET_TEST): $(SRC_TEST)
	$(CXX) $(CXXFLAGS) $^ -o $@

test: $(TARGET_TEST)
	./$(TARGET_TEST)

clean:
	rm -rf $(BIN_DIR)/*

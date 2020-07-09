

BUILD_DIR := build_release
.PHONY: run build clean


run: build
	$(BUILD_DIR)/main

build: $(BUILD_DIR)
	cd $(BUILD_DIR) && make VERBOSE=1 

$(BUILD_DIR):
	mkdir $(BUILD_DIR) && cd $(BUILD_DIR) && cmake .. 

clean:
	rm -rf $(BUILD_DIR)
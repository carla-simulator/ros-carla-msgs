file_finder = find . -type f \( $(1) \) -not \( -path '*/venv/*' -o -path '*/build/*' -o -path '*/cmake-build-debug/*' \)

CMAKE_FILES = $(call file_finder,-name "*.cmake" -o -name "CMakeLists.txt")

check: check_format

format:
	$(CMAKE_FILES) | xargs cmake-format -i

check_format:
	$(CMAKE_FILES) | xargs cmake-format --check

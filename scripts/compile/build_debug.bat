@echo off

cmake -E remove_directory vs_studio_build
if not exist build mkdir vs_studio_build
cmake -B vs_studio_build -S . -GNinja -DCMAKE_TOOLCHAIN_FILE=d:\dev\trading\vcpkg\scripts\buildsystems\vcpkg.cmake
cmake --build vs_studio_build --config Debug

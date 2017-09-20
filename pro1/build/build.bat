set toolchain=E:/Android/ndk/android-ndk-r13b-windows-x86_64/android-ndk-r13b/build/cmake/android.toolchain.cmake
set android_ndk=E:/Android/ndk/android-ndk-r13b-windows-x86_64/android-ndk-r13b
set build_type=Release
set gernerator="Ninja"
if not exist armeabi md armeabi
cd armeabi
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="armeabi" -DCMAKE_GENERATOR=%gernerator%
ninja
cd ..
if not exist armeabi-v7a md armeabi-v7a
cd armeabi-v7a
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="armeabi-v7a" -DCMAKE_GENERATOR=%gernerator%
ninja
cd ..
if not exist arm64-v8a md arm64-v8a
cd arm64-v8a
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="arm64-v8a" -DCMAKE_GENERATOR=%gernerator%
ninja
cd ..
if not exist mips md mips
cd mips
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="mips" -DCMAKE_GENERATOR=%gernerator%
ninja
cd ..
if not exist mips64 md mips64
cd mips64
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="mips64" -DCMAKE_GENERATOR=%gernerator%
ninja
cd ..
if not exist x86 md x86
cd x86
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="x86" -DCMAKE_GENERATOR=%gernerator%
ninja
cd ..
if not exist x86_64 md x86_64
cd x86_64
cmake ../.. -DCMAKE_TOOLCHAIN_FILE=%toolchain% -DANDROID_NDK=%android_ndk% -DCMAKE_BUILD_TYPE=%build_type% -DANDROID_ABI="x86_64" -DCMAKE_GENERATOR=%gernerator%
ninja
cd ..
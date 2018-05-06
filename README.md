# conquer-ffmpeg
### 1.设置Android NDK的位置：export ANDROID_NDK=/haihui/android-ndk-r10e
### 2.安装一些基础的库：git autoconf libtool pkg-config gperf gettext yasm python
### 3.执行：./android_build.sh
### 4.关于处理字幕subtitles，需要将font-util下的fonts.conf拷贝到/sdcard/fonts下，之后设置FONTCONFIG_FILE=/sdcard/fonts/fonts.conf，不过目前在adb shell命令行下是可以添加字幕的，但是在项目 https://github.com/wanghaihui/kotlin2 下面通过动态库调用，却还不成功

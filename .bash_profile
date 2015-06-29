export PATH=$PATH:/usr/local/sbin/modemZapp:/Users/Gustavo/bin:/Users/Gustavo/bin/Gradle/bin:/Users/Gustavo/Documents/sdk/platform-tools
export OpenCV_DIR=/Users/Gustavo/Documents/opencv-2.4.9/cmake
export PATH=$PATH:/Users/Gustavo/bin/scala-2.11.1/bin
export CLASSPATH=$CLASSPATH:/Users/Gustavo/bin/junit-4.11.jar:/Users/Gustavo/bin/hamcrest-core-1.3.jar
export PATH=$PATH:/usr/local/Cellar/typesafe-activator/1.2.3
export PATH=$PATH:/usr/local/Cellar/gcc/4.9.2/bin
export PATH=$PATH:/Developer/NVIDIA/CUDA-7.0/bin
export PATH=$PATH:/usr/local/Cellar/gcc/4.9.2/libexec/gcc/x86_64-apple-darwin14.0.0/4.9.2
export PATH=$PATH:/usr/texbin
export VISUAL=vim
export EDITOR=vim
export DYLD_LIBRARY_PATH=/usr/local/Cellar/gcc/4.9.2/lib/gcc/x86_64-apple-darwin14.0.0/4.9.2
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/Developer/NVIDIA/CUDA-5.5/lib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/bin
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/opt/qt5/lib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/opt/qt5/include



alias VM='ssh gustavo@192.168.1.69'
alias lsdir='ls -d */'
alias sls='ls *.scala | grep -v \\$'
alias csdir='cd ~/Dropbox/cs'
alias jinx='ssh -l ghidalgo3 jinx-login.cc.gatech.edu'
alias deepthought='ssh -l ghidalgo3 deepthought-login.cc.gatech.edu'
alias ls='ls -G'

function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }
setjdk 1.8

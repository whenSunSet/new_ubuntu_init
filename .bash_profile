hM2_HOME=/Applications/IntelliJIDEA.app/Contents/plugins/maven/lib/maven3
export PATH=$PATH:$M2_HOME/bin
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

CLASSPAHT=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

PATH=$JAVA_HOME/bin:$PATH:
source .bashrc
export JAVA_HOME

export CLASSPATH

export PATH
# export PATH=${PATH}:/usr/bin/python2.7
# alias python="/usr/bin/python2.7"
alias ynpm="npm --registry=http://registry.npm.qima-inc.com --disturl=http://npm.taobao.org/mirrors/node"
export NVM_DIR="$M2_HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/bin:$PATH
function emulator { cd "$(dirname "$(which emulator)")" && ./emulator "$@"; }"
alias emu="$ANDROID_HOME/tools/emulator"
function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }
function umountAndroid() { hdiutil detach /Volumes/android; }
ulimit -S -n 1024
export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo/'
OPENCV_ANDROID_SDK=/Users/whensunset/AndroidStudioProjects/OpenCV-android-sdk
export export PATH=$PATH:$GRADLE_HOME/bin

# added by Anaconda3 5.1.0 installer
export PATH="/anaconda3/bin:$PATH"
export ANDROID_NDK=/Users/whensunset/Library/Android/sdk/ndk-bundle
export ANDROID_SDK=/Users/whensunset/Library/Android/sdk
alias rm="trash"
alias delff='delff(){  find . -maxdepth 1 -name $1 -ls -exec trash {} \;}; delff'
alias delff_re='delff_re(){  find . -name $1 -ls -exec trash {} \;}; delff_re'
alias ff_re='ff_re(){  find . -name $1 -ls}; ff_re'
alias ff='ff(){  find . -maxdepth 1 -name $1 -ls}; ff'
alias trash -l="rm -ls"
alias vi=vim
alias vim=mvim
alias mvim='/usr/local/bin/mvim -v'
alias lg='~/login_ubuntu_1.sh'
alias up_lg='up_lg(){scp $1 root@47.106.145.211:/root/$2};up_lg'
fg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin fg %-
    else
        builtin fg %"$@"
    fi
}

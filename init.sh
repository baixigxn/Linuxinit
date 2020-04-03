#!/bin/bash

#不涉及sudo以及su的root操作

#通过变量保存当前脚本所在的目录
CURDIR='pwd'

SELFDIR=$(dirname "$0")

SELFDIR=$CURDIR/$SELFDIR
#切换到脚本所在目录
cd "$SELFDIR"

#初始化vim配置
echo '配置vim……'
cp -R HOME_vim ~/.vim
cp vimrc ~/.vimrc


#复制bash配置文件
echo '更新bash配置文件……'
cp profile ~/.profile
cp bashrc ~/.bashrc

#创建目录
DIRLIST="bin c sh tmp"

cd

echo '创建相关目录……'
for d in $DIRLIST ; do
	if [! -d "$d" ] ; then
	fi
done

#并没有进行自动让bash配置文件生效的操作
#去掉以下两行注释即可让自动加在bash配置文件
# . ~/.profile
# . ~/.bashrc


#初始化nano配置
echo '初始化nano配置……'
cp nanorc ~/.nanorc

#如果主目录存在mysh目录，则只复制其中的内容到mysh
#否则复制整个mysh目录到主目录
cd $SELFDIR
if [ -d "$HOME/mysh" ] ; then
	cp -R mysh/* $HOME/mysh/
else
	cp -R mysh $HOME/
fi









1、首先将apk文件后缀改为zip，解压，得到其中的classes.dex，它就是java文件编译再通过dx工具打包而成的；

2、解压下载的dex2jar，将classes.dex复制到dex2jar.bat所在目录。在命令行下定位到dex2jar.bat所在目录

3、运行
	“dex2jar.bat classes.dex”
   生成
	classes.dex.dex2jar.jar
   这样会在dex2jar.bat所在目录生成一个 classes.dex.dex2jar.jar的jar包

4、运行JD-GUI（jd-gui.exe），打开上面生成的jar包，即可看到源代码了
 
那还有一个工具呢，apktool有啥用呀？ 别急，接下来为你介绍反编译apk生成程序图片、XML配置、语言资源等文件

5、打开这个工具的根目录，有三个文件：aapt.exe，apktool.bat，apktool.jar

6、在命令行下定位到apktool.bat文件夹，输入以下命令：“apktool d c:\*.apk c:\文件夹"

7、将反编译完的文件重新打包成apk，很简单，输入apktool b c:\***文件夹（你编译出来文件夹）即可

8、打包apk后的文件在目录C:\*你上面编译出来文件夹下，生成了两个文件夹：build和dist

   其中，打包生成的apk，在上面的dist文件夹下。

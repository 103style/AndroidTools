# AndroidTools


### 工具使用

* [如何托管项目到github](http://blog.csdn.net/lxk_1993/article/details/50441442) 

* [git 配置 ssh](https://github.com/103style/AndroidLearning/blob/master/ssh/readme.md)

* git 配置/取消 代理
  ```
  git config --global https.proxy http://127.0.0.1:1080
  
  git config --global --unset http.proxy
  ```

* [apktools反编译apk](https://github.com/103style/AndroidTools/tree/master/android_apktools)

* [dex2jar](https://github.com/103style/AndroidTools/blob/master/dex2jar_readme.md)

* [获取应用的MD5,SHA1,SHA256信息](https://github.com/103style/AndroidLearning/blob/master/SHA256/readme.md)

* [一键生成Android iOS icon尺寸](https://github.com/103style/AndroidTools/blob/master/MultiSizeIcon.rar) ----  **[使用方法](https://github.com/103style/AndroidTools/blob/master/MultiSizeIcon%20readme.md)**--- [forked here](https://github.com/ThisisGame/MultiSizeIcon) 

* [gradle 相关](https://github.com/103style/AndroidTools/blob/master/gradle%E8%AE%B0%E5%BD%95.md)

* [lint配置](https://github.com/103style/AndroidTools/blob/master/lint%E9%85%8D%E7%BD%AE.md)

* [抓Android日志脚本](https://github.com/103style/AndroidTools/tree/master/Android%E6%8A%93%E6%97%A5%E5%BF%97%E8%84%9A%E6%9C%AC)

* [通过Appbundle上架google play](https://github.com/103style/AndroidTools/tree/master/appbundle)

* 查看应用进程信息
  ```
  //查看应用包名所在的进程信息
  > adb shell ps -t | grep 包名
  USER      PID   PPID  VSIZE   RSS   WCHAN      PC         NAME
  u0_a239   7499  569   1131304 53268 SyS_epoll_ 00000000 S com.lxk.test
  
  //查看进程的所有线程 利用包名对应的 USER 值
  //u0_a239 是根据包名查出的 USER 值
  > adb shell ps -t | grep u0_a239
  USER      PID   PPID  VSIZE   RSS   WCHAN      PC         NAME
  u0_a239   7499  569   1131304 53268 SyS_epoll_ 00000000 S com.lxk.test
  u0_a239   7504  7499  1131304 53268 do_sigtime 00000000 S Signal Catcher
  u0_a239   7505  7499  1131304 53268 poll_sched 00000000 S JDWP
  u0_a239   7506  7499  1131304 53268 futex_wait 00000000 S ReferenceQueueD
  u0_a239   7507  7499  1131304 53268 futex_wait 00000000 S FinalizerDaemon
  u0_a239   7508  7499  1131304 53268 futex_wait 00000000 S FinalizerWatchd
  u0_a239   7509  7499  1131304 53268 futex_wait 00000000 S HeapTaskDaemon
  u0_a239   7510  7499  1131304 53268 binder_thr 00000000 S Binder_1
  u0_a239   7511  7499  1131304 53268 binder_thr 00000000 S Binder_2
  u0_a239   7514  7499  1131304 53268 futex_wait 00000000 S .1, thread No.1
  u0_a239   7525  7499  1131304 53268 SyS_epoll_ 00000000 S RenderThread
  u0_a239   7530  7499  1131304 53268 futex_wait 00000000 S hwuiTask1
  u0_a239   7531  7499  1131304 53268 futex_wait 00000000 S hwuiTask2
  u0_a239   11619 11600 1127052 48216 binder_thr 00000000 S Binder_3
  ```

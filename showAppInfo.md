### 查看应用进程信息
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

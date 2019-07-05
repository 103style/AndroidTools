### gradle相关

* 查看项目的依赖包的完整信息
  * 直接运行 `./gradlew :app:dependencies --configuration compile`
  * 打开项目，点击Android Studio 左侧的 Gradle 按钮,双击运行`:app -> Tasks -> help -> dependencies`。
  

* 去掉重复依赖的库
  * 如果你的app必须要使用本地lib引入v4库，那么就排除开源库的v4包：
  ```
  compile('com.facebook.fresco:fresco:0.10.0') {
         exclude module: 'support-v4'
  }
  ```
  * 如果是源码形式引入的开源库：
  ```
  compile (project(':thirdpart:RecyclerViewAdapterLibrary')){ 
       exclude group: 'com.android.support' 
  }
  ```

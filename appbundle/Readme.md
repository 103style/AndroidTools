### Appbundle

* 去[bundletool的github这里](https://github.com/google/bundletool/releases)下载最新的jar包。
* 配置项目 打包module 的 `build.gradle` 如下：
  ```
  android {
    bundle {
      density {
        enableSplit true//这是手机像素密度拆分
      }
      abi {
        enableSplit true//so库api拆分
      }
      language {
        enableSplit true//字符串翻译拆分
      }
    }
  }
  ```
* 通过 AS 构建 `Build → Generate signed Bundle/apk → app bundle → next → 配置密钥 → next → 选择对应的variants` 开始打包。`如果要应用的原密钥打包,记得勾选最下面的 export encrypted... 选项`




### bundletool命令

[官方文档](https://developer.android.google.cn/studio/command-line/bundletool)

* 通过应用包生成apk集
  ```
  java -jar bundletool-all-0.13.3.jar build-apks --bundle=app.aab --output=app.apks
  ```
  
* 通过应用包生成一组带签名的apk集
  ```
  java -jar bundletool-all-0.13.3.jar build-apks --bundle=app.aab --output=app.apks --ks=/xxx/keystore.jks --ks-pass=xxx --ks-key-alias=xxx --key-pass=xxx
  ```
  
* 将apk部署到设备上（需要连接设备，根据设备信息自动提取对应资源并安装）
  ```
  java -jar bundletool-all-0.13.3.jar install-apks --apks=app.apks
  ```
  
* 为已连接的设备生成apk
  ```
  java -jar bundletool-all-0.13.3.jar build-apks --connected-device --bundle=app.aab --output=my_app.apks
  ```
  
* 通过json文件生成对应的apk
  ```
  java -jar bundletool-all-0.13.3.jar build-apks --device-spec=config.json --bundle=app.aab --output=my_app.apks
  ```
  
* 获取已连接设备的json配置文件
  ```
  java -jar bundletool-all-0.13.3.jar get-device-spec --output=config.json
  ```
    
* 从apk集中提取对应设备apk到app文件夹
  ```
  java -jar bundletool-all-0.13.3.jar extract-apks --apks=keyhelp.apks --output-dir=app --device-spec=temp.json
  ```
  json文件格式：
  ```
  {
    "supportedAbis": ["arm64-v8a", "armeabi-v7a"],
    "supportedLocales": ["en", "fr"],
    "screenDensity": 640,
    "sdkVersion": 28
  }
  ```
  
### 将 APK 部署到已连接的设备
`app.aab` 文件不能通过abd命令安装，需要通过 `bundletool` 命令安装，如下：
```
java -jar bundletool-all-0.13.3.jar install-apks --apks=/MyApp/my_app.apks
```

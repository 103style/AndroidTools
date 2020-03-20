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
 
* 

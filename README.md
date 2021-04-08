# TFKit-Objc
日常开发常用工具库
### cocoapods上传步骤
1.代码编辑完成后,修改podspec文件版本号 推送到远程
2.设置tag
```
 git tag '版本号'
 git push --tags
```
3.验证podspec文件
```
pod spec lint
```
4.上传cocoapods
```
pod trunk push TFKit-OC.podspec

```
没注册的话,先注册
```
pod trunk register email@xxx.com "username"
```

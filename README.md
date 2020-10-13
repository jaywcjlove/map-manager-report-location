MapManagerReportLocation
----

依赖高德地图 `AMapLocation` 和 国密算法 `GMObjC`

```ruby
pod 'AMapLocation'
pod 'GMObjC','3.0.0'
```

```bash
# 检查.podspec及代码是否有错误，如果有错误不能提交
pod spec lint MapManagerReportLocation.podspec --verbose
```

Repo 添加成功后你可以在 `~/.cocoapods/repos/` 目录下找到和你建立的 `spec repo` 同名的文件夹。

```bash
pod repo add MapManagerReportLocation https://github.com/jaywcjlove/map-manager-report-location.git
```

然后你就需要 `cd` 到你存放需要添加的 `spec` 文件的目录下将它 `push` 到远程端仓库中。

```bash
pod repo push MapManagerReportLocation MapManagerReportLocation.podspec
```

发布到 [Cocoapods](https://cocoapods.org/) 官方库中

```bash
pod trunk push MapManagerReportLocation.podspec --allow-warnings
```
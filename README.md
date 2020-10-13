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

pod repo add MapManagerReportLocation https://github.com/jaywcjlove/map-manager-report-location.git
pod repo push MapManagerReportLocation MapManagerReportLocation.podspec
```
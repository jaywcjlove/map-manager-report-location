Pod::Spec.new do |spec|
  spec.name         = "MapManagerReportLocation"
  spec.version      = "0.0.10"
  spec.summary      = "定位上报部检测平台"
  spec.description  = <<-DESC
                  定位上报部检测平台依赖包。
                   DESC
  spec.homepage     = "https://github.com/jaywcjlove/map-manager-report-location"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Kenny Wong" => "wowohoo@qq.com" }
  spec.source       = { :git => "https://github.com/jaywcjlove/map-manager-report-location.git", :tag => "#{spec.version}" }
  spec.platform     = :ios, "9"
  spec.dependency 'AMapLocation', '2.6.7'
  spec.dependency 'AMapFoundation', '1.6.4'
  spec.dependency 'GMObjC', '3.1.2'
  s.source_files = "**/*"
  # spec.source_files = "./MapManager.framework"
  spec.vendored_frameworks = 'MapManager.framework'
end
Pod::Spec.new do |spec|
  spec.name         = "MapManagerReportLocation"
  spec.version      = "0.0.13"
  spec.summary      = "定位上报部检测平台"
  spec.description  = <<-DESC
                  定位上报部检测平台依赖包。
                   DESC
  spec.homepage     = "https://github.com/jaywcjlove/map-manager-report-location"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Kenny Wong" => "wowohoo@qq.com" }
  spec.source       = { :git => "https://github.com/jaywcjlove/map-manager-report-location.git", :tag => "#{spec.version}" }
  spec.platform     = :ios, "9"
  spec.ios.vendored_frameworks = 'MapManager.framework'
end
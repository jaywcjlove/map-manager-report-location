Pod::Spec.new do |s|
  s.name         = "MapManagerReportLocation"
  s.version      = "0.0.1"
  s.summary      = "定位上报部检测平台"
  s.description  = <<-DESC
                  定位上报部检测平台依赖包。
                   DESC
  s.homepage     = "https://github.com/jaywcjlove/map-manager-report-location"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Kenny Wong" => "wowohoo@qq.com" }
  s.source       = { :git => "https://github.com/jaywcjlove/map-manager-report-location.git", :tag => "#{s.version}" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  # s.xcconfig     =  {
  #   "ARCHS": "$(ARCHS_STANDARD)",
  #   'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
  #   'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
  #   'ENABLE_BITCODE' => 'YES'
  # }

  s.pod_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => s.deployment_target(:ios)
  }
  s.xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC',
      'ENABLE_BITCODE' => "NO",
      "VALID_ARCHS": "armv7 arm64",
      "VALID_ARCHS[sdk=iphoneos*]": "armv7 arm64",
      "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }
  
  # s.xcconfig            = { "ARCHS": "$(ARCHS_STANDARD)", "LIBRARY_SEARCH_PATHS": "\"$(PODS_ROOT)/AMapFoundation-NO-IDFA/**\"" }
  s.ios.vendored_frameworks = 'MapManager.framework'
  # s.frameworks  = "Foundation", "Security"
  s.libraries           = "z"
  s.framework           = [ "SystemConfiguration", "CoreTelephony", "Security", "CoreLocation", "JavaScriptCore" ]
  s.dependency 'AMapLocation'
  s.dependency 'GMObjC'
end
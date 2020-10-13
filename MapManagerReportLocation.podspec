Pod::Spec.new do |s|
  s.name         = "MapManagerReportLocation"
  s.version      = "0.0.1"
  s.summary      = "定位上报部检测平台"
  s.description  = <<-DESC
                  定位上报部检测平台依赖包。
                   DESC
  s.homepage     = "https://github.com/jaywcjlove/map-manager-report-location"
  # s.license      = "MIT"
  s.license  = { :type => 'MIT',
                 :text => 'MIT License

                 Copyright (c) 2020 小弟调调™
                 
                 Permission is hereby granted, free of charge, to any person obtaining a copy
                 of this software and associated documentation files (the "Software"), to deal
                 in the Software without restriction, including without limitation the rights
                 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
                 copies of the Software, and to permit persons to whom the Software is
                 furnished to do so, subject to the following conditions:
                 
                 The above copyright notice and this permission notice shall be included in all
                 copies or substantial portions of the Software.
                 
                 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
                 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
                 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
                 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
                 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
                 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
                 SOFTWARE.' }
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
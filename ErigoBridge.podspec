Pod::Spec.new do |s|
  s.name         = 'ErigoBridge'
  s.version      = '1.0.7'
  s.summary      = 'A bridge framework for third-party integrations'
  s.description  = <<-DESC
    ErigoBridge is a Swift framework that integrates Moya, Facebook Login, RevenueCat, AppsFlyer, and SVProgressHUD.
  DESC
  s.homepage     = 'https://github.com/zy1020/ErigoBridge'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'zy1020' => '985446278@qq.com' }
  s.source       = { :git => 'https://github.com/zy1020/ErigoBridge.git', :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.ios.deployment_target = '16.0'
  s.source_files  = 'Sources/**/*.{swift}' # 按实际路径修改
  # 第三方依赖
  s.static_framework = true
  s.dependency 'Moya'
  s.dependency 'FBSDKLoginKit'
  s.dependency 'RevenueCat'
  s.dependency 'AppsFlyerFramework'
  s.dependency 'SVProgressHUD'
end

#IKTRouter

Pod::Spec.new do |s|
  s.name             = 'IKTReachability'
  s.version          = '0.0.1'
  s.summary          = '监测网络'

  s.description      = <<-DESC
  网络监测框架 for iOS
                       DESC

  s.homepage         = 'https://github.com/IKTSmart/IKTReachability'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'IKT' => 'E.T.Scorpion' }
  s.source           = { :git => 'https://github.com/IKTSmart/IKTReachability.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'IKTReachability/**/*.{h,m}'
  
  # s.resource_bundles = {
  #   'Router' => ['IKTReachability/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

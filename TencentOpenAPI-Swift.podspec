#
# Be sure to run `pod lib lint TencentOpenAPI-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TencentOpenAPI-Swift'
  s.version          = '3.3.3'
  s.summary          = 'TencentOpenAPI Swift version, based on V3.3.1'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
 TencentOpenAPI Swift version, Based on TencentOpenAPI version V3.3.1
                       DESC

  s.homepage         = 'http://wiki.open.qq.com/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TencentOpenAPI' => 'TencentOpenAPI' }
  s.source           = { :git => 'https://github.com/dulingkang/TencentOpenAPI-Swift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.vendored_frameworks =  'Framework/**/*.framework'
  s.pod_target_xcconfig = {
    'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/Framework/' }
s.frameworks   =  'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
s.libraries    = 'sqlite3.0', 'stdc++', 'z', 'iconv'

s.prepare_command = <<-EOF
rm -rf Framework/TencentOpenAPI.framework/Modules
mkdir Framework/TencentOpenAPI.framework/Modules
touch Framework/TencentOpenAPI.framework/Modules/module.modulemap
cat <<-EOF > Framework/TencentOpenAPI.framework/Modules/module.modulemap
framework module TencentOpenAPI {
  umbrella header "Tencent.h"
  export *
  module * { export * }
}
\EOF

EOF

  # s.resource_bundles = {
  #   'TencentOpenAPI-Swift' => ['TencentOpenAPI-Swift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

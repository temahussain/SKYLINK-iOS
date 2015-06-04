#
# Be sure to run `pod lib lint SKYLINK.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SKYLINK"
  s.version          = "1.0.5"
  s.summary          = "SKYLINK.framework distribution"
  s.description      = "SKYLINK.framework distribution for iOS"
  s.homepage         = "https://github.com/temahussain/SKYLINK-iOS"
  s.license          = 'MIT'
  s.author           = { "Temasys Communications" => "shussain@temasys.com" }
  s.source           = { :git => "https://github.com/temahussain/SKYLINK-iOS.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreAudio', 'CoreGraphics', 'CoreMedia', 'Foundation', 'GLKit', 'UIKit'
  s.dependency 'SocketRocket', '~> 0.3.1-beta2'
  s.dependency 'tema-ios-ntp', '~> 1.0.0'
  s.libraries = 'c', 'icucore', 'sqlite3', 'stdc++'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.vendored_frameworks = 'SKYLINK.framework'
  s.vendored_libraries = 'libtemasys.a'
  s.preserve_paths = 'SKYLINK.framework'
end

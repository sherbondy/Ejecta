#
# Be sure to run `pod lib lint Ejecta.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Ejecta'
  s.version          = '2.1'
  s.summary          = 'A Fast, Open Source JavaScript, Canvas & Audio Implementation for iOS.'

  s.description      = <<-DESC
Ejecta is a fast, open source JavaScript, Canvas & Audio implementation for iOS (iPhone, iPod Touch, iPad) and tvOS (Apple TV). Think of it as a Browser that can only display a Canvas element.

More info & Documentation: http://impactjs.com/ejecta

Ejecta is published under the MIT Open Source License.
                       DESC

  s.homepage         = 'https://github.com/sherbondy/Ejecta'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dominic Szablewski' => 'dominic.szablewski@gmail.com' }
  s.source           = { :git => 'https://github.com/sherbondy/Ejecta.git', :tag => "v1.3" }

  s.platform = :ios, :tvos
  s.ios.deployment_target = '10.2'
  s.tvos.deployment_target = '10.1'

  s.source_files = 'Source/Ejecta/**/*.{h,m,mm}', 'Source/lib/**/*'
  s.resources    = 'Source/Ejecta/ejecta.js', 'Source/Ejecta/EJCanvas/2D/Shaders/*'
  
  s.header_mappings_dir = 'Source/Ejecta'

  s.frameworks = 'JavaScriptCore', 'SystemConfiguration', 'CoreText', 'QuartzCore', 'GameKit', 'CoreGraphics', 'OpenAL', 'AudioToolbox', 'OpenGLES', 'AVFoundation', 'iAd', 'CoreMotion', 'MediaPlayer', 'CoreLocation', 'CoreMedia', 'AVKit', 'MobileCoreServices', 'StoreKit', 'Security', 'CFNetwork', 'UIKit', 'Foundation'

  s.libraries = 'icucore'
end

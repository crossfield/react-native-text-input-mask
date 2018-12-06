require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'RNTextInputMask'
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = package['homepage']
  s.license      = 'MIT'
  s.authors      = package['author']
  s.source       = { :git => package['repository']['url'] }
  s.platform     = :ios, '8.0'
  s.framework    = 'UIKit'
  s.source_files = 'ios/RNTextInputMask/RNTextInputMask/*.{h,m}'

  s.dependency 'React'

  # It should use the official InputMask pod instead but since some changes were made directly to the code
  # You have to use the provided podspec in the final Podfile
  # pod 'InputMask', :path => '../node_modules/react-native-text-input-mask/ios/RNTextInputMask/InputMask'
  s.dependency 'InputMask'
end

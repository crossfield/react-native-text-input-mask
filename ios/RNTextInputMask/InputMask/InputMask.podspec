require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../../..', 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'InputMask'
  s.version          = package['version']
  s.summary          = 'InputMask (modified for React Native)'
  s.description      = 'User input masking library.'
  s.homepage         = 'https://github.com/RedMadRobot/input-mask-ios'
  s.license          = 'MIT'
  s.author           = { 'Egor Taflanidi' => 'et@redmadrobot.com' }
  s.source           = { :git => package['repository']['url'] }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true
  s.source_files     = 'InputMask/Classes/**/*'
end

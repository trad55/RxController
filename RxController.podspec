#
# Be sure to run `pod lib lint RxController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxController'
  s.version          = '0.8.1'
  s.summary          = 'A library for developing with MVVM-C based on RxFlow and RxSwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
RxController is a library developing with MVVM-C based on RxFlow and RxSwift.
RxController provides the basic view controller and view model classes.
These classes make it easy to transfer data among the flows, the parent view models and the child view models.
                       DESC

  s.homepage         = 'https://github.com/xflagstudio/RxController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Meng Li' => 'lm2343635@126.com' }
  s.source           = { :git => 'https://github.com/xflagstudio/RxController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'
  s.source_files = 'RxController/Classes/**/*'
  
  s.dependency 'RxSwift', '~> 5'
  s.dependency 'RxCocoa', '~> 5'
  s.dependency 'RxFlow', '~> 2'
end

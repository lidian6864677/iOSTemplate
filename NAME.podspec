# frozen_string_literal: true

#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}.'
  s.homepage         = 'https://xxxx/source/${POD_NAME}'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { git: 'ssh://git@xxxx/${POD_NAME}.git', tag: s.version.to_s }

  s.requires_arc = true
  s.ios.deployment_target = '12.0'
  s.watchos.deployment_target = '3.0'
  s.swift_version = '5.0'

  s.source_files = '${POD_NAME}/Classes/**/*'
  # s.resources = '${POD_NAME}/Assets/*'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # s.public_header_files = '${POD_NAME}/Classes/**/*.h'
  # s.source_files = '${POD_NAME}/Classes/**/*.{h,m,swift}'

  # s.default_subspec = 'Core'
  # s.subspec 'Core' do |ss|
  #   ss.source_files = 'xxx'
  #   ss.resources = 'xxx'
  #   ss.dependency 'xxx'
  # end

end

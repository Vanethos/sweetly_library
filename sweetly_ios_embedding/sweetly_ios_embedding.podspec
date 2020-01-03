#
# Be sure to run `pod lib lint sweetly_ios_embedding.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'sweetly_ios_embedding'
  s.version          = '0.0.3'
  s.summary          = 'Ios Library developed using Flutter'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A library that was made using Flutter's Add-to-App feature
                       DESC

  s.homepage         = 'https://github.com/vanethos/sweetly_library'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :text => 'MIT License

  Copyright (c) 2020 Gonçalo Montes Palma

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
  s.author           = { 'vanethos' => 'solid.goncalo@gmail.com' }
  s.source           = { :git => 'https://github.com/Vanethos/sweetly_library.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/gonpalma'

  s.ios.deployment_target = '8.0'

  s.source_files = 'sweetly_ios_embedding/sweetly_ios_embedding/Classes/**/*'
  
  s.vendored_frameworks = 'sweetly_ios_embedding/Flutter/App.framework', 'sweetly_ios_embedding/Flutter/Flutter.framework'
  s.preserve_paths = 'sweetly_ios_embedding/Flutter/*.framework'
  
  s.swift_versions = ['5.0']

  
  # s.resource_bundles = {
  #   'sweetly_ios_embedding' => ['sweetly_ios_embedding/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

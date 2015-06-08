#
# Be sure to run `pod lib lint MSThriftSerializer.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MSThriftSerializer"
  s.version          = "0.1.0"
  s.summary          = "The pod helps you to serialize your Thrift Objects. That means from <YourThriftObject> to NSData and backwards."
  s.description      = <<-DESC
                       An optional longer description of MSThriftSerializer

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/Decksname/MSThriftSerializer"
  # s.screenshots     =
  s.license          = 'MIT'
  s.author           = { "Maximilian Schenk" => "max.schenk@gmx.net" }
  s.source           = { :git => "https://github.com/Decksname/MSThriftSerializer.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/schenkmax>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MSThriftSerializer' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'thrift', '~> 0.9'
end
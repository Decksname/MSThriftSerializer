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
  s.version          = "0.1.1"
  s.summary          = "Serializer for Thrift Objects"
  s.description      = <<-DESC
                      The pod helps you to serialize your Thrift Objects. That means from <YourThriftObject> to NSData and backwards.
                       DESC
  s.homepage         = "https://github.com/Decksname/MSThriftSerializer"
  s.license          = 'MIT'
  s.author           = { "Maximilian Schenk" => "Decks@ok.de" }
  s.source           = { :git => "https://github.com/Decksname/MSThriftSerializer.git", :tag => '0.1.1' }
  s.social_media_url = 'https://twitter.com/schenkmax'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
#s.resource_bundles = {
#    'MSThriftSerializer' => ['Pod/Assets/*.png']
#  }

  s.dependency 'thrift', '~> 0.9'
end

#
# Be sure to run `pod lib lint Shufflers.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Shufflers"
  s.version          = "0.1.0"
  s.summary          = "Helpers that randomly shuffles the elements in the given array"
  s.description      = <<-DESC
                       Helpers that randomly shuffles the elements in the given array,
                        Give it an input and it will shuffle randomly the elements.
                       DESC
  s.homepage         = "https://github.com/filipmelik/Shufflers"
  s.license          = 'MIT'
  s.author           = { "Filip Melik" => "posta@filipmelik.cz" }
  s.source           = { :git => "https://github.com/filipmelik/Shufflers.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'Shufflers' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

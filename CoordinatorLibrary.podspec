#
# Be sure to run `pod lib lint CoordinatorLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name    = "CoordinatorLibrary"
  s.version = "1.0.6"
  s.summary = "CoordinatorLibrary is a library to help simplify working with the 'Coordinator Pattern' "
  s.description = "CoordinatorLibrary is based on the 'Coordinator Pattern' which attempts to solve the problem of 'Seperation of concerns' by seperating navigation flow logic from a UIViewController and abstracting navigation into it's own object, allowing for reusability of ViewControllers. The library helps make it simpler to adopt/use the 'Coordinator Pattern' "

  s.homepage = "https://github.com/kaunamohammed/CoordinatorLibrary"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "kaunamohammed" => "kaunamohammed@gmail.com" }
  s.source = { :git => "https://github.com/kaunamohammed/CoordinatorLibrary.git", :tag => s.version.to_s }
  s.social_media_url = "https://twitter.com/kauna_mohammed"
  s.ios.deployment_target = "10.0"
  s.source_files = "Coordinator/**/*"
  s.swift_version = "5.0"
end

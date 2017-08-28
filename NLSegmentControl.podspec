#
#  Be sure to run `pod spec lint NLSegmentControl.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "NLSegmentControl"
  s.version      = "1.4.0"
  s.summary      = "A drop-in replacement for UISegmentControl."
  s.description  = <<-DESC
                A drop-in replacement for UISegmentControl. Written in swift 3.0. Support both text, images and text + image.
                    DESC
  s.homepage     = "https://github.com/songhailiang/NLSegmentControl"
  s.license      = "MIT"
  s.author       = { "hailiang.song" => "369293153@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/songhailiang/NLSegmentControl.git", :tag => s.version }
  s.source_files  = "NLSegmentControl"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

end

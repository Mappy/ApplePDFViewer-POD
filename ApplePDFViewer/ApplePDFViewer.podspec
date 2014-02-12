#
# Be sure to run `pod spec lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "ApplePDFViewer"
  s.version          = "2.0.0"
  s.summary          = "A PDF viewer"
  s.description      = <<-DESC
                       PDF viewer that supports zooming in or out at any level of zooming.
 
The PDF page is rendered into a CATiledLayer so that it uses memory efficiently. Whenever the zoom level changes a new view created at the new size and is drawn on top of the old view, this allows for crisp PDF rendering at large zoom levels.
                       DESC
  s.homepage         = "https://developer.apple.com/library/ios/samplecode/ZoomingPDFViewer/Introduction/Intro.html"
  s.license          = { :type => 'Apple software',
                  :text => <<-LICENSE
                         Copyright (C) 2012 Apple Inc. All Rights Reserved.
                           LICENSE
                }
  s.author           = "Apple Inc."
  s.source           = { :git => "git@git.niji.fr:mappy-city/applepdfviewer-pod.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.resources = 'Assets'

  s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics', 'QuartzCore'
end

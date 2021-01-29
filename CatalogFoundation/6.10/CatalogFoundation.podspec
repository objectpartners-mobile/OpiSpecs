Pod::Spec.new do |s|
  @@podLocal = ENV['POD_LOCAL_HOME']

  s.name         = "CatalogFoundation"
  s.version      = "6.10"
  s.summary      = "CatalogFoundation is required to provide the basics for Salesfolio (Catalog App) UI and accessing offline content."
  s.homepage     = "https://github.com/objectpartners-mobile/catalogiosfoundation"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2014 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/catalogiosfoundation.git", :tag => "6.10" }
  s.platform     = :ios, '9.0'

  #-- Source and Resources
  s.prefix_header_file = "CatalogFoundation/CatalogFoundation-Prefix.pch"
  s.resources = ['CatalogFoundationResources/**/*.{png,gif,jpg,strings}', 'CatalogFoundation/**/*.{xcdatamodeld}']

  s.source_files = 'CatalogFoundation/**/*.{h,m,c}'
  s.requires_arc = true

  #--Search Paths
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz $(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-all_load', 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/FastPdfKit@objectpartners/FastPdfKit.embeddedframework"' }

  #-- Dependencies (Third Party)
  s.dependency 'FastPdfKit@objectpartners-mobile/FastPdfKit.embeddedframework', '4.0'
  s.dependency 'DTCoreText', '~> 1.6.18'
  s.dependency 'CustomBadge', '~> 3.0'
  s.dependency 'iCarousel', '~> 1.8.2'
  s.dependency 'AFNetworking', '~> 3.1.0'
  s.dependency 'PDKeychainBindingsController@objectpartners', '~> 1.1'
  s.dependency 'FXLabel', '~> 1.5.8'

  s.dependency 'ContentSync'
  s.dependency 'OPIFoundation/UILayoutManagers'
  s.dependency 'OPIFoundation/UISketchPad'
  s.dependency 'OPIFoundation/UICustomViewsAndControllers'
  #s.dependency 'OPIFoundation/UIThirdParty'

  #-- Frameworks and Libraries
  s.libraries = 'z', 'xml2', 'sqlite3.0'
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'ImageIO', 'MediaPlayer', 'MediaToolbox', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'QuickLook', 'UIKit', 'Security', 'SystemConfiguration'
end

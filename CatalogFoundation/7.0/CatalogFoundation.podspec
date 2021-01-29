Pod::Spec.new do |s|
  s.name         = "CatalogFoundation"
  s.version      = "7.0"
  s.summary      = "CatalogFoundation is required to provide the basics for Salesfolio (Catalog App) UI and accessing offline content."
  s.homepage     = "https://github.com/objectpartners-mobile/catalogiosfoundation"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2019 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/catalogiosfoundation.git", :tag => "7.0" }
  s.platform     = :ios, '9.0'

  #-- Source and Resources
  s.prefix_header_file = "CatalogFoundation/CatalogFoundation-Prefix.pch"
  s.resources = ['CatalogFoundationResources/**/*.{png,gif,jpg,strings}', 'CatalogFoundation/**/*.{xcdatamodeld}']

  s.source_files = 'CatalogFoundation/**/*.{h,m,c}'
  s.requires_arc = true

  #-- Dependencies (Third Party)
  s.dependency 'DTCoreText', '~> 1.6.21'
  s.dependency 'CustomBadge', '~> 3.0'
  s.dependency 'iCarousel', '~> 1.8.2'
  s.dependency 'AFNetworking', '~> 3.1.0'
  s.dependency 'PDKeychainBindingsController@objectpartners', '~> 1.1'
  s.dependency 'FXLabel', '~> 1.5.8'
  s.dependency 'FoxitPDF', '~> 6.4'

  s.dependency 'ContentSync', '~> 7.0'
  s.dependency 'OPIFoundation/UILayoutManagers', '~> 7.0'
  s.dependency 'OPIFoundation/UISketchPad', '~> 7.0'
  s.dependency 'OPIFoundation/UICustomViewsAndControllers', '~> 7.0'

  #-- Frameworks and Libraries
  s.libraries = 'z', 'xml2', 'sqlite3.0'
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'ImageIO', 'MediaPlayer', 'MediaToolbox', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'QuickLook', 'UIKit', 'Security', 'SystemConfiguration'
end

Pod::Spec.new do |s|
  s.name         = "OPIFoundation"
  s.version      = "1.0.mod"
  s.summary      = "OPIFoundation is a collection of categories and helper classes used in multiple OPI projects."
  s.homepage     = "https://github.com/objectpartners/opiiosfoundation/tree/modularize"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners/opiiosfoundation.git", :tag => "1.0.mod" }
  s.platform     = :ios, '5.0'
  s.source_files = '{ASIHTTPRequestExtensions,AppRater,AppUpdater,CoreDataTools,IOSFrameworkCategories,TouchXMLExtensions,UICustomViewsAndControllers,UILayoutManagers,UISketchPad,UIThirdParty,UtilHelpers,ZipArchive}/**/*.{h,m,c}'
  s.frameworks = 'CoreText', 'OpenGLES', 'QuartzCore', 'QuickLook', 'CoreGraphics', 'MessageUI', 'CFNetwork', 'MobileCoreServices', 'SystemConfiguration'
  s.libraries = 'xml2', 'z'
  s.requires_arc = false
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 $(SDKROOT)/usr/include/libz' }
  s.dependency 'TouchXML@objectpartners', '~> 0.2'
  s.dependency 'ASIHTTPRequest', '~> 1.8.1'
  
  s.subspec 'TouchXMLExtensions' do |touchext|
    touchext.source_files = 'TouchXMLExtensions/**/*.{h,m,c}'
    s.libraries = 'xml2'
  	s.requires_arc = false
  	s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  	s.dependency 'TouchXML@objectpartners', '~> 0.2'
  end
  
end

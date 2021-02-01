Pod::Spec.new do |s|
  @@podLocal = ENV['POD_LOCAL_HOME']
  
  s.name         = "OPIFoundation"
  s.version      = "3.3"
  s.summary      = "OPIFoundation is a collection of categories and helper classes used in multiple OPI projects."
  s.homepage     = "https://github.com/objectpartners-mobile/opiiosfoundation/tree/modularize"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/opiiosfoundation.git", :tag => "3.3" }
  
  s.platform     = :ios, '5.1'

  s.subspec 'ASIHTTPRequestExtensions' do |ss|
    ss.source_files = 'ASIHTTPRequestExtensions/**/*.{h,m,c}'
    ss.requires_arc = true
    ss.dependency 'ASIHTTPRequest', '~> 1.8.1'
    ss.dependency 'OPIFoundation/UtilHelpers'
  end
    
  s.subspec 'TouchXMLExtensions' do |ss|
    ss.source_files = 'TouchXMLExtensions/**/*.{h,m,c}'
  	ss.requires_arc = true
  	ss.library      = 'xml2'
  	ss.dependency 'TouchXML@objectpartners-mobile', '~> 0.2'
  	ss.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  end
  
  s.subspec 'SignatureCapture' do |ss|
    ss.source_files = 'SignatureCapture/**/*.{h,m,c}'
  	ss.requires_arc = true
  	ss.frameworks = 'OpenGLES'
  	ss.dependency 'OPIFoundation/IOSFrameworkCategories'
  end
  
  s.subspec 'AppRater' do |ss|
    ss.source_files = 'AppRater/**/*.{h,m,c}'
  	ss.requires_arc = true
  	ss.dependency 'OPIFoundation/UtilHelpers'
  	ss.dependency 'Reachability', '3.0'
  	ss.dependency 'OPIFoundation/IOSFrameworkCategories'
  end
  
  s.subspec 'AppUpdater' do |ss|
    ss.source_files = 'AppUpdater/**/*.{h,m,c}'
    ss.requires_arc = true
   ss.dependency 'AFNetworking', '~> 1.1'
   ss.dependency 'Reachability', '3.0'
   ss.dependency 'OPIFoundation/IOSFrameworkCategories'
  end
  
  s.subspec 'AppUpdaterASI' do |ss|
    ss.source_files = 'AppUpdaterASI/**/*.{h,m,c}'
    ss.requires_arc = true
   ss.dependency 'ASIHTTPRequest', '~> 1.8.1'
   ss.dependency 'OPIFoundation/IOSFrameworkCategories'
  end
    
  
  s.subspec 'CoreDataTools' do |ss|
    ss.source_files = 'CoreDataTools/**/*.{h,m,c}'
    ss.requires_arc = true
    ss.frameworks = 'CoreData'
  end
  
  s.subspec 'IOSFrameworkCategories' do |ss|
    ss.source_files = 'IOSFrameworkCategories/**/*.{h,m,c}'
    ss.requires_arc = true
    ss.frameworks = 'QuartzCore', 'CoreGraphics'
    ss.dependency 'OPIFoundation/UtilHelpers'
  end
  
  s.subspec 'UIThirdParty' do |ss|
    ss.source_files = 'UIThirdParty/**/*.{h,m,c}'
    ss.requires_arc = true
    ss.frameworks = 'QuartzCore', 'CoreGraphics'
  end
  
   s.subspec 'GlassButton' do |ss|
    ss.source_files = 'UIThirdParty/GlassButton/*.{h,m,c}'
    ss.requires_arc = true
    ss.frameworks = 'QuartzCore', 'CoreGraphics'
  end
  
  s.subspec 'UISketchPad' do |ss|
    ss.source_files = 'UISketchPad/**/*.{h,m,c}'
    ss.resources = 'UISketchPad/Resources/*'
    ss.requires_arc = true
    ss.frameworks = 'QuartzCore', 'CoreGraphics', 'OpenGLES'
    ss.dependency 'OPIFoundation/UtilHelpers'
  	ss.dependency 'OPIFoundation/IOSFrameworkCategories'
  	ss.dependency 'OPIFoundation/GlassButton'
  end
  
  s.subspec 'WebBrowser' do |ss|
    ss.source_files = 'WebBrowser/**/*.{h,m,c}'
    #ss.resources = 'WebBrowser/Resources/*'
    ss.requires_arc = true
    ss.frameworks = 'QuartzCore', 'CoreGraphics'
    ss.dependency 'Reachability', '3.0'
    ss.dependency 'OPIFoundation/UtilHelpers'
    ss.dependency 'OPIFoundation/IOSFrameworkCategories'
    ss.dependency 'OPIFoundation/UICustomViewsAndControllers'
  end

  s.subspec 'UICustomViewsAndControllers' do |ss|
    ss.source_files = 'UICustomViewsAndControllers/**/*.{h,m,c}'
    ss.requires_arc = true
    ss.frameworks = 'QuartzCore', 'CoreGraphics', 'CoreText', 'SystemConfiguration'
    ss.dependency 'OPIFoundation/UtilHelpers'
    ss.dependency 'OPIFoundation/IOSFrameworkCategories'
  end

  s.subspec 'UILayoutManagers' do |ss|
    ss.source_files = 'UILayoutManagers/**/*.{h,m,c}'
    ss.requires_arc = false 
    ss.dependency 'OPIFoundation/IOSFrameworkCategories'
  end
  
  s.subspec 'UtilHelpers' do |ss|
    ss.source_files = 'UtilHelpers/**/*.{h,m,c}'
    ss.requires_arc = true
    ss.frameworks = 'CFNetwork', 'MobileCoreServices', 'MessageUI', 'SystemConfiguration'
  end
  
  s.subspec 'ZipArchive' do |ss|
    ss.source_files = 'ZipArchive/**/*.{h,m,c,mm}'
    ss.libraries = 'stdc++', 'z'
    ss.requires_arc = true
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz' }
  end  
                    
end

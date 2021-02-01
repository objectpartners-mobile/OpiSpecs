Pod::Spec.new do |s|
  s.name         = "OPIFoundation"
  s.version      = "1.3.mod"
  s.summary      = "OPIFoundation is a collection of categories and helper classes used in multiple OPI projects."
  s.homepage     = "https://github.com/objectpartners-mobile/opiiosfoundation/tree/modularize"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/opiiosfoundation.git", :tag => "1.3.mod" }
  s.platform     = :ios, '5.0'

  s.subspec 'ASIHTTPRequestExtensions' do |ss|
    ss.source_files = 'ASIHTTPRequestExtensions/**/*.{h,m,c}'
    ss.requires_arc = false
  	ss.dependency 'ASIHTTPRequest', '~> 1.8.1'
  end
    
  s.subspec 'TouchXMLExtensions' do |ss|
    ss.source_files = 'TouchXMLExtensions/**/*.{h,m,c}'
  	ss.requires_arc = false
  	ss.dependency 'TouchXML@objectpartners-mobile', '~> 0.2'
  end
  
  s.subspec 'AppRater' do |ss|
    ss.source_files = 'AppRater/**/*.{h,m,c}'
  	ss.requires_arc = false
  	ss.dependency 'OPIFoundation/UtilHelpers'
  end
  
  s.subspec 'AppUpdater' do |ss|
    ss.source_files = 'AppUpdater/**/*.{h,m,c}'
    ss.requires_arc = false
  	ss.dependency 'AFNetworking', '~> 1.1'
  end
  
  s.subspec 'AppUpdaterASI' do |ss|
    ss.source_files = 'AppUpdaterASI/**/*.{h,m,c}'
    ss.requires_arc = false
  	ss.dependency 'ASIHTTPRequest', '~> 1.8.1'
  end
    
  
  s.subspec 'CoreDataTools' do |ss|
    ss.source_files = 'CoreDataTools/**/*.{h,m,c}'
    ss.requires_arc = false
    ss.frameworks = 'CoreData'
  end
  
  s.subspec 'IOSFrameworkCategories' do |ss|
    ss.source_files = 'IOSFrameworkCategories/**/*.{h,m,c}'
    ss.requires_arc = false
    ss.frameworks = 'QuartzCore', 'CoreGraphics'
  end
  
  s.subspec 'UIThirdParty' do |ss|
    ss.source_files = 'UIThirdParty/**/*.{h,m,c}'
    ss.requires_arc = false
    ss.frameworks = 'QuartzCore', 'CoreGraphics'
  end
  
  s.subspec 'UISketchPad' do |ss|
    ss.source_files = 'UISketchPad/**/*.{h,m,c}'
    ss.requires_arc = false
    ss.frameworks = 'QuartzCore', 'CoreGraphics', 'OpenGLES'
  end

  s.subspec 'UICustomViewsAndControllers' do |ss|
    ss.source_files = 'UICustomViewsAndControllers/**/*.{h,m,c}'
    ss.requires_arc = false
    ss.frameworks = 'QuartzCore', 'CoreGraphics', 'CoreText', 'SystemConfiguration'
  end

  s.subspec 'UILayoutManagers' do |ss|
    ss.source_files = 'UILayoutManagers/**/*.{h,m,c}'
    ss.requires_arc = false
  end
  
  s.subspec 'UtilHelpers' do |ss|
    ss.source_files = 'UtilHelpers/**/*.{h,m,c}'
    ss.requires_arc = false
    ss.frameworks = 'CFNetwork', 'MobileCoreServices', 'MessageUI', 'SystemConfiguration'
  end
  
  s.subspec 'Reachability' do |ss|
    ss.source_files = 'Reachability/**/*.{h,m,c}'
    ss.requires_arc = false
    ss.frameworks = 'CFNetwork', 'MobileCoreServices', 'MessageUI', 'SystemConfiguration'
  end  
  
  s.subspec 'ZipArchive' do |ss|
    ss.source_files = 'ZipArchive/**/*.{h,m,c}'
    ss.libraries = 'z'
    ss.requires_arc = false
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz' }
  end  
                    
end

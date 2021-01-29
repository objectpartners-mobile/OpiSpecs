Pod::Spec.new do |s|
  @@podLocal = ENV['POD_LOCAL_HOME']
   
  s.name         = "CatalogFoundationFileBased"
  s.version      = "1.4.filesys"
  s.summary      = "CatalogFoundationFileBased version is the file system only version used specifically by Tolomatic."
  s.homepage     = "https://github.com/objectpartners-mobile/CatalogFoundation.git/tree/FileSystem"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/CatalogFoundation.git", :tag => "1.4.filesys" }
  s.platform     = :ios, '5.1'
  
  s.requires_arc = false
  
  #-- Source and Resources  
  s.subspec 'CatalogFoundation' do |ss|
    ss.source_files = 'ContentFoundation/**/*.{h,m,c}'
    
    ss.prefix_header_file = "ContentFoundation/ContentFoundation-Prefix.pch"
    
  	ss.requires_arc = false

  	ss.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'ImageIO', 'MediaPlayer', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'QuickLook', 'UIKit', 'Security', 'SystemConfiguration'
  	
  	ss.weak_frameworks = 'MediaToolbox'
  	
  	#--Search Paths
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz $(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-all_load', 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/FastPdfKit@objectpartners-mobile/FastPdfKit.embeddedframework"' }
  
  	#-- Third Party --
  	ss.dependency  'AFNetworking', '~> 1.1'
  	ss.dependency  'FastPdfKit@objectpartners-mobile/FastPdfKit.embeddedframework', '4.0'
  	
  	ss.dependency 'CatalogFoundationFileBased/ContentSyncCore'
  	
  	ss.dependency 'OPIFoundation/UILayoutManagers', '~>3.5'
  	ss.dependency 'OPIFoundation/UISketchPad', '~>3.5'
  	ss.dependency 'OPIFoundation/UICustomViewsAndControllers', '~>3.5'
  	ss.dependency 'OPIFoundation/ZipArchive', '~>3.5'
  	#ss.dependency 'OPIFoundation/UIThirdParty', '~>3.5'
  	  
  end
  s.subspec 'ContentSyncCore' do |ss|
    ss.source_files = 'ContentSync/Core/**/*.{h,m,c}'
    
    ss.prefix_header_file = "ContentSync/ContentSync-Prefix.pch"
  	ss.requires_arc = false
 
  	ss.libraries = 'z'
  	
  	ss.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'ImageIO', 'MediaPlayer', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'QuickLook', 'UIKit', 'Security', 'SystemConfiguration'
  	
  	ss.weak_frameworks = 'MediaToolbox'
  	
  	ss.dependency  'AFNetworking', '~> 1.1'
  	ss.dependency  'TouchJSON@objectpartners-mobile', '1.1'
  	
  	ss.dependency 'CatalogFoundationFileBased/CatalogFoundation'
  	
  	ss.dependency 'OPIFoundation/UILayoutManagers', '~>3.5'
  	ss.dependency 'OPIFoundation/UISketchPad', '~>3.5'
  	ss.dependency 'OPIFoundation/UICustomViewsAndControllers', '~>3.5'
  	ss.dependency 'OPIFoundation/ZipArchive', '~>3.5'
  	#ss.dependency 'OPIFoundation/UIThirdParty', '~>3.5'
  	ss.dependency 'OPIFoundation/AppUpdater', '~>3.5'

  	
  end
  s.subspec 'ContentSyncAPI' do |ss|
    ss.source_files = 'ContentSync/Sync/**/*.{h,m,c}'
    ss.prefix_header_file = "ContentSync/ContentSync-Prefix.pch"
  	ss.requires_arc = false
  	
  	ss.dependency 'CatalogFoundationFileBased/CatalogFoundation'
  	
  end
  s.subspec 'ContentSyncAPIAppUpdater' do |ss|
    ss.source_files = 'ContentSync/SyncInAppUpdater/**/*.{h,m,c}'
    ss.prefix_header_file = "ContentSync/ContentSync-Prefix.pch"
  	ss.requires_arc = false
  	
  	ss.dependency 'CatalogFoundationFileBased/CatalogFoundation'
  	
  end

  #--Search Paths
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz', 'OTHER_LDFLAGS' => '-all_load' }
  
end

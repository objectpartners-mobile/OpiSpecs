Pod::Spec.new do |s|
  @@podLocal = ENV['POD_LOCAL_HOME']
   
  s.name         = "CatalogFoundationFileBased"
  s.version      = "1.2.filesys"
  s.summary      = "CatalogFoundationFileBased version is the file system only version used specifically by Tolomatic."
  s.homepage     = "https://github.com/objectpartners-mobile/CatalogFoundation.git/tree/FileSystem"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/CatalogFoundation.git", :tag => "1.2.filesys" }
  s.platform     = :ios, '5.0'
  
  s.prefix_header_file = "ContentFoundation/ContentFoundation-Prefix.pch"
  
  #-- Source and Resources  
  s.subspec 'CatalogFoundation' do |ss|
    ss.source_files = 'ContentFoundation/**/*.{h,m,c}'
  	ss.requires_arc = false

  	ss.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'ImageIO', 'MediaPlayer', 'MediaToolbox', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'QuickLook', 'UIKit', 'Security', 'SystemConfiguration'
  	
  	#-- Third Party --
  	ss.dependency  'AFNetworking', '~> 1.1'
  	ss.dependency  'FastPdfKit@objectpartners-mobile/FastPdfKit.embeddedframework', '3.5.dev'
  	
  	#--BEGIN LOCAL In-House Dependencies
#  	ss.dependency 'OPIFoundation/UILayoutManagers', :local => @@podLocal + '/OPIFoundation'
#  	ss.dependency 'OPIFoundation/UISketchPad', :local => @@podLocal + '/OPIFoundation'
#  	ss.dependency 'OPIFoundation/UIThirdParty', :local => @@podLocal + '/OPIFoundation'
#  	ss.dependency 'OPIFoundation/UICustomViewsAndControllers', :local => @@podLocal + '/OPIFoundation'
#  	ss.dependency 'OPIFoundation/IOSFrameworkCategories', :local => @@podLocal + '/OPIFoundation'
  	#--END LOCAL In-House Dependencies
  	  
  	#--BEGIN RELEASED In-House Dependencies
  	ss.dependency 'OPIFoundation/UILayoutManagers', '1.4.mod'
  	ss.dependency 'OPIFoundation/UISketchPad', '1.4.mod'
  	ss.dependency 'OPIFoundation/UIThirdParty', '1.4.mod'
  	ss.dependency 'OPIFoundation/UICustomViewsAndControllers', '1.4.mod'
  	ss.dependency 'OPIFoundation/IOSFrameworkCategories', '1.4.mod'
  	#--END RELEASED In-House Dependencies
  	  
  end
  s.subspec 'ContentSyncCore' do |ss|
    ss.source_files = 'ContentSync/Core/**/*.{h,m,c}'
  	ss.requires_arc = false
 
  	ss.libraries = 'z'
  	
  	ss.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'ImageIO', 'MediaPlayer', 'MediaToolbox', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'QuickLook', 'UIKit', 'Security', 'SystemConfiguration'
  	
  	ss.dependency  'AFNetworking', '~> 1.1'
  	ss.dependency  'TouchJSON@objectpartners', '1.1'
  	
  	#--BEGIN LOCAL In-House Dependencies
#  	ss.dependency 'OPIFoundation/UtilHelpers', :local => @@podLocal + '/OPIFoundation'
#  	ss.dependency 'OPIFoundation/UILayoutManagers', :local => @@podLocal + '/OPIFoundation'
#  	ss.dependency 'OPIFoundation/Reachability', :local => @@podLocal + '/OPIFoundation'
#  	ss.dependency 'OPIFoundation/IOSFrameworkCategories', :local => @@podLocal + '/OPIFoundation'
#  	ss.dependency 'OPIFoundation/ZipArchive', :local => @@podLocal + '/OPIFoundation'
  	#--END LOCAL In-House Dependencies
  	
  	#--BEGIN RELEASED In-House Dependencies
  	ss.dependency 'OPIFoundation/UtilHelpers', '1.4.mod'
  	ss.dependency 'OPIFoundation/UILayoutManagers', '1.4.mod'
  	ss.dependency 'OPIFoundation/Reachability', '1.4.mod'
  	ss.dependency 'OPIFoundation/IOSFrameworkCategories', '1.4.mod'
  	ss.dependency 'OPIFoundation/ZipArchive', '1.4.mod'
  	#--END RELEASED In-House Dependencies
  	
  end
  s.subspec 'ContentSyncAPI' do |ss|
    ss.source_files = 'ContentSync/Sync/**/*.{h,m,c}'
  	ss.requires_arc = false
  end
  s.subspec 'ContentSyncAPIAppUpdater' do |ss|
    ss.source_files = 'ContentSync/SyncInAppUpdater/**/*.{h,m,c}'
  	ss.requires_arc = false
  	
  	ss.dependency 'OPIFoundation/AppUpdater', :local => '~/PodsLocal/OPIFoundation'
  	#ss.dependency 'OPIFoundation/AppUpdater', '1.1.mod'
  end

  #--Search Paths
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz', 'OTHER_LDFLAGS' => '-all_load' }
  
end

Pod::Spec.new do |s|
  @@podLocal = ENV['POD_LOCAL_HOME']

  s.name         = "CargillCRMFoundation"
  s.version      = "2.1"
  s.summary      = "CargillCRMFoundation is required for all Cargill CRM apps that use a reusable set of UI Components and Utilities."
  s.homepage     = "https://github.com/objectpartners-mobile/cargill-crm-iosfoundation"
  s.license      = {
    :type => 'Cargill Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2012-2014 Cargill Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = {"Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/cargill-crm-iosfoundation.git", :tag => "2.1" }
  s.platform     = :ios, '6.1'
  
  #-- Source and Resources
  s.prefix_header_file = "CargillCRMFoundation/CargillCRMFoundation-Prefix.pch"
  s.source_files = 'CargillCRMFoundation/**/*.{h,m,c}'
  s.preserve_paths=
  s.resources = 'CargillCRMResources/**/*.{png,gif,jpg,strings}'
  s.requires_arc = true
  
  #--Search Paths
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '', 'OTHER_LDFLAGS' => '-all_load' }
  
  #-- Dependencies (Third Party)
  s.dependency 'ViewDeck', '2.2.11'
  s.dependency 'PDKeychainBindingsController', '0.0.1'
  s.dependency 'AFNetworking', '2.4.1'
  s.dependency 'FileMD5Hash', '2.0.0'
  s.dependency 'Reachability', '3.1.1'
  s.dependency 'CocoaLumberjack', '2.0.0-rc'
  
  s.dependency 'TouchJSON@objectpartners-mobile', '1.1'
  
  #-- Dependencies (OPIFoundation)
  s.dependency 'OPIFoundation/IOSFrameworkCategories', '5.2'
  s.dependency 'OPIFoundation/UICustomViewsAndControllers', '5.2'
  s.dependency 'OPIFoundation/UILayoutManagers', '5.2'
  s.dependency 'OPIFoundation/GlassButton', '5.2'
  s.dependency 'OPIFoundation/WebBrowser', '5.2'
  s.dependency 'OPIFoundation/CoreDataTools', '5.2'
  s.dependency 'OPIFoundation/UtilHelpers', '5.2'
 
  #--BEGIN RELEASED In-House Dependencies
  # Add following subspecs in your Podfile for OPIFoundation
  # IOSFrameworkCategories, UICustomViewsAndControllers, UILayoutManagers, SignatureCapture, 
  # UISketchPad, GlassButton, WebBrowser, UtilHelpers, CoreDataTools, Reachabiliity
  #--END RELEASED In-House Dependencies
    
  #-- Frameworks and Libraries
  s.frameworks = 'UIKit', 'Foundation', 'CFNetwork', 'CoreGraphics', 'CoreData', 'CoreText', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'SystemConfiguration'
end

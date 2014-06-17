Pod::Spec.new do |s|
  @@podLocal = ENV['POD_LOCAL_HOME']
  
  s.name         = "ContentSync"
  s.version      = "4.0"
  s.summary      = "ContentSync is required to sync content files to the iPad Catalog app instance (using CatalogFoundation)."
  s.homepage     = "https://github.com/objectpartners/contentsynciosfoundation"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners/contentsynciosfoundation.git", :tag => "4.0" }
  s.platform     = :ios, '6.0'
  
  #--- Source and Resources
  s.source_files = 'ContentSync/**/*.{h,m,c}'
  s.requires_arc = true
  #s.resources = ''
  
  #-- Frameworks and Libraries
  #s.libraries = ''
  s.frameworks = 'Foundation', 'MobileCoreServices', 'SystemConfiguration'
  
  #-- Dependencies (Third Party)
  s.dependency 'AFNetworking', '~> 2.2.4'
  s.dependency 'TouchJSON@objectpartners', '~> 1.1'
  s.dependency 'PDKeychainBindingsController@objectpartners', '~> 1.1'
  
  s.dependency 'OPIFoundation/UtilHelpers', '~>4'
  s.dependency 'OPIFoundation/IOSFrameworkCategories' , '~>4'
  s.dependency 'OPIFoundation/AppUpdater', '~>4'
  s.dependency 'OPIFoundation/ZipArchive', '~>4'
  
end

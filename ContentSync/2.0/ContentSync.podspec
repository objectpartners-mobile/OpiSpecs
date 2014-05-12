Pod::Spec.new do |s|
  @@podLocal = ENV['POD_LOCAL_HOME']
  
  s.name         = "ContentSync"
  s.version      = "2.0"
  s.summary      = "ContentSync is required to sync content files to the iPad Catalog app instance (using CatalogFoundation)."
  s.homepage     = "https://github.com/objectpartners/contentsynciosfoundation"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners/contentsynciosfoundation.git", :tag => "2.0" }
  s.platform     = :ios, '5.0'
  
  #--- Source and Resources
  s.source_files = 'ContentSync/**/*.{h,m,c}'
  s.requires_arc = true
  #s.resources = ''
  
  #-- Frameworks and Libraries
  #s.libraries = ''
  s.frameworks = 'Foundation', 'MobileCoreServices', 'SystemConfiguration'
  
  #-- Dependencies (Third Party)
  #s.dependency 'AFNetworking', '~> 1.1'
  #s.dependency 'TouchJSON@objectpartners', '~> 1.1'
  
  #--BEGIN LOCAL In-House Dependencies
#  s.dependency 'OPIFoundation/UtilHelpers', :local => @@podLocal + '/OPIFoundation'
#  s.dependency 'OPIFoundation/Reachability', :local => @@podLocal + '/OPIFoundation'
#  s.dependency 'OPIFoundation/IOSFrameworkCategories', :local => @@podLocal + '/OPIFoundation'
#  s.dependency 'OPIFoundation/AppUpdater', :local => @@podLocal + '/OPIFoundation'
#  s.dependency 'OPIFoundation/ZipArchive', :local => @@podLocal + '/OPIFoundation'
  #--END LOCAL In-House Dependencies
  
  #--BEGIN RELEASED In-House Dependencies
#  s.dependency 'OPIFoundation/UtilHelpers', '3.5'
#  s.dependency 'OPIFoundation/Reachability', '3.5'
#  s.dependency 'OPIFoundation/IOSFrameworkCategories' , '3.5'
#  s.dependency 'OPIFoundation/AppUpdater', '3.5'
#  s.dependency 'OPIFoundation/ZipArchive', '3.5'
  #--END RELEASED In-House Dependencies
  
end

Pod::Spec.new do |s|
  s.name         = "ContentSync"
  s.version      = "1.2"
  s.summary      = "ContentSync is required to sync content files to the iPad Catalog app instance (using CatalogFoundation)."
  s.homepage     = "https://github.com/objectpartners/contentsynciosfoundation"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners/contentsynciosfoundation.git", :tag => "1.2" }
  s.platform     = :ios, '5.0'
  
  #--- Source and Resources
  s.source_files = 'ContentSync/**/*.{h,m,c}'
  s.requires_arc = false
  #s.resources = ''
  
  #-- Frameworks and Libraries
  #s.libraries = ''
  s.frameworks = 'Foundation'
  
  #-- Dependencies (Third Party)
  s.dependency 'AFNetworking', '~> 1.1'
  s.dependency 'TouchJSON@objectpartners', '~> 1.1'
  
  #-- In House Dependencies (local)
  #s.dependency 'OPIFoundation/UtilHelpers', :local => '~/PodsLocal/OPIFoundation'
  #s.dependency 'OPIFoundation/Reachability', :local => '~/PodsLocal/OPIFoundation'
  #s.dependency 'OPIFoundation/IOSFrameworkCategories', :local => '~/PodsLocal/OPIFoundation'
  #s.dependency 'OPIFoundation/AppUpdater', :local => '~/PodsLocal/OPIFoundation'
  #s.dependency 'OPIFoundation/ZipArchive', :local => '~/PodsLocal/OPIFoundation'
  
  #-- In House Dependencies (versioned)
  s.dependency 'OPIFoundation/UtilHelpers', '1.6.mod'
  s.dependency 'OPIFoundation/Reachability', '1.6.mod'
  s.dependency 'OPIFoundation/IOSFrameworkCategories' , '1.6.mod'
  s.dependency 'OPIFoundation/AppUpdater', '1.6.mod'
  s.dependency 'OPIFoundation/ZipArchive', '1.6.mod'
  
end

Pod::Spec.new do |s|
  s.name         = "ContentSync"
  s.version      = "7.1"
  s.summary      = "ContentSync is required to sync content files to the iPad Catalog app instance (using CatalogFoundation)."
  s.homepage     = "https://github.com/objectpartners-mobile/contentsynciosfoundation"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2019 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/contentsynciosfoundation.git", :tag => "7.1" }
  s.platform     = :ios, '9.0'

  #--- Source and Resources
  s.source_files = 'ContentSync/**/*.{h,m,c}'
  s.requires_arc = true
  #s.resources = ''

  #-- Frameworks and Libraries
  #s.libraries = ''
  s.frameworks = 'Foundation', 'MobileCoreServices', 'SystemConfiguration'

  #-- Dependencies (Third Party)
  s.dependency 'Reachability', '~> 3.2'
  s.dependency 'AFNetworking', '~> 3.1.0'
  s.dependency 'TouchJSON@objectpartners-mobile', '~> 1.1'
  s.dependency 'PDKeychainBindingsController@objectpartners-mobile', '~> 1.1'

  s.dependency 'OPIFoundation/UtilHelpers', '~> 7.1'
  s.dependency 'OPIFoundation/IOSFrameworkCategories', '~> 7.1'
  s.dependency 'OPIFoundation/ZipArchive', '~> 7.1'

end

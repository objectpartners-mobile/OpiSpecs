Pod::Spec.new do |s|
  @@podLocal = ENV['POD_LOCAL_HOME']

  s.name         = "CatalogFoundation"
  s.version      = "4.0"
  s.summary      = "CatalogFoundation is required to provide the basics for Salesfolio (Catalog App) UI and accessing offline content."
  s.homepage     = "https://github.com/objectpartners/catalogiosfoundation"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2014 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners/catalogiosfoundation.git", :tag => "4.0" }
  s.platform     = :ios, '6.0'
  
  #-- Source and Resources
  s.prefix_header_file = "CatalogFoundation/CatalogFoundation-Prefix.pch"
  s.preserve_paths= '**/*.xcdatamodeld'
  s.resources = 'CatalogFoundationResources/**/*.{png,gif,jpg,strings}'
  #s.vendored_frameworks = 'FastPdfKit@objectpartners/FastPdfKit.embeddedframework/FastPdfKit.framework '
  
  s.source_files = 'CatalogFoundation/**/*.{xcdatamodeld,h,m,c}'
  s.requires_arc = true
  
  #-- Post Install Step (Core Data Model)
  def s.post_install(library)
      momd_relative = 'CatalogFoundation/ContentStructure.momd'
      momd_full = library.sandbox_dir + momd_relative

      unless momd_full.exist?
        puts "\nCompiling CatalogFoundation/ContentStructure Core Data model\n"
        # Local
        # model = Pathname.new(File.expand_path(@@podLocal)) + 'CatalogFoundation/CatalogFoundation/ContentStructure.xcdatamodeld'
        
        # Released
        model = library.sandbox_dir + 'CatalogFoundation/ContentStructure.xcdatamodeld'
        
        # Make sure the directory is created (Helpful when using local pods)
        commandmkdir = "mkdir -p '#{momd_full}'"
        commandmkdir
        unless system(commandmkdir)
          raise ::Pod::Informative, "Failed to create directory '#{momd_full}'"
        end
        
        # Run the xcrun command to compile the momd resource
        commandxcrun = "xcrun momc '#{model}' '#{momd_full}'"
        commandxcrun
        unless system(commandxcrun)
          raise ::Pod::Informative, "Failed to compile CatalogFoundation/ContentStructure Core Data model"
        end
      end
 
      File.open(library.copy_resources_script_path, 'a') do |file|
        file.puts "install_resource '#{momd_relative}'"
      end
  end
  
  #--Search Paths
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz $(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-all_load', 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/FastPdfKit@objectpartners/FastPdfKit.embeddedframework"' }
  
  #-- Dependencies (Third Party)
  s.dependency 'FastPdfKit@objectpartners/FastPdfKit.embeddedframework', '4.0'
  s.dependency 'DTCoreText', '~> 1.6.11'
  s.dependency 'CustomBadge', '~> 2.0'
  s.dependency 'iCarousel', '~> 1.7.6'
  s.dependency 'PDKeychainBindingsController@objectpartners', '~> 1.1'
  
  s.dependency 'ContentSync', '~>4'
  s.dependency 'OPIFoundation/UILayoutManagers', '~>4'
  s.dependency 'OPIFoundation/UISketchPad', '~>4'
  s.dependency 'OPIFoundation/UICustomViewsAndControllers', '~>4'
  #s.dependency 'OPIFoundation/UIThirdParty', '~>4'
    
  #-- Frameworks and Libraries
  s.libraries = 'z', 'xml2', 'sqlite3.0'
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'ImageIO', 'MediaPlayer', 'MediaToolbox', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'QuickLook', 'UIKit', 'Security', 'SystemConfiguration'
end

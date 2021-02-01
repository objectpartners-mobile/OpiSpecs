Pod::Spec.new do |s|
  s.name         = "CatalogFoundation"
  s.version      = "1.2"
  s.summary      = "CatalogFoundation is required to provide the basics for Salesfolio (Catalog App) UI and accessing offline content."
  s.homepage     = "https://github.com/objectpartners-mobile/catalogiosfoundation"
  s.license      = {
    :type => 'OPI Proprietary',
    :text => <<-LICENSE
              Copyright (C) 2010-2013 Object Partners Inc.  All rights reserved.
    LICENSE
  }
  s.authors       = { "Steve McCoole" => "steve.mccoole@objectpartners.com", "Torey Lomenda" => "torey.lomenda@objectpartners.com" }
  s.source       = { :git => "https://github.com/objectpartners-mobile/catalogiosfoundation.git", :tag => "1.2" }
  s.platform     = :ios, '5.0'
  
  #-- Source and Resources
  s.prefix_header_file = "CatalogFoundation/CatalogFoundation-Prefix.pch"
  s.source_files = 'CatalogFoundation/**/*.{xcdatamodeld,h,m,c}'
  s.preserve_paths= '**/*.xcdatamodeld'
  s.resources = 'CatalogFoundationResources/**/*.{png,gif,jpg,strings}'
  s.requires_arc = false
  
  #-- Post Install Step (Core Data Model)
  def s.post_install(target_installer)
      momd_relative = 'CatalogFoundation/ContentStructure.momd'
      momd_full = config.project_pods_root + momd_relative

      unless momd_full.exist?
        puts "\nCompiling CatalogFoundation/ContentStructure Core Data model\n".yellow if config.verbose?
        # Local
        model = Pathname.new(File.expand_path("~/PodsLocal")) + 'CatalogFoundation/CatalogFoundation/ContentStructure.xcdatamodeld'
        
        # Released
        # model = config.project_pods_root + 'CatalogFoundation/ContentStructure.xcdatamodeld'
        
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
 
      File.open(File.join(config.project_pods_root, target_installer.target_definition.copy_resources_script_name), 'a') do |file|
        file.puts "install_resource '#{momd_relative}'"
      end
  end
  
  #--Search Paths
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz $(SDKROOT)/usr/include/libxml2', 'OTHER_LDFLAGS' => '-all_load' }
  
  #-- Dependencies (Third Party)
  s.dependency 'FastPdfKit@objectpartners-mobile/FastPdfKit.embeddedframework', '3.5.dev'
  s.dependency 'DTCoreText', '~>1.3.2'
  
  #-- In House Dependencies (local)
  #s.dependency 'ContentSync', :local => '~/PodsLocal/ContentSync'
  #s.dependency 'OPIFoundation/UILayoutManagers', :local => '~/PodsLocal/OPIFoundation'
  #s.dependency 'OPIFoundation/UISketchPad', :local => '~/PodsLocal/OPIFoundation'
  #s.dependency 'OPIFoundation/UICustomViewsAndControllers', :local => '~/PodsLocal/OPIFoundation'
  #s.dependency 'OPIFoundation/UIThirdParty', :local => '~/PodsLocal/OPIFoundation'
  
  #-- In House Dependencies (versioned)
  s.dependency 'ContentSync', '1.2'
  s.dependency 'OPIFoundation/UILayoutManagers', '1.6.mod'
  s.dependency 'OPIFoundation/UISketchPad', '1.6.mod'
  s.dependency 'OPIFoundation/UICustomViewsAndControllers', '1.6.mod'
  s.dependency 'OPIFoundation/UIThirdParty', '1.6.mod'
  
  #-- Frameworks and Libraries
  s.libraries = 'z', 'xml2', 'sqlite3.0'
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreData', 'CoreGraphics', 'CoreMedia', 'CoreText', 'Foundation', 'ImageIO', 'MediaPlayer', 'MediaToolbox', 'MessageUI', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'QuickLook', 'UIKit', 'Security', 'SystemConfiguration'
end

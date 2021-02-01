Pod::Spec.new do |s|
  s.name         = "TouchXML@objectpartners-mobile"
  s.version      = "0.2.nonARC"
  s.summary      = "Version fork of TouchXML."
  s.homepage     = "https://github.com/TouchCode/TouchXML.git"
  s.license      = { :type => 'Simplified BSD License', :file => 'README.markdown' }
  s.author       = { 'Jonathan Wight' => 'schwa@toxicsoftware.com' }
  s.source       = { :git => "https://github.com/objectpartners-mobile/TouchXML.git", :tag => "0.2.nonARC" }
  s.source_files = 'Source/**/*.{h,m}'
  s.requires_arc = false
  s.library      = 'xml2'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
end

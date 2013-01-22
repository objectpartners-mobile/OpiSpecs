Pod::Spec.new do |s|
  s.name         = "TouchXML@objectpartners"
  s.version      = "0.2"
  s.summary      = "Version fork of TouchXML."
  s.homepage     = "https://github.com/TouchCode/TouchXML.git"
  s.license      = { :type => 'Simplified BSD License', :file => 'README.markdown' }
  s.author       = { 'Jonathan Wight' => 'schwa@toxicsoftware.com' }
  s.source       = { :git => "https://github.com/objectpartners/TouchXML.git", :tag => "0.2" }
  s.source_files = 'Source/**/*.{h,m}'
  s.requires_arc = true
  s.library      = 'xml2'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
end

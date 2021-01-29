Pod::Spec.new do |s|
  s.name         = "TouchJSON@objectpartners"
  s.version      = "1.1"
  s.summary      = "Version fork of TouchJSON."
  s.homepage     = "https://github.com/TouchCode/TouchJSON.git"
  s.license      = { :type => 'Simplified BSD License', :file => 'README.markdown' }
  s.author       = { 'Jonathan Wight' => 'schwa@toxicsoftware.com' }
  s.source       = { :git => "https://github.com/objectpartners-mobile/TouchJSON.git", :tag => "1.1" }
  s.source_files = 'Source/**/*.{h,m}'
  s.requires_arc = true
  #s.library      = ''
  #s.xcconfig     = { }
end

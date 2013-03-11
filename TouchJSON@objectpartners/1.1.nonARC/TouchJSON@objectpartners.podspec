Pod::Spec.new do |s|
  s.name         = "TouchJSON@objectpartners"
  s.version      = "1.1.nonARC"
  s.summary      = "Version fork of TouchJSON."
  s.homepage     = "https://github.com/TouchCode/TouchJSON.git"
  s.license      = { :type => 'Simplified BSD License', :file => 'README.markdown' }
  s.author       = { 'Jonathan Wight' => 'schwa@toxicsoftware.com' }
  s.source       = { :git => "https://github.com/objectpartners/TouchJSON.git", :tag => "1.1-NonARC" }
  s.source_files = 'Source/**/*.{h,m}'
  s.requires_arc = false
  #s.library      = ''
  #s.xcconfig     = { }
end

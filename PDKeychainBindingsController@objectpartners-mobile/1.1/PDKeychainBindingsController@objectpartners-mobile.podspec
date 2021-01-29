Pod::Spec.new do |s|
  s.name         = "PDKeychainBindingsController@objectpartners-mobile"
  s.version      = "1.1"
  s.summary      = "Version fork of PDKeychainBindingsController."
  s.homepage     = "https://github.com/carlbrown/PDKeychainBindingsController"
  s.license      = { :type => 'Attribution', :file => 'LICENSE' }
  s.author       = { 'Carl Brown' => 'carlb@pdagent.com' }
  s.source       = { :git => "https://github.com/objectpartners-mobile/PDKeychainBindingsController.git", :tag => "1.1" }
  s.source_files = 'PDKeychainBindingsController/*.{h,m}'
  s.requires_arc = true
  #s.library      = ''
  #s.xcconfig     = { }
end

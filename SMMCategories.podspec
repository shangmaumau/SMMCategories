
Pod::Spec.new do |spec|
  spec.name         = "SMMCategories"
  spec.version      = "1.0.8"
  spec.summary      = "Some useful Categories for iPhoneOS development."
  spec.homepage     = "https://github.com/shangmaumau/SMMCategories"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "尚毛毛" => "shangmaumau@live.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/shangmaumau/SMMCategories.git", :tag => spec.version.to_s }
  spec.source_files = "SMMCategories/*/*.{h,m}"
  spec.requires_arc = true

end

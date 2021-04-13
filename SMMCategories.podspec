
Pod::Spec.new do |spec|
  spec.name         = "SMMCategories"
  spec.version      = "1.0.7"
  spec.summary      = "Some useful Categories for iPhoneOS development."
  spec.homepage     = "https://github.com/shangleixun/SMMCategories"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "尚雷勋" => "leixun.shang@gmail.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/shangleixun/SMMCategories.git", :tag => spec.version.to_s }
  spec.source_files = "SMMCategories/*/*.{h,m}"
  spec.requires_arc = true

end


Pod::Spec.new do |spec|
  spec.name         = "SMMCategories"
  spec.version      = "1.0.3"
  spec.summary      = "Some useful Categories for iPhoneOS deverlopment."
  spec.homepage     = "https://github.com/shangleixun/SMMCategories"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "尚雷勋" => "leixun.shang@gmail.com" }
  spec.ios.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/shangleixun/SMMCategories.git", :tag => spec.version.to_s }
  spec.source_files  = "SMMCategories"
  spec.requires_arc = true

end

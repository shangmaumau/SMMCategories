
Pod::Spec.new do |spec|

  spec.name         = "SMMCategories"
  spec.version      = "1.0.1"
  spec.summary      = "Some useful Categories for iPhoneOS deverlopment."

  spec.homepage     = "https://github.com/shangleixun/SMMCategories"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "尚雷勋" => "leixun.shang@gmail.com" }
  spec.ios.deployment_target = "9.0"
  
  spec.source       = { :git => "https://github.com/shangleixun/SMMCategories.git", :tag => "#{spec.version}" }
  
  spec.source_files  = "SMMCategories", "SMMCategories/*.{h,m}"
  spec.public_header_files = "SMMCategories/*.h"
  
  spec.requires_arc = true

end

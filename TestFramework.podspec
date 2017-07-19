Pod::Spec.new do |s|
  s.name         = "TestFramework"
  s.version      = "0.0.1"
  s.summary      = "TestFramework"
  s.homepage     = "https://github.com/kbdevwork/TestFramework"
  s.license      = "MIT"
  s.author       = { "Kevin Brodigan" => "kbrodigan@gmail.com" }

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/kbdevwork/TestFramework.swift.git", :tag => s.version }
  s.source_files = "Sources/*.swift"
end
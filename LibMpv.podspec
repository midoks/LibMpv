Pod::Spec.new do |s|

  s.name         = "LibMpv"
  s.version      = "0.0.1"
  s.summary      = "A short description of LibMpv."

  s.homepage     = "https://github.com/midoks/LibMpv"
  s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "midoks" => "midoks@163.com" }


  s.platform     = :osx, "10.7"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/midoks/LibMpv.git", :tag => "#{s.version}", :submodules => true }

  s.default_subspec = 'precompiled'
  
  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'source/include/**/*.h'
    ss.public_header_files = 'source/include/**/*.h'
    ss.header_mappings_dir = 'source/include'
    ss.vendored_libraries  = 'source/lib/*.dylib'
    # ss.frameworks  = 'AVFoundation', 'VideoToolbox', 'AudioToolbox', 'CoreVideo', 'CoreMedia'
    # ss.libraries =  ''
  end

end

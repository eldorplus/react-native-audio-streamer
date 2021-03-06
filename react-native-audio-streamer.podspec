require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "react-native-audio-streamer"
  s.version             = package['version']
  s.author              = { "droibit" => "eldorplus@gmail.com" }
  s.license             = package['license']
  s.summary             = s.name
  s.homepage            = 'https://github.com/eldorplus/react-native-audio-streamer'
  s.source              = { :git => 'https://github.com/eldorplus/react-native-audio-streamer.git', :tag => "v#{s.version}" }
  s.requires_arc        = true
  s.platform            = :ios, "9.0"
  s.pod_target_xcconfig = { "CLANG_CXX_LANGUAGE_STANDARD" => "c++14" }
  s.header_dir          = 'ios'
  s.preserve_paths      = "ios/**"
  s.dependency          'React'
  s.source_files        = 'ios/**/*.{h,m}'
  s.exclude_files       = 'android/**/*'
  s.libraries     = "stdc++"
end

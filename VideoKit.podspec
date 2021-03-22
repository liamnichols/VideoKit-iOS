Pod::Spec.new do |s|
  s.name = 'VideoKit'
  s.version = '1.0.10'
  s.summary = 'The Zero-latency, Instantaneous, Full Featured Mobile Video Stack.'
  s.description = 'The purpose of VideoKit is to provide you with an easy way to integrate video playback, recording, and storage for your app.'
  s.homepage = 'https://video.io/'
  s.license = 'UNKNOWN'
  s.author = 'video.io'
  s.source = { :http => "https://www.dropbox.com/s/m2tar0t1np2nvgk/VideoKit-iOS.zip?dl=1" }
  s.ios.deployment_target = '11.0'
  s.swift_versions = [5.0]
  s.cocoapods_version = '>= 1.9'

  s.subspec 'Core' do |ss|
    ss.vendored_frameworks = 'VideoKitCore.xcframework'
  end

  s.subspec 'Player' do |ss|
    ss.vendored_frameworks = 'VideoKitPlayer.xcframework'
    ss.dependency 'VideoKit/Core'
  end

  s.subspec 'Live' do |ss|
    ss.vendored_frameworks = 'VideoKitLive.xcframework'
    ss.dependency 'VideoKit/Core'
  end

  s.subspec 'Recorder' do |ss|
    ss.vendored_frameworks = 'VideoKitRecorder.xcframework'
    ss.dependency 'VideoKit/Core'
    ss.dependency 'VideoKit/Player'
  end

  s.default_subspec = 'Core'
end

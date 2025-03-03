Pod::Spec.new do |spec|
  spec.name         = "Teak"
  spec.version      = "4.3.3"
  spec.summary      = "Teak provides rewarded push notifications, emails, and links for free to play games."
  spec.homepage     = "https://teak.io"
  spec.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  spec.author       = { "Alex Scarborough" => "alex@teak.io" }

  spec.source = { :git => "https://github.com/GoCarrot/teak-ios-framework.git", tag: spec.version.to_s }

  spec.platform = :ios, "11.0"

  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |core|
    core.vendored_frameworks = 'Teak.xcframework'
    core.frameworks = "AdSupport", "AVFoundation", "ImageIO", "CoreServices", "StoreKit", "UserNotifications", "CoreGraphics", "UIKit", "SystemConfiguration"
  end

  spec.subspec 'Extension' do |ext|
    ext.vendored_frameworks = "TeakExtension.xcframework"
    ext.frameworks = "ImageIO", "CoreGraphics", "UserNotifications"
  end
end

Pod::Spec.new do |spec|
	spec.name         = "HIGColors"
	spec.version      = "1.0.0"
	spec.summary      = "A simple micro-library that gives easy access to Apple's iOS Human Interface Guidelines (HIG) color definitions. Compatible with iOS, watchOS, tvOS, and macOS."
	spec.homepage     = "https://github.com/hisaac/HIGColors"
	spec.license      = "MIT"
	spec.source       = { :git => "https://github.com/hisaac/HIGColors.git", :tag => "#{spec.version}" }
	spec.source_files = "HIGColors"
	spec.resource     = "HIGColors.xcassets"
	spec.module_name  = "HIGColors"

	spec.swift_version             = "4.2"
	spec.ios.deployment_target     = "8.0"
	spec.watchOS.deployment_target = "2.0"
	spec.tvOS.deployment_target    = "9.0"
	spec.osx.deployment_target     = "10.9"

	spec.author           = { "Isaac Halvorson" => "hello@hisaac.net" }
	spec.social_media_url = "http://twitter.com/hisaac"
end

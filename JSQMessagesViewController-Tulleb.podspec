Pod::Spec.new do |s|
	s.name = 'JSQMessagesViewController-Tulleb'
	s.version = '8.0.1'
	s.summary = 'An elegant messages UI library for iOS. Updated by Tulleb since JSQ stopped supporting it.'
	s.homepage = 'http://jessesquires.github.io/JSQMessagesViewController'
	s.license = 'MIT'
	s.platform = :ios, '7.0'

	s.authors = { 'Guillaume Bellut' => 'guillaume@bellut.com' }
	s.social_media_url = 'https://twitter.com/jesse_squires'

	s.screenshots = ['https://raw.githubusercontent.com/jessesquires/JSQMessagesViewController/develop/Screenshots/screenshot0.png',
                    'https://raw.githubusercontent.com/jessesquires/JSQMessagesViewController/develop/Screenshots/screenshot1.png',
                    'https://raw.githubusercontent.com/jessesquires/JSQMessagesViewController/develop/Screenshots/screenshot2.png',
                    'https://raw.githubusercontent.com/jessesquires/JSQMessagesViewController/develop/Screenshots/screenshot3.png']

	s.source = { :git => 'https://github.com/Tulleb/JSQMessagesViewController.git', :branch => 'master', :tag => s.version }
	s.source_files = 'JSQMessagesViewController/**/*.{h,m}'

	s.resources = ['JSQMessagesViewController/Assets/JSQMessagesAssets.bundle', 'JSQMessagesViewController/**/*.{xib}', 'JSQMessagesViewController/Assets/Media.xcassets']

	s.frameworks = 'QuartzCore', 'CoreGraphics', 'CoreLocation', 'MapKit', 'MobileCoreServices', 'AVFoundation'
	s.requires_arc = true
end

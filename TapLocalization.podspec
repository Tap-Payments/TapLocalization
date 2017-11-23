Pod::Spec.new do |tapLocalization|
    
    tapLocalization.platform = :ios
    tapLocalization.ios.deployment_target = '8.0'
    tapLocalization.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
    tapLocalization.name = 'TapLocalization'
    tapLocalization.summary = 'Tap Localization Manager.'
    tapLocalization.requires_arc = true
    tapLocalization.version = '1.0.2'
    tapLocalization.license = { :type => 'MIT', :file => 'LICENSE' }
    tapLocalization.author = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapLocalization.homepage = 'https://github.com/Tap-Payments/TapLocalization'
    tapLocalization.source = { :git => 'https://github.com/Tap-Payments/TapLocalization.git', :tag => tapLocalization.version.to_s }
    tapLocalization.source_files = 'TapLocalization/Source/*.swift'
    tapLocalization.dependency 'SwiftFixes'
    tapLocalization.dependency 'TapAdditionsKit/Foundation/Locale'
    tapLocalization.dependency 'TapAdditionsKit/Foundation/NumberFormatter'
    tapLocalization.dependency 'TapApplication'
    tapLocalization.dependency 'TapDatabase'
    tapLocalization.dependency 'TapFlagsKit'
    tapLocalization.dependency 'TapLogger'
    
end

Pod::Spec.new do |tapLocalization|
    
    tapLocalization.platform                = :ios
    tapLocalization.ios.deployment_target   = '8.0'
    tapLocalization.swift_version           = '4.2'
    tapLocalization.name                    = 'TapLocalization'
    tapLocalization.summary                 = 'Tap Localization Manager.'
    tapLocalization.requires_arc            = true
    tapLocalization.version                 = '1.1.5'
    tapLocalization.license                 = { :type => 'MIT', :file => 'LICENSE' }
    tapLocalization.author                  = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapLocalization.homepage                = 'https://github.com/Tap-Payments/TapLocalization'
    tapLocalization.source                  = { :git => 'https://github.com/Tap-Payments/TapLocalization.git', :tag => tapLocalization.version.to_s }
    tapLocalization.default_subspecs        = 'Core'
    
    tapLocalization.subspec 'Core' do |core|
        
        core.dependency 'TapAdditionsKit/Foundation/Locale'
        core.dependency 'TapAdditionsKit/Foundation/NumberFormatter'
        core.dependency 'TapAdditionsKit/Tap/ClassProtocol'
        core.dependency 'TapDatabase'
        core.dependency 'TapLocalization/Notifications'
        core.dependency 'TapLogger'
        core.dependency 'TapSwiftFixes/Threading'
        
        core.source_files = 'TapLocalization/Source/Core/*.swift'
        
    end
    
    tapLocalization.subspec 'Notifications' do |notifications|
    
        notifications.source_files = 'TapLocalization/Source/Notifications/*.swift'
    
    end
end

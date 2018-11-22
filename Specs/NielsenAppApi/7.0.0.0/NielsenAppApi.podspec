Pod::Spec.new do |s|
    s.authors             = 'Nielsen'
    s.description         = 'Nielsen Digital Measurement SDK Framework.'
    s.frameworks          = 'AdSupport', 'JavaScriptCore', 'WebKit', 'SystemConfiguration', 'AVFoundation'
    s.library             = 'sqlite3'
    s.homepage            = 'http://www.nielsen.com'
    s.license             = { :text => 'Copyright 2018 Nielsen', :type => 'Copyright' }
    s.platform            = :ios, '8.0'
    s.name                = 'NielsenAppApi'
    s.preserve_paths      = 'LICENSE.txt', 'pod_build.sh'
    #s.source_files        = 'NielsenAppSDK.framework/Headers/NielsenAppSDK.h'
    s.module_map          = 'NielsenAppApi.framework/Modules/module.modulemap'
    s.header_mappings_dir = 'NielsenAppApi.framework/Headers'
    #s.public_header_files = 'NielsenAppApi.framework/Headers/NielsenAppSDK.h', 'NielsenAppApi.framework/Headers/NielsenAppApi.h', 'NielsenAppApi.framework/Headers/NielsenEventTracker.h'
    s.source              = { :http => 'https://raw.githubusercontent.com/nielsendigitalsdk/nielsenappsdk-ios-releases-develop/master/iOS/Nielsen/NielsenAppApi-7.0.0.0.zip' }
    s.summary             = 'Nielsen App SDK.'
    s.vendored_frameworks = 'NielsenAppApi.framework'
    s.version             = '7.0.0.0'
    s.script_phases = [
        {
            :name => 'Pod Build Script',
            :script => 'chmod a+x "${PODS_TARGET_SRCROOT}/pod_build.sh"
"${PODS_TARGET_SRCROOT}"/pod_build.sh',
            :execution_position => :before_compile
        }
    ]
end
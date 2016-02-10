Pod::Spec.new do |s|
  s.name              = 'HockeySDK-Source'
  s.version           = '3.8.5'

  s.summary           = 'Collect live crash reports, get feedback from your users, distribute your betas, and analyze your test coverage with HockeyApp.'
  s.description       = <<-DESC
                        HockeyApp is a service to distribute beta apps, collect crash reports and
                        communicate with your app's users.
                        
                        It improves the testing process dramatically and can be used for both beta
                        and App Store builds.
                        DESC

  s.homepage          = 'http://hockeyapp.net/'
  s.documentation_url = "http://hockeyapp.net/help/sdk/ios/#{s.version}/"

  s.license           = 'MIT'
  s.author            = { 'Microsoft' => 'support@hockeyapp.net' }
  s.source            = { :git => 'https://github.com/bitstadium/HockeySDK-iOS.git', :tag => s.version.to_s }

  s.platform          = :ios, '7.0'
  
  s.source_files      = 'Classes/HockeySDK*.{h,m}', 'Classes/BITHockeyManager*.{h,m}', 'Classes/BITHockeyAppClient.{h,m}', 'Classes/BITHTTPOperation.{h,m}', 'Classes/BITHockeyHelper.{h,m}', 'Classes/BITKeychain*.{h,m}', 'Classes/BITHockeyBaseManager*.{h,m}', 'Classes/BITCrash*.{h,m,mm}', 'Classes/BITHockeyAttachment.{h,m}'
  s.requires_arc      = true
  
  s.frameworks              = 'Security', 'UIKit', 'SystemConfiguration'
  s.libraries = 'c++'
  s.ios.vendored_frameworks = 'Vendor/CrashReporter.framework'
  
  s.xcconfig                = {'GCC_PREPROCESSOR_DEFINITIONS' => %{$(inherited) BITHOCKEY_VERSION="@\\"#{s.version}\\"" BITHOCKEY_C_VERSION="\\"#{s.version}\\"" BITHOCKEY_BUILD="@\\"57\\"" BITHOCKEY_C_BUILD="\\"57\\"" HOCKEYSDK_FEATURE_CRASH_REPORTER=1 HOCKEYSDK_FEATURE_FEEDBACK=0 HOCKEYSDK_FEATURE_STORE_UPDATES=0 HOCKEYSDK_FEATURE_AUTHENTICATOR=0 HOCKEYSDK_FEATURE_UPDATES=0 HOCKEYSDK_CONFIGURATION_ReleaseCrashOnlyExtensions=1} }

  s.preserve_paths          = 'Resources', 'Support', 'README.md'
  
  s.private_header_files  = 'Classes/BITCrashDetailsPrivate.h', 'Classes/BITCrashManagerPrivate.h', 'Classes/BITCrashReportTextFormatterPrivate.h', 'Classes/BITHockeyBaseManagerPrivate.h', 'Classes/HockeySDKPrivate.h'

end
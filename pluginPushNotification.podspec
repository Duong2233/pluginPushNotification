

Pod::Spec.new do |s|

  s.name         = "pluginPushNotification"
  s.version      = "0.0.1"
  s.summary      = "Plugin Push Notification for Globe One App"
  s.description  = "install pod and usage "

  s.homepage     = "https://github.com/Duong2233/pluginPushNotification"
  s.license      = "MIT"
  s.author             = { "Duong Nguyen" => "duong.nh@sutrixsolution.com" }
  s.source       = { :git => "https://github.com/Duong2233/pluginPushNotification.git", :tag => "#{s.version}" }

  s.platform     = :ios, "9.0"
  s.swift_version = "4.2"
  s.source_files  = "pluginPushNotification", "pluginPushNotification/**/*.{h,m,swift}"
  s.exclude_files = "pluginPushNotification/Exclude"

# s.ios.framework = 'AWSAuthCore'	
 # s.source_files = 'Pods/*'
#    s.subspec 'Pods' do |pods|
#    pods.source_files = 'Pods/Target Support Files/**/*'
#    end
   s.subspec 'AWSAuthCore' do |awsauthcore|
   awsauthcore.source_files = 'Pods/AWSAuthCore/AWSAuthSDK/Sources/AWSAuthCore/**/*.{h,m,swift}'
        awsauthcore.public_header_files = 'Pods/Target Support Files/AWSAuthCore/**/*'

   end
   s.subspec 'AWSCognitoIdentityProvider' do |awscognitoidentityprovider|
   awscognitoidentityprovider.source_files = 'Pods/AWSCognitoIdentityProvider/AWSCognitoIdentityProvider/**/*'
        awscognitoidentityprovider.public_header_files = 'Pods/Target Support Files/AWSCognitoIdentityProvider/**/*'

   end 
   s.subspec 'AWSCognitoIdentityProviderASF' do |aswcognitoidentityproviderasf|
   aswcognitoidentityproviderasf.source_files = 'Pods/AWSCognitoIdentityProviderASF/**/*'
        aswcognitoidentityproviderasf.public_header_files = 'Pods/Target Support Files/AWSCognitoIdentityProviderASF/**/*'

   end 
   s.subspec 'AWSCore' do |awscore|
   awscore.source_files = 'Pods/AWSCore/**/*'
        awscore.public_header_files = 'Pods/Target Support Files/AWSCore/**/*'

   end 
   s.subspec 'AWSMobileClient' do |awsmobileclient|
   awsmobileclient.source_files = 'Pods/AWSMobileClient/**/*'
        awsmobileclient.public_header_files = 'Pods/Target Support Files/AWSMobileClient/**/*'

   end
   s.subspec 'AWSPinpoint' do |awspinpoint|
   awspinpoint.source_files = 'Pods/AWSPinpoint/**/*'
        awspinpoint.public_header_files = 'Pods/Target Support Files/AWSPinpoint/**/*'

   end
end

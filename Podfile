platform :ios, '8.0'
use_frameworks!

def network_and_test_pod
    pod 'Alamofire', '~> 3.0'
    pod 'OHHTTPStubs'
    pod 'OHHTTPStubs/Swift'
    pod 'Quick', '~> 0.9.0'
    pod 'Nimble', '3.0.0'
    pod 'SwiftyJSON', :git => 'https://github.com/SwiftyJSON/SwiftyJSON.git'
    pod 'RxSwift'
    pod 'RxCocoa'
    pod 'RxAlamofire'
    pod 'SnapKit'
end

target 'StubNBDDTest' do
network_and_test_pod
end

target 'StubNBDDTestTests' do
network_and_test_pod
end

target 'StubNBDDTestUITests' do

end


Pod::Spec.new do |s|
  s.name             = 'RxReduxRouter'
  s.version          = '0.1.0'
  s.summary          = 'A declarative router for RxRedux.'

  s.description      = <<-DESC
  A declarative router for RxRedux. Allows developers to declare routes in a similar manner as URLs are used on the web.
  Using RxReduxRouter you can navigate your app by defining the target location in the form of a URL-like sequence of identifiers.
                       DESC

  s.homepage         = 'https://github.com/hungdv136/RxReduxRouter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hung Dinh' => 'hungdv136@gmail.com' }
  s.source           = { :git => 'https://github.com/hungdv136/RxReduxRouter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'RxReduxRouter/**/*.swift'

  s.dependency 'RxRedux', '~> 0.1.0'
end

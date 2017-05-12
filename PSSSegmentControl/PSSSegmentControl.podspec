@version = "0.0.2"

Pod::Spec.new do |s|
  s.name          = "PSSSegmentControl"
  s.version       = @version
  s.summary       = "这是一个SegmentControl，多选按钮"
  s.description   = "PSSSegmentControl的用法非常的简单，接口文档注释很清晰"
  s.homepage      = "https://github.com/Pangshishan/PSSSegmentControl"
  s.license       = { :type => 'MIT', :file => 'LICENSE' }
  s.author        = { "Pangshishan" => "Pangshishan1@163.com" }
  s.ios.deployment_target   = '8.0'
  s.source        = { :git => "https://github.com/Pangshishan/PSSSegmentControl.git", :tag => "v#{s.version}" }
  s.source_files  = 'PSSSegmentControl/PSSSegmentControlSet/*.{h,m}'
  s.requires_arc  = true
  s.framework     = "UIKit"
end
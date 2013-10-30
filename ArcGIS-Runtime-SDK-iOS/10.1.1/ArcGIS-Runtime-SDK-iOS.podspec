Pod::Spec.new do |s|
  s.platform     	= :ios
  s.name         	= "ArcGIS-Runtime-SDK-iOS"
  s.version  	    = "10.1.1"
  s.summary			= "The SDK allows you to embed maps, spatial intelligence, and location analytics
						from Esri's GIS platform (ArcGIS) into your iOS apps."
  s.homepage		= "https://developers.arcgis.com/en/ios/"
  s.author       	= { 'Esri' => 'iOSDevelopmentTeam@esri.com' }
  s.source       	= { :http => "https://dl.dropboxusercontent.com/u/14805730/v10.1.1.zip" }
  s.source_files 	= 'v10.1.1/ArcGIS.framework/Headers/*.h'
  s.preserve_paths 	= 'v10.1.1/ArcGIS.framework'
  s.resource 		= "v10.1.1/ArcGIS.framework/Resources/ArcGIS.bundle"
  s.license      	= { :type => 'Commercial', :file => 'LICENSE.rtf' }
  s.libraries 		= %w{c++}
  s.frameworks		= %w{ArcGIS CoreGraphics CoreLocation Foundation MediaPlayer 
  						MobileCoreServices OpenGLES UIKit Security QuartzCore}  
  s.xcconfig 		= { 'OTHER_LDFLAGS' => '-ObjC' , 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/ArcGIS-Runtime-SDK-iOS/v10.1.1”’ }
end
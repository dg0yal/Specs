Pod::Spec.new do |s|
  s.platform     	= :ios
  s.name         	= "ArcGIS-Runtime-SDK-OSX"
  s.version  	    = "10.2"
  s.summary			= "The SDK allows you to embed maps, spatial intelligence, and location analytics
						from Esri's GIS platform (ArcGIS) into your Mac apps."
  s.homepage		= "https://developers.arcgis.com/en/os-x/"
  s.author       	= { 'Esri' => 'iOSDevelopmentTeam@esri.com' }
  s.source       	= { :http => "https://dl.dropboxusercontent.com/u/14805730/v10.2.zip" }
  s.source_files 	= 'v10.2/ArcGIS.framework/Headers/*.h'
  s.preserve_paths 	= 'v10.2/ArcGIS.framework'
  s.resource 		= "v10.2/ArcGIS.framework/Resources/ArcGIS.bundle"
  s.license      	= { :type => 'Commercial', :file => 'LICENSE.rtf' }
  s.libraries 		= %w{c++}
  s.frameworks		= %w{ArcGIS Foundation CoreLocation QuartzCore AppKit QTKit OpenGL Security}  
  s.xcconfig 		= { 'OTHER_LDFLAGS' => '-ObjC' , 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/ArcGIS-Runtime-SDK-OSX/v10.2"' }
end

end
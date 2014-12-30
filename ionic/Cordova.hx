package ionic;

import ng.Angular;

/**
 * ...
 * @author Richard Shi
 *
 */
@:initPackage
extern class Cordova
{
    private static function __init__() : Void untyped {
        #if embed_js
          haxe.macro.Compiler.includeFile("www/bower_components/ngCordova/dist/ng-cordova.min.js");
        #else
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ngCordova/dist/ng-cordova.min.js");
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ngCordova/dist/ng-cordova.js");
          ng.macro.InjectionBuilder.moduleDependency("ngCordova","bower_components/ngCordova/dist/ng-cordova",["angular"]);
        #end
		//add "ngCordova" to global module dependencies
		if (Angular.isUndefined(window.hxdeps))window.hxdeps = [];
		window.hxdeps.push("ngCordova");
    }
}

//@:native("$cordovaBarcodeScanner")
extern class NgCordovaBarcodeScanner{
	public function scan():NgPromise;
	public function encode(type:String, data:String):NgPromise;
}

@:native("cordova.plugins.barcodeScanner")
extern class BarcodeScanner{
	public static var Encode:{
		TEXT_TYPE: String,//"TEXT_TYPE"
        EMAIL_TYPE: String,//"EMAIL_TYPE"
		PHONE_TYPE: String,//"PHONE_TYPE"
		SMS_TYPE: String //"SMS_TYPE"
	};

	public static var format:{
		all_1D: Int,//61918
		aztec: Int,//1
		codabar: Int,//2
		code_128: Int,//16
		code_39: Int,//4
		code_93: Int,//8
		data_MATRIX: Int,//32
		ean_13: Int,//128
		ean_8: Int,//64
		itf: Int,//256
		maxicode: Int,//512
		msi: Int,//131072
		pdf_417: Int,//1024
		plessey: Int,//262144
		qr_CODE: Int,//2048
		rss_14: Int,//4096
		rss_EXPANDED: Int,//8192
		upc_A: Int,//16384
		upc_E: Int,//32768
		upc_EAN_EXTENSION: Int//65536
	};
}

//@:native("$cordovaCamera")
extern class NgCordovaCamera{
	public function getPicture(options:{
			quality:Int,//50
			destinationType:Int,//FILE_URI
			sourceType:Int,//CAMERA
			allowEdit:Bool,//Allow simple editing of image before selection
			encodingType:Int,//JPEG
			targetWidth:Int,
			targetHeight:Int,
			mediaType:Int, //Set the type of media to select from. Only works when PictureSourceType is PHOTOLIBRARY or SAVEDPHOTOALBUM.
			correctOrientation:Bool,
			saveToPhotoAlbum:Bool,
			popoverOptions:{x:Int,y:Int,width:Int,height:Int,arrowDir:Int},//iOS-only options that specify popover location in iPad
			cameraDirection:Int //Choose the camera to use (front- or back-facing). The default is BACK
		}):NgPromise;
	public function cleanup():NgPromise;
}

@:native("cordova.plugins.Camera")
extern class Camera{
	public static var DestinationType:{
	    DATA_URL : Int,      // 0,Return image as base64-encoded string
	    FILE_URI : Int,      // 1,Return image file URI
	    NATIVE_URI : Int     // 2,Return image native URI (e.g., assets-library:// on iOS or content:// on Android)
	};

	public static var PictureSourceType:{
	    PHOTOLIBRARY : Int, //0
	    CAMERA : Int, //1
	    SAVEDPHOTOALBUM : Int //2
	};

	public static var EncodingType:{
	    JPEG : Int,               //0,Return JPEG encoded image
	    PNG : Int                 //1,Return PNG encoded image
	};

	public static var MediaType:{
	    PICTURE: Int,    //0, allow selection of still pictures only. DEFAULT. Will return format specified via DestinationType
	    VIDEO: Int,      //1, allow selection of video only, WILL ALWAYS RETURN FILE_URI
	    ALLMEDIA : Int   //2, allow selection from all media types
	};

	public static var Direction:{
	    BACK : Int,      //0, Use the back-facing camera
	    FRONT : Int      //1, Use the front-facing camera
	};

	public static var PopoverArrowDirection:{
        ARROW_UP : Int,       	//1, matches iOS UIPopoverArrowDirection constants
        ARROW_DOWN : Int,		//2
        ARROW_LEFT : Int,		//4
        ARROW_RIGHT : Int,		//8
        ARROW_ANY : Int			//15
    };
}

//@:native("$cordovaContacts")
extern class NgCordovaContacts{
	public function save(contact:{}):NgPromise;
	public function remove(contact:{}):NgPromise;
	public function clone(contact:{}):NgPromise;
	public function find(options:{}):NgPromise;
}

//@:native("$cordovaDevice")
extern class NgCordovaDevice{
	public function getDevice():Device;
	public function getCordova():String;
	public function getModel():String;
	public function getPlatform():String;
	public function getUUID():String;
	public function getVersion():String;
}

@:native("cordova.plugins.Device")
extern class Device{
	public var cordova:String;
	public var model:String;
	public var platform:String;
	public var uuid:String;
	public var version:String;
}

//@:native("$cordovaDeviceMotion")
extern class NgCordovaDeviceMotion{
	public function getCurrentAcceleration():NgPromise;//successCallback
	public function watchAcceleration(options:{frequency:Int}):NgPromise;//notifyCallback
	public function clearWatch():Void;
}

typedef Acceleration = {
	x:Int, //Amount of acceleration on the x-axis. (in m/s^2) 
	y:Int, //Amount of acceleration on the y-axis. (in m/s^2) 
	z:Int, //Amount of acceleration on the z-axis. (in m/s^2) 
	timestamp:Int //Creation timestamp in milliseconds.
}

//@:native("$cordovaDeviceOrientation")
extern class NgCordovaDeviceOrientation{
	//public function getCurrentHeading():NgPromise;//successCallback
	public function watchHeading(options:{frequency:Int}):NgPromise;//notifyCallback
	//public function clearWatch():Void;
}

typedef CompassHeading = {
	magneticHeading:Int,//The heading in degrees from 0-359.99 at a single moment in time. 
	trueHeading:Int,//The heading relative to the geographic North Pole in degrees 0-359.99 at a single moment in time. A negative value indicates that the true heading can't be determined. 
	headingAccuracy:Int,//The deviation in degrees between the reported heading and the true heading.
	timestamp:Int //The time at which this heading was determined. (milliseconds)
}

//@:native("$cordovaDialogs")
extern class NgCordovaDialogs{
	public function alert(message:String, ?callback:Dynamic, ?title:String, ?buttonName:String):Void;
	public function confirm(message:String, ?callback:Dynamic, ?title:String, ?buttonName:String):Void;
	public function prompt(message:String, ?promptCallback:Dynamic, ?title:String, ?buttonLabels:Array<String>, ?defaultText:String):Void;
	public function beep(times:Int):Void;
}
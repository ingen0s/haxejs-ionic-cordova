package ionic;

import ng.Angular;
import ng.NgAnimate;
import ng.NgSanitize;
import ng.NgUiRouter;
//import ionic.Cordova;

//import ng.JQuery;
import js.html.Element;
/**
 * haxe extern for ionic framework
 * @author Richard Shi
 *
 * Out of the box, Ionic automatically removes the 300ms delay in order to make Ionic apps feel more "native" like. 
 * Resultingly, other solutions such as fastclick and Angular's ngTouch should not be included, to avoid conflicts.
 * In some cases, third-party libraries may also be working with touch events which can interfere with the tap system. 
 * For example, mapping libraries like Google or Leaflet Maps often implement a touch detection system which conflicts with Ionic's tap system.
 * To disable the tap for an element and all of its children elements, add the attribute data-tap-disabled="true".
 * <div data-tap-disabled="true">
 *   <div id="google-map"></div>
 * </div>
 */
@:initPackage
extern class Ionic {
    private static function __init__() : Void untyped {
        #if embed_js
          //Looks like there is a bug that they can not be embeded
          //haxe.macro.Compiler.includeFile("www/bower_components/ionic/js/ionic.js");
          //haxe.macro.Compiler.includeFile("www/bower_components/ionic/js/ionic-angular.js");
          ng.macro.InjectionBuilder.embedAlert("Can not embed ionic,please reference by script tag after other scripts: bower_components/ionic/js/ionic.min.js");
          ng.macro.InjectionBuilder.embedAlert("Can not embed ionic-angular,please reference by script tag after other scripts: bower_components/ionic/js/ionic-angular.min.js");
        #end

        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/js/ionic.min.js");
        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/js/ionic.js");
        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/js/ionic-angular.min.js");
        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/js/ionic-angular.js");

        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/css/ionic.min.css");
        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/css/ionic.css");

        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/fonts/ionicons.eot");
        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/fonts/ionicons.svg");
        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/fonts/ionicons.ttf");
        ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/fonts/ionicons.woff");

        ng.macro.InjectionBuilder.moduleDependency("ionic","bower_components/ionic/js/ionic");
        ng.macro.InjectionBuilder.moduleDependency("ionic-angular","bower_components/ionic/js/ionic-angular",["angular","ionic"]);

		//add "ionic" to global module dependencies
		if (Angular.isUndefined(window.hxdeps))window.hxdeps = [];
		window.hxdeps.push("ionic");
    }
}

//@:native("$ionicTabsDelegate")
abstract NgIonicTabsDelegate({}) from {}{
	public function select(index:Int,?shouldChangeHistory:Bool=false):Void untyped{
		this.select(index,shouldChangeHistory);
	}
	public function selectedIndex():Int untyped{
		return this.selectedIndex();
	}
	public function getByHandle(handle:String):NgIonicTabsDelegate untyped{
		return this["$getByHandle"](handle);
	}
}

//@:native("$ionicSideMenuDelegate")
abstract NgIonicSideMenuDelegate({}) from {}{
	public function toggleLeft(?isOpen:Bool):Void untyped{
		this.toggleLeft(isOpen);
	}
	public function toggleRight(?isOpen:Bool):Void untyped{
		this.toggleRight(isOpen);
	}
	public function getOpenRatio():Float untyped{
		return this.getOpenRatio();
	}
	public function isOpen():Bool untyped{
		return this.isOpen();
	}
	public function isOpenLeft():Bool untyped{
		return this.isOpenLeft();
	}
	public function isOpenRight():Bool untyped{
		return this.isOpenRight();
	}
	public function canDragContent(?canDrag:Bool):Bool untyped{
		return this.canDragContent(canDrag);
	}
	public function edgeDragThreshold(value:Int):Bool untyped{
		return this.edgeDragThreshold(value);
	}
	public function getByHandle(handle:String):NgIonicSideMenuDelegate untyped{
		return this["$getByHandle"](handle);
	}
}

//@:native("$ionicNavBarDelegate")
abstract NgIonicNavBarDelegate({}) from {}{
	public function back(?event):Void untyped{
		this.back(event);
	}
	public function align(?direction:String):Void untyped{
		this.align(direction);
	}
	public function showBackButton(?show:Bool):Bool untyped{
		return this.showBackButton(show);
	}
	public function showBar(?show:Bool):Bool untyped{
		return this.showBar(show);
	}
	public function setTilte(title:String):Void untyped{
		this.setTitle(title);
	}
	public function changeTilte(title:String,direction:String):Void untyped{
		this.changeTitle(title,direction);
	}
	public function getTitle():String untyped{
		return this.getTitle();
	}
	public function getPreviousTitle():String untyped{
		return this.getPreviousTitle();
	}
	public function getByHandle(handle:String):NgIonicNavBarDelegate untyped{
		return this["$getByHandle"](handle);
	}
}

//@:native("$ionicScrollDelegate")
abstract NgIonicScrollDelegate({}) from {}{
	public function resize():Void untyped{
		this.resize();
	}
	public function scrollTop(?shouldAnimate:Bool):Void untyped{
		this.scrollTop(shouldAnimate);
	}
	public function scrollBottom(?shouldAnimate:Bool):Void untyped{
		this.scrollBottom(shouldAnimate);
	}
	public function scrollTo(left:Int,top:Int,?shouldAnimate:Bool):Void untyped{
		this.scrollTo(left,top,shouldAnimate);
	}
	public function scrollBy(left:Int,top:Int,?shouldAnimate:Bool):Void untyped{
		this.scrollBy(left,top,shouldAnimate);
	}
	public function getScrollPosition():{left:Int,top:Int} untyped{
		return this.getScrollPosition();
	}
	public function anchorScroll(?shouldAnimate:Bool):Void untyped{
		this.anchorScroll(shouldAnimate);
	}
	public function rememberScrollPosition(id:String):Void untyped{
		this.rememberScrollPosition(id);
	}
	public function forgetScrollPosition():Void untyped{
		this.forgetScrollPosition();
	}
	public function scrollToRememberedPosition(?shouldAnimate:Bool):Void untyped{
		this.scrollToRememberedPosition(shouldAnimate);
	}
	public function getByHandle(handle:String):NgIonicScrollDelegate untyped{
		return this["$getByHandle"](handle);
	}
}

//@:native("$ionicListDelegate")
abstract NgIonicListDelegate({}) from {}{
	public function showReorder(?showReorder:Bool=false):Bool untyped{
		return this.showReorder(showReorder);
	}
	public function showDelete(?showDelete:Bool=false):Bool untyped{
		return this.showDelete(showDelete);
	}
	public function canSwipeItems(?canSwipe:Bool=false):Bool untyped{
		return this.canSwipeItems(canSwipe);
	}
	public function closeOptionButtons():Void untyped{
		this.closeOptionButtons();
	}
	public function getByHandle(handle:String):NgIonicListDelegate untyped{
		return this["$getByHandle"](handle);
	}
}

//@:native("$ionicSlideBoxDelegate")
abstract NgIonicSlideBoxDelegate({}) from {}{
	public function update():Void untyped{
		this.update();
	}
	public function slide(to:Int,?speed:Int):Void untyped{
		this.slide(to,speed);
	}
	public function enableSlide(?shouldEnable:Bool):Bool untyped{
		return this.enableSlide(shouldEnable);
	}
	public function previous():Void untyped{
		this.previous();
	}
	public function next():Void untyped{
		this.next();
	}
	public function stop():Void untyped{
		this.stop();
	}
	public function start():Void untyped{
		this.start();
	}
	public function currentIndex():Int untyped{
		return this.currentIndex();
	}
	public function slidesCount():Int untyped{
		return this.slidesCount();
	}
	public function getByHandle(handle:String):NgIonicSlideBoxDelegate untyped{
		return this["$getByHandle"](handle);
	}
}

//@:native("$ionicModal")
extern class NgIonicModal{
	public function fromTemplate(templateString:String, options:{scope:NgScope,animation:String,focusFirstInput:Bool,backdropClickToClose:Bool,hardwareBackButtonClose:Bool}):IonicModal;
	public function fromTemplateUrl(templateUrl:String, options:{scope:NgScope,animation:String,focusFirstInput:Bool,backdropClickToClose:Bool,hardwareBackButtonClose:Bool}):NgPromise;
}

extern class IonicModal{
	public function show():NgPromise;
	public function hide():NgPromise;
	public function remove():NgPromise;
	public function isShown():Bool;
}

//@:native("$ionicPopover")
extern class NgIonicPopover{
	public function fromTemplate(templateString:String, options:{scope:NgScope,focusFirstInput:Bool,backdropClickToClose:Bool,hardwareBackButtonClose:Bool}):IonicPopover;
	public function fromTemplateUrl(templateUrl:String, options:{scope:NgScope,focusFirstInput:Bool,backdropClickToClose:Bool,hardwareBackButtonClose:Bool}):NgPromise;
}

extern class IonicPopover{
	public function show(event:{}):NgPromise;
	public function hide():NgPromise;
	public function remove():NgPromise;
	public function isShown():Bool;
}

typedef HideSheet = Void->Void;

//@:native("$ionicActionSheet")
extern class NgIonicActionSheet{
	public function show(options:{
		buttons:Array<{}>,
		titleText:String,
		cancelText:String,
		destructiveText:String,
		cancel:Dynamic,
		buttonClicked:Dynamic,
		destructiveButtonClicked:Dynamic,
		cancelOnStateChange:Bool
		}):HideSheet;
}

//@:native("$ionicPopup")
extern class NgIonicPopup{
	public function show(options:{
		title:String,
		subTitle:String,
		template:String,
		templateUrl:String,
		scope:NgScope,
		buttons:Array<{}>}
		):NgPromise;

	public function alert(options:{
		title:String,
		subTitle:String,
		template:String,
		templateUrl:String,
		okText:String,
		okType:String}
		):NgPromise;

	public function confirm(options:{
		title:String,
		subTitle:String,
		template:String,
		templateUrl:String,
		cancelText:String,
		cancelType:String,
		okText:String,
		okType:String}
		):NgPromise;

	public function prompt(options:{
		title:String,
		subTitle:String,
		template:String,
		templateUrl:String,
		inputType:String,
		inputPlaceholder:String,
		cancelText:String,
		cancelType:String,
		okText:String,
		okType:String}
		):NgPromise;
}

//@:native("$ionicLoading")
//if options is ignore, it will use $ionicLoadingConfig constant which you can set up by module.constant()
extern class NgIonicLoading{
	public function show(?options:{
		template:String,
		templateUrl:String,
		noBackdrop:Bool,
		delay:Int,
		duration:Int
		}):Void;
	public function hide():Void;
}

typedef DeregisterBackButtonAction = Void->Void;
//@:native("$ionicPlatform")
extern class NgIonicPlatform{
	public function onHardwareBackButton(callback:Dynamic):Void;
	public function offHardwareBackButton(callback:Dynamic):Void;
	public function registerBackButtonAction(callback:Dynamic, priority:Int, ?actionId:String):DeregisterBackButtonAction;
	public function ready(?callback:Dynamic):NgPromise;
}

typedef IonicGesture = Dynamic;

//@:native("$ionicGesture")
extern class NgIonicGesture{
	/**
	* eventtype: hold, tap, doubletap, drag, dragstart, dragend, dragup, dragdown, 
	* dragleft, dragright, swipe, swipeup, swipedown, swipeleft, swiperight, 
	* transform, transformstart, transformend, rotate, pinch, pinchin, pinchout, touch, release
	*/
	public function on(eventType:String, callback:Dynamic, element:Element):IonicGesture;
	public function off(gesture:IonicGesture, eventType:String, callback:Dynamic):Void;
}

//@:native("$ionicBackdrop")
extern class NgIonicBackdrop{
	public function retain():Void;
	public function release():Void;
}

//@:native("$ionicPosition")
extern class NgIonicPosition{
	public function position(element:Element):{left:Int,top:Int,width:Int,height:Int};
	public function offset(element:Element):{left:Int,top:Int,width:Int,height:Int};
}

@:native("ionic.Platform")
extern class IonicPlatform{
	public function ready(callback:Dynamic):Void;
	public function setGrade(grade:String):Void;
	//public function device():Device;//cordova device object
	public function isWebView():Bool;
	public function isIPad():Bool;
	public function isIOS():Bool;
	public function isAndroid():Bool;
	public function isWindowsPhone():Bool;
	public function platform():String;
	public function version():String;
	public function exitApp():Void;
	public function showStatusBar(shouldShow:Bool):Void;
	public function fullScreen(?showFullScreen:Bool, ?showStatusBar:Bool):Void;

	public var isReady:Bool;
	public var isFullScreen:Bool;
	public var platforms:Array<String>;
	public var grade:String;
}
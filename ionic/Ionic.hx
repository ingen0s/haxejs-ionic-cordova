package ionic;
import ng.Angular;

/**
 * ...
 * @author Richard Shi
 */
@:initPackage
extern class Ionic {
{
    private static function __init__() : Void untyped {
        #if embed_js
          haxe.macro.Compiler.includeFile("www/bower_components/ionic/release/js/ionic.min.js");
          haxe.macro.Compiler.includeFile("www/bower_components/ionic/release/js/ionic-angular.min.js");
        #else
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/js/ionic.min.js");
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/js/ionic.js");
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/js/ionic-angular.min.js");
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/js/ionic-angular.js");

          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/css/ionic.min.css");
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/css/ionic.css");

          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/fonts/ionicons.eot");
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/fonts/ionicons.svg");
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/fonts/ionicons.ttf");
          ng.macro.InjectionBuilder.copyFile("www/bower_components/ionic/release/fonts/ionicons.woff");
        #end
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
	public function show(event):NgPromise;
	public function hide():NgPromise;
	public function remove():NgPromise;
	public function isShown():Bool;
}

typedef hideSheet = Void->Void;

//@:native("$ionicActionSheet")
extern class NgIonicActionSheet{
	public function show(options:{
		buttons:Array,
		titleText:String,
		cancelText:String,
		destructiveText:String,
		cancel:Dynamic,
		buttonClicked:Dynamic,
		destructiveButtonClicked:Dynamic,
		cancelOnStateChange:Bool
		}):hideSheet;
}

//next -- http://ionicframework.com/docs/api/service/$ionicPopup/
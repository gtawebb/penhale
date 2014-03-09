package {

import flash.display.Sprite;
import flash.events.ErrorEvent;
import flash.events.Event;
import flash.filesystem.File;
import flash.geom.Rectangle;
import flash.media.StageWebView;
import flash.text.TextField;

public class Penhale extends Sprite {
   private var webView:StageWebView = new StageWebView();


    public function Penhale() {
//        var textField:TextField = new TextField();
//        textField.text = "Hello, World";
//        addChild(textField);
       // stage.addEventListener(Event.RESIZE, StageWebViewExample);
        trace("starting")

        StageWebViewExample();

    }

    public function StageWebViewExample():void {
//        webView.stage = this.stage;
//        webView.viewPort = new Rectangle( 0, 0, stage.stageWidth, stage.stageHeight );
//
//
//        var fPath:String = new File(new File("app:/PenHale2/openlayers.html").nativePath).url;
//        webView.loadURL( fPath );
        trace("got event")

       // currentState = "normal";
        webView.stage = stage;

        webView.viewPort = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight );

        webView.addEventListener(ErrorEvent.ERROR, errorCatcher);
        var source:File = File.applicationDirectory.resolvePath("PenHale2") ;
        var destination:File = File.applicationStorageDirectory;
        source.copyTo(destination, true);

        var initialURL:String = "file://" + destination.resolvePath("openlayers.html").nativePath;

        webView.loadURL(initialURL);

//        var fPath:String = new File(new File("app:/PenHale2/openlayers.html").nativePath).url;
//
//       // var src:File = File.applicationDirectory.resolvePath("PenHale2/openlayers.html");
//       // var newPath:String = "file://" + src.nativePath;
//        webView.loadURL(fPath);
//       // webView.loadURL("http://www.google.com");
//        trace("loading map")

//        var src:File = File.applicationDirectory.resolvePath("PenHale2/openlayers.html");
//        var newPath:String = "file://" + src.nativePath;
//        webView.loadURL(newPath);


//        var source:File = File.applicationDirectory.resolvePath("PenHale2");//copy entire folder (with css)
//        var destination:File = File.applicationStorageDirectory;
//        source.copyTo(destination, true);//copy to the application storage
//////get path to the html page within copied folder
//        var resultsPageUrl:String = "file://" + destination.resolvePath("PenHale2/openlayers.html").nativePath;
//        webView.loadString( resultsPageUrl );

    }

    private function errorCatcher(event:ErrorEvent):void {
        trace("caught an errr: "+event)
    }
}
}

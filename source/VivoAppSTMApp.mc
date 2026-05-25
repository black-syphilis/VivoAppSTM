using Toybox.Application;
using Toybox.Lang;
using Toybox.WatchUi;

class VivoAppSTMApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    function onStart(state as Dictionary?) as Void {
    }

    function onStop(state as Dictionary?) as Void {
    }

    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new VivoAppSTMView() ];
    }
}

function getApp() as VivoAppSTMApp {
    return Application.getApp() as VivoAppSTMApp;
}

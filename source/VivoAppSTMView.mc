using Toybox.Graphics;
using Toybox.Lang;
using Toybox.Math;
using Toybox.System;
using Toybox.WatchUi;

class VivoAppSTMView extends WatchUi.View {

    var _randomMinutes as Number;

    function initialize() {
        View.initialize();
        _randomMinutes = 0;
    }

    function onShow() as Void {
        _randomMinutes = Math.rand() % 30;
    }

    function onUpdate(dc as Dc) as Void {
        var width = dc.getWidth();
        var height = dc.getHeight();

        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
        dc.clear();

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);

        dc.drawText(width / 2, height / 3, Graphics.FONT_SMALL, "VivoAppSTM", Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(width / 2, height / 2, Graphics.FONT_NUMBER_MEDIUM, _randomMinutes.format("%d") + " min", Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(width / 2, (height / 3) * 2, Graphics.FONT_XTINY, "Prochain bus (demo random)", Graphics.TEXT_JUSTIFY_CENTER);
    }
}

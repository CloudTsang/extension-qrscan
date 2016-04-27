package qrscan;

import flash.events.Event;


class QRScanDecodeEvent extends Event {
    public static inline var BARCODE_SCANNED = "scanned";
    public static inline var BARCODE_SCAN_CANCELLED = "cancelled";

    public var format(default, null) : String = null;
    public var data(default, null) : String = null;

    public function new(type:String, format:String, data:String) {
        super(type, true, true);

        this.format = format;
        this.data = data;
    }

	public override function clone() : Event {
		return new QRScanDecodeEvent(type, format, data);
	}
}

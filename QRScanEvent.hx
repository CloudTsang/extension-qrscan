package;

import flash.events.Event;


class QRScanEvent extends Event {
    public static inline var BARCODE_SCANNED = "scanned";
    public static inline var BARCODE_SCAN_CANCELLED = "cancelled";

    public var codeType(default, null) : String = null;
    public var codeValue(default, null) : String = null;

    public function new(type:String, ?codeType:String, ?codeValue:String) {
        super(type, true, true);

        this.codeType = codeType;
        this.codeValue = codeValue;
    }

	public override function clone() : Event {
		return new QRScanEvent(type, codeType, codeValue);
	}

	public override function toString() : String {
        var s = "[QRScanEvent type=" + type;
        if (type != BARCODE_SCAN_CANCELLED) {
            s += " codeType=" + codeType + " codeValue=" + codeValue;
        }
        s += "]";
        return s;
	}
}
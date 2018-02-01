package iterators;

class CharReversiveIterator {
	var str:String;
	var current:Int;

	public inline function new(str:String) {
		this.str = str;
		current = str.length;
	}

	public inline function hasNext():Bool {
		return current > 0;
	}

	public inline function next():String {
		--current;
		return str.charAt(current);
	}
}
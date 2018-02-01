package iterators;

using StringTools;

class CharCodeReversiveIterator {
	var str:String;
	var current:Int;

	public inline function new(str:String) {
		this.str = str;
		current = str.length;
	}

	public inline function hasNext():Bool {
		return current > 0;
	}

	public inline function next():Int {
		--current;
		return str.fastCodeAt(current);
	}
}
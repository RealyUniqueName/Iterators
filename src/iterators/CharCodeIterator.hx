package iterators;

using StringTools;

class CharCodeIterator {
	var str:String;
	var current:Int = -1;

	public inline function new(str:String) {
		this.str = str;
	}

	public inline function hasNext():Bool {
		return current + 1 < str.length;
	}

	public inline function next():Int {
		++current;
		return str.fastCodeAt(current);
	}
}
package iterators;

class CharIterator {
	var str:String;
	var current:Int = -1;

	public inline function new(str:String) {
		this.str = str;
	}

	public inline function hasNext():Bool {
		return current + 1 < str.length;
	}

	public inline function next():String {
		++current;
		return str.charAt(current);
	}
}
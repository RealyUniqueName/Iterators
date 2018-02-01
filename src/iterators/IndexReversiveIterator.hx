package iterators;

class IndexReversiveIterator {
	var current:Int;

	public inline function new(length:Int) {
		current = length;
	}

	public inline function hasNext():Bool {
		return current > 0;
	}

	public inline function next():Int {
		--current;
		return current;
	}
}
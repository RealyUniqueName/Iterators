package iterators;

class ValueReversiveIterator<V> {
	var array:Array<V>;
	var current:Int;

	public inline function new(array:Array<V>) {
		this.array = array;
		current = array.length;
	}

	public inline function hasNext():Bool {
		return current > 0;
	}

	public inline function next():V {
		--current;
		return array[current];
	}
}
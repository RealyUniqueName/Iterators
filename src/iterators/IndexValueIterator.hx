package iterators;

class IndexValueIterator<V> {
	var array:Array<V>;
	var current:Int = -1;

	public inline function new(array:Array<V>) {
		this.array = array;
	}

	public inline function hasNext():Bool {
		return current + 1 < array.length;
	}

	public inline function next():IndexValuePair<V> {
		++current;
		return new IndexValuePair<V>(current, array[current]);
	}
}

class IndexValuePair<V> {
	public var index (default,null):Int;
	public var value (default,null):V;

	public inline function new(index:Int, value:V) {
		this.index = index;
		this.value = value;
	}
}
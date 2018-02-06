package iterators;

import iterators.items.IndexValuePair;

class IndexValueReversiveIterator<V> {
	var array:Array<V>;
	var current:Int;

	public inline function new(array:Array<V>) {
		this.array = array;
		current = array.length;
	}

	public inline function hasNext():Bool {
		return current > 0;
	}

	public inline function next():IndexValuePair<V> {
		--current;
		return new IndexValuePair<V>(current, array[current]);
	}
}
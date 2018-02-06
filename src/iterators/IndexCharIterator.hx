package iterators;

import iterators.items.IndexCharPair;

class IndexCharIterator {
	var str:String;
	var current:Int = -1;

	public inline function new(str:String) {
		this.str = str;
	}

	public inline function hasNext():Bool {
		return current + 1 < str.length;
	}

	public inline function next():IndexCharPair {
		++current;
		return new IndexCharPair(current, str.charAt(current));
	}
}
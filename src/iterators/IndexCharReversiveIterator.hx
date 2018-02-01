package iterators;

import iterators.IndexCharIterator;

class IndexCharReversiveIterator {
	var str:String;
	var current:Int;

	public inline function new(str:String) {
		this.str = str;
		current = str.length;
	}

	public inline function hasNext():Bool {
		return current > 0;
	}

	public inline function next():IndexCharPair {
		--current;
		return new IndexCharPair(current, str.charAt(current));
	}
}
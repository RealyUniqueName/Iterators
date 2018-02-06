package iterators;

import haxe.DynamicAccess;
import iterators.items.KeyValuePair;

class KeyValueDynamicAccessIterator<V> {
	var obj:DynamicAccess<V>;
	var keys:Array<String>;
	var current:Int = -1;

	public inline function new(obj:DynamicAccess<V>) {
		this.obj = obj;
		this.keys = obj.keys();
	}

	public inline function hasNext():Bool {
		return current + 1 < keys.length;
	}

	public inline function next():KeyValuePair<String,Null<V>> {
		++current;
		var key = keys[current];
		return new KeyValuePair(key, obj.get(key));
	}
}
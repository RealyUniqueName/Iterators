package iterators;

import iterators.items.KeyValuePair;

class MapPairIterator<K,V> {
	var map:Map<K,V>;
	var keys:Iterator<K>;

	public inline function new(map:Map<K,V>) {
		this.map = map;
		this.keys = map.keys();
	}

	public inline function hasNext():Bool {
		return keys.hasNext();
	}

	public inline function next():KeyValuePair<K,Null<V>> {
		var key = keys.next();
		return new KeyValuePair(key, map.get(key));
	}
}
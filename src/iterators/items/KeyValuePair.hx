package iterators.items;

class KeyValuePair<K,V> {
	public var key (default,null):K;
	public var value (default,null):V;

	public inline function new(key:K, value:V) {
		this.key = key;
		this.value = value;
	}
}
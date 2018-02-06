package iterators.items;

class KeyValuePair<K,V> {
	public var key (default,null):K;
	public var value (default,null):Null<V>;

	public inline function new(key:K, value:Null<V>) {
		this.key = key;
		this.value = value;
	}
}
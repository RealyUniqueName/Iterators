package iterators.items;

class IndexValuePair<V> {
	public var index (default,null):Int;
	public var value (default,null):V;

	public inline function new(index:Int, value:V) {
		this.index = index;
		this.value = value;
	}
}
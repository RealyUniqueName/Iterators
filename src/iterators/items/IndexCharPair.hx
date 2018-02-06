package iterators.items;

class IndexCharPair {
	public var index (default,null):Int;
	public var char (default,null):String;

	public inline function new(index:Int, char:String) {
		this.index = index;
		this.char = char;
	}
}
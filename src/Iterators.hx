import iterators.*;

class MapIterators {
	/**
	 *  Map iterator which allows you to get key & value in one go without the need to check `map.get()` for `null` value.
	 *  ```
	 *  var m = [1 => 'hello'];
	 *  for(p in map.pairs()) {
	 *  	$type(p.value); // String
	 *  	$type(map.get(p.key)); // Null<String>
	 *  	trace(p.key); // 1
	 *  	trace(p.value); //
	 *  }
	 *  ```
	 */
	static public inline function pairs<K,V>(map:Map<K,V>) return new KeyValueIterator(map);
}

class ArrayIterators {
	/**
	 *  Array iterator which allows you to get index & value in one go.
	 *  ```
	 *  var a = ['hello'];
	 *  for(p in a.pairs()) {
	 *  	trace(p.index); // 0
	 *  	trace(p.value); // 'hello'
	 *  }
	 *  ```
	 */
	static public inline function pairs<V>(array:Array<V>) return new IndexValueIterator(array);
	/**
	 *  Array iterator which iterates from the end to the beginning of an array and allows you to get index & value in one go.
	 */
	static public inline function reversePairs<V>(array:Array<V>) return new IndexValueReversiveIterator(array);
	/**
	 *  Array iterator which iterates from the end to the beginning of an array.
	 */
	static public inline function reverseValues<V>(array:Array<V>) return new ValueReversiveIterator(array);
	/**
	 *  Array iterator which iterates over indices from the end to the beginning of an array.
	 */
	static public inline function reverseIndices<V>(array:Array<V>) return new IndexReversiveIterator(array.length);
}

class StringIterators {
	/**
	 *  String iterator which allows you to get index & character in one go.
	 *  ```
	 *  var str = 'hello';
	 *  for(p in str.pairs()) {
	 *  	trace(p.index);
	 *  	trace(p.char);
	 *  }
	 *  ```
	 */
	static public inline function pairs(str:String) return new IndexCharIterator(str);
	/**
	 *  String iterator which iterates from the end to the beginning of a string and allows you to get index & character in one go.
	 */
	static public inline function reversePairs(str:String) return new IndexCharReversiveIterator(str);
	/**
	 *  String iterator over characters.
	 *  ```
	 *  var str = 'hello';
	 *  for(c in str.chars()) {
	 *  	trace(c); // Sequentially prints: h, e, l, l, o
	 *  }
	 *  ```
	 */
	static public inline function chars(str:String) return new CharIterator(str);
	/**
	 *  String iterator over characters from the end to the beginnning of a string.
	 */
	static public inline function reverseChars(str:String) return new CharReversiveIterator(str);
	/**
	 *  String iterator over codes of characters.
	 *  ```
	 *  var str = 'hi';
	 *  for(c in str.charCodes()) {
	 *  	trace(c); // Sequentially prints: 104, 105
	 *  }
	 *  ```
	 */
	static public inline function charCodes(str:String) return new CharCodeIterator(str);
	/**
	 *  String iterator over codes of characters from the end to the beginnning of a string.
	 *  ```
	 *  var str = 'hi';
	 *  for(c in str.charCodes()) {
	 *  	trace(c); // Sequentially prints: 104, 105
	 *  }
	 *  ```
	 */
	static public inline function reverseCharCodes(str:String) return new CharCodeReversiveIterator(str);
}

class IntIterators {
	/**
	 *  Int iterator from `from` (including) to `to` (excluding).
	 *  ```
	 *  var value = 10;
	 *  for(i in value.to(13)) {
	 *  	trace(c); // Sequentially prints: 10, 11, 12
	 *  }
	 *  for(i in value.to(7)) {
	 *  	trace(c); // Sequentially prints: 10, 9, 8
	 *  }
	 *  for(i in value.to(15).step(2)) {
	 *  	trace(c); // Sequentially prints: 10, 12, 14
	 *  }
	 *  ```
	 */
	static inline public function to(from:Int, to:Int) return new IntIterator(from, to);
}

class AnonymousObjectIterators {
	/**
	 *  Object iterator which allows you to get field name & value in one go.
	 *  It is only guaranteed to work with anonymous objects.
	 *
	 *  @throws iterators.exceptions.IllegalValueException - if `object` is not an object.
	 *
	 *  ```
	 *  var obj:Any = Json.parse(data);
	 *  for(f in obj.fields()) {
	 *  	trace(f.name);
	 *  	trace(f.value);
	 *  }
	 *  ```
	 */
	static public inline function fields(object:Any) return new FieldValueIterator(object);
}
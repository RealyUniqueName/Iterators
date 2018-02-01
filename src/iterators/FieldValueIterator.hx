package iterators;

import iterators.exceptions.IllegalValueException;

class FieldValueIterator {
	var object:Any;
	var fields:Array<String>;
	var current:Int = -1;

	public inline function new(object:Any) {
		this.object = object;
		fields = Reflect.fields(object);
		if(fields == null) {
			throw new IllegalValueException('Provided value is not an object.');
		}
	}

	public inline function hasNext():Bool {
		return current + 1 < fields.length;
	}

	public inline function next():FieldValuePair {
		++current;
		var name = fields[current];
		return new FieldValuePair(name, Reflect.field(object, name));
	}
}

class FieldValuePair {
	public var name (default,null):String;
	public var value (default,null):Null<Any>;

	public inline function new(name:String, value:Null<Any>) {
		this.name = name;
		this.value = value;
	}
}
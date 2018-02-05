package iterators;

import iterators.exceptions.IllegalValueException;

class FloatIterator {
	var to:Float;
	var current:Float;
	var _step:Float = 0;

	public inline function new(from:Float, to:Float) {
		this.to = to;
		current = from;
		if(from != to) {
			_step = (from < to ? 1 : -1);
		}
	}

	public inline function step(value:Float):FloatIterator {
		if(hasNext() && (value == 0 || (_step < 0 && value > 0) || (_step > 0 && value < 0))) {
			throw new IllegalValueException('Infinite Float iterator. Cannot iterate from $current to $to with step $value.');
		}
		_step = value;
		return this;
	}

	public inline function hasNext():Bool {
		return (_step < 0 ? current > to : current < to);
	}

	public inline function next():Float {
		var value = current;
		current += _step;
		return value;
	}
}
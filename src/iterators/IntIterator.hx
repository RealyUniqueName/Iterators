package iterators;

import iterators.exceptions.IllegalValueException;

class IntIterator {
	var to:Int;
	var current:Int;
	var _step:Int = 0;

	public inline function new(from:Int, to:Int) {
		this.to = to;
		current = from;
		if(from != to) {
			_step = (from < to ? 1 : -1);
		}
	}

	public inline function step(value:Int):IntIterator {
		if(hasNext() && (value == 0 || (_step < 0 && value > 0) || (_step > 0 && value < 0))) {
			throw new IllegalValueException('Infinite Int iterator. Cannot iterate from $current to $to with step $value.');
		}
		_step = value;
		return this;
	}

	public inline function hasNext():Bool {
		return (_step < 0 ? current > to : current < to);
	}

	public inline function next():Int {
		var value = current;
		current += _step;
		return value;
	}
}
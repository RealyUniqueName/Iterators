package cases;

import iterators.exceptions.IllegalValueException;
import utest.Assert;

using Iterators;

class TestFloat extends BaseCase {
	public function testFloatTo_up() {
		var values = [];
		for(i in 10.5.floatTo(12)) {
			values.push(i);
		}

		Assert.same([10.5, 11.5], values);
	}

	public function testFloatTo_up_step() {
		var values = [];
		for(i in 10.5.floatTo(15).step(1.5)) {
			values.push(i);
		}

		Assert.same([10.5, 12, 13.5], values);
	}

	public function testFloatTo_up_invalidStep() {
		Assert.raises(function() 10.5.floatTo(15).step(-2), IllegalValueException);
	}

	public function testFloatTo_down() {
		var values = [];
		for(i in 10.5.floatTo(7)) {
			values.push(i);
		}

		Assert.same([10.5, 9.5, 8.5, 7.5], values);
	}

	public function testFloatTo_down_step() {
		var values = [];
		for(i in 10.5.floatTo(5).step(-2.5)) {
			values.push(i);
		}

		Assert.same([10.5, 8, 5.5], values);
	}

	public function testFloatTo_down_invalidStep() {
		Assert.raises(function() 10.5.floatTo(5).step(2), IllegalValueException);
	}

	public function testFloatTo_invalidStep_zero() {
		Assert.raises(function() 10.5.floatTo(5).step(0), IllegalValueException);
		Assert.raises(function() 10.5.floatTo(15).step(0), IllegalValueException);
	}

	public function testFloatTo_noNext_anyStep() {
		var values = [];
		for(i in 10.5.floatTo(10.5).step(0)) values.push(i);
		for(i in 10.5.floatTo(10.5).step(-2)) values.push(i);
		for(i in 10.5.floatTo(10.5).step(2)) values.push(i);

		Assert.equals(0, values.length);
	}
}
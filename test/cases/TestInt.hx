package cases;

import iterators.exceptions.IllegalValueException;
import utest.Assert;

using Iterators;

class TestInt extends BaseCase {
	public function testTo_up() {
		var values = [];
		for(i in 10.to(13)) {
			values.push(i);
		}

		Assert.same([10, 11, 12], values);
	}

	public function testTo_up_step() {
		var values = [];
		for(i in 10.to(15).step(2)) {
			values.push(i);
		}

		Assert.same([10, 12, 14], values);
	}

	public function testTo_up_invalidStep() {
		Assert.raises(function() 10.to(15).step(-2), IllegalValueException);
	}

	public function testTo_down() {
		var values = [];
		for(i in 10.to(7)) {
			values.push(i);
		}

		Assert.same([10, 9, 8], values);
	}

	public function testTo_down_step() {
		var values = [];
		for(i in 10.to(5).step(-2)) {
			values.push(i);
		}

		Assert.same([10, 8, 6], values);
	}

	public function testTo_down_invalidStep() {
		Assert.raises(function() 10.to(5).step(2), IllegalValueException);
	}

	public function testTo_invalidStep_zero() {
		Assert.raises(function() 10.to(5).step(0), IllegalValueException);
		Assert.raises(function() 10.to(15).step(0), IllegalValueException);
	}

	public function testTo_noNext_anyStep() {
		var values = [];
		for(i in 10.to(10).step(0)) values.push(i);
		for(i in 10.to(10).step(-2)) values.push(i);
		for(i in 10.to(10).step(2)) values.push(i);

		Assert.equals(0, values.length);
	}
}
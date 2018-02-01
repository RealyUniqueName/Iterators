package cases;

import utest.Assert;

using Iterators;

class TestArray extends BaseCase {
	public function testPairs() {
		var a = ['hello', 'world'];

		var indices = [];
		var values = [];
		for(p in a.pairs()) {
			indices.push(p.index);
			values.push(p.value);
		}

		Assert.same([0, 1], indices);
		Assert.same(['hello', 'world'], values);
	}

	public function testReversePairs() {
		var a = ['hello', 'world'];

		var indices = [];
		var values = [];
		for(p in a.reversePairs()) {
			indices.push(p.index);
			values.push(p.value);
		}

		Assert.same([1, 0], indices);
		Assert.same(['world', 'hello'], values);
	}

	public function testReverseValues() {
		var a = ['hello', 'world'];

		var values = [];
		for(value in a.reverseValues()) {
			values.push(value);
		}

		Assert.same(['world', 'hello'], values);
	}

	public function testReverseIndices() {
		var a = ['hello', 'world'];

		var indices = [];
		for(index in a.reverseIndices()) {
			indices.push(index);
		}

		Assert.same([1, 0], indices);
	}
}
package cases;

import utest.Assert;

using Iterators;

class TestString extends BaseCase {
	public function testPairs() {
		var str = 'hi';

		var indexes = [];
		var chars = [];
		for(p in str.pairs()) {
			indexes.push(p.index);
			chars.push(p.char);
		}

		Assert.same([0, 1], indexes);
		Assert.same(['h', 'i'], chars);
	}

	public function testReversePairs() {
		var str = 'hi';

		var indexes = [];
		var chars = [];
		for(p in str.reversePairs()) {
			indexes.push(p.index);
			chars.push(p.char);
		}

		Assert.same([1, 0], indexes);
		Assert.same(['i', 'h'], chars);
	}

	public function testChars() {
		var str = 'hi';

		var chars = [];
		for(c in str.chars()) {
			chars.push(c);
		}

		Assert.same(['h', 'i'], chars);
	}

	public function testReverseChars() {
		var str = 'hi';

		var chars = [];
		for(c in str.reverseChars()) {
			chars.push(c);
		}

		Assert.same(['i', 'h'], chars);
	}

	public function testCharCodes() {
		var str = 'hi';

		var codes = [];
		for(c in str.charCodes()) {
			codes.push(c);
		}

		Assert.same([104, 105], codes);
	}

	public function testReverseCharCodes() {
		var str = 'hi';

		var codes = [];
		for(c in str.reverseCharCodes()) {
			codes.push(c);
		}

		Assert.same([105, 104], codes);
	}
}
package cases;

import utest.Assert;
import haxe.ds.IntMap;

using Iterators;

class TestMap extends BaseCase {
	public function testPairs_map() {
		var m = [1 => 'hello', 2 => 'world'];

		var keys = [];
		var values = [];
		for(p in m.pairs()) {
			keys.push(p.key);
			values.push(p.value);
		}

		Assert.same([1, 2], keys);
		Assert.same(['hello', 'world'], values);
	}

	public function testPairs_mapImplementations() {
		var m:IntMap<String> = [1 => 'hello', 2 => 'world'];

		var keys = [];
		var values = [];
		for(p in m.pairs()) {
			keys.push(p.key);
			values.push(p.value);
		}

		Assert.same([1, 2], keys);
		Assert.same(['hello', 'world'], values);
	}
}
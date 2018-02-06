package cases;

import utest.Assert;
import haxe.DynamicAccess;

using Iterators;

class TestDynamicAccess extends BaseCase {
	public function testPairs_map() {
		var obj:DynamicAccess<Int> = {hello:1, world:2};

		var keys = [];
		var values = [];
		for(p in obj.pairs()) {
			keys.push(p.key);
			values.push(p.value);
		}
		keys.sort(Reflect.compare);
		values.sort(Reflect.compare);

		Assert.same(['hello', 'world'], keys);
		Assert.same([1, 2], values);
	}
}
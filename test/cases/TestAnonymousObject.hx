package cases;

import utest.Assert;
import haxe.DynamicAccess;

using Iterators;

class TestAnonymousObject extends BaseCase {
	public function testFields_any() {
		var obj:Any = {hello:"world"};

		var fields = [];
		var values = [];
		for(f in obj.fields()) {
			fields.push(f.name);
			values.push(f.value);
		}

		Assert.same(['hello'], fields);
		Assert.same(['world'], values);
	}

	public function testFields_dynamicAccess() {
		var obj:DynamicAccess<String> = {hello:"world"};

		var fields = [];
		var values = [];
		for(f in obj.fields()) {
			fields.push(f.name);
			values.push(f.value);
		}

		Assert.same(['hello'], fields);
		Assert.same(['world'], values);
	}

	public function testFields_anon() {
		var obj = {hello:"world"};

		var fields = [];
		var values = [];
		for(f in obj.fields()) {
			fields.push(f.name);
			values.push(f.value);
		}

		Assert.same(['hello'], fields);
		Assert.same(['world'], values);
	}
}
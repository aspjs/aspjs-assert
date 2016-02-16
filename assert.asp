<%

var util = require('util');

module.exports = {
	equal: function equal(a, b, message) {
		if (a != b) {
			var err = new Error(message ? message : (util.inspect(a) +' == '+ util.inspect(b)));
			err.stack = Error.captureStackTrace();
			throw err;
		};
	},
	ok: function ok(a, message) {
		if (!a) {
			var err = new Error(message ? message : (!!a +' == true'));
			err.stack = Error.captureStackTrace();
			throw err;
		};
	},
	strictEqual: function strictEqual(a, b, message) {
		if (a !== b) {
			var err = new Error(message ? message : (util.inspect(a) +' == '+ util.inspect(b)));
			err.stack = Error.captureStackTrace();
			throw err;
		};
	}
};

%>

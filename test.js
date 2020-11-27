var assert = require('assert')

function test() {
  assert.equal(10 + 10, 20);
}

if (module == require.main) require('test').run(test);
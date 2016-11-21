import { test } from 'qunit';
import moduleForAcceptance from 'revised/tests/helpers/module-for-acceptance';

moduleForAcceptance('Acceptance | list titles');

test('visiting /titles', function(assert) {
  visit('/titles');

  andThen(function() {
    assert.equal(currentURL(), '/titles');
  });
});

test('should list books.', function (assert) {
  visit('/titles');
  andThen(function () {
    assert.equal(find('.titles-entry').length, 3, 'should see 3 books');
  });
});

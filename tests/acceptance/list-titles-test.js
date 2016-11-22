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
  let titles = server.createList('book', 3);

  visit('/titles');

  andThen(function () {
    assert.equal(find('.titles-entry').length, 3, 'should see 3 books');
    assert.equal(find('.titles-entry:first').text(), titles[0].title);
  });
});

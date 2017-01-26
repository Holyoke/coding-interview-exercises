const segregate = require('../lib/main')

describe('sort 0s and 1s', () => {
  it('does sample cases', () => {
    expect(
      segregate([0, 1, 0, 1, 0, 0, 1, 1, 1, 0])
    ).toEqual([0, 0, 0, 0, 0, 1, 1, 1, 1, 1])
  })
})

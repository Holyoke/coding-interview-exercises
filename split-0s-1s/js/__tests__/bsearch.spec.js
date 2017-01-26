const binarySearch = require('../lib/binarySearch')

describe('binary Search', () => {
  it('does sample cases', () => {
    expect(binarySearch(4, [1, 4, 5, 3, 2])).toBe(1)
    expect(binarySearch(4, [2, 2, 4, 3])).toBe(2)
    expect(binarySearch(3, [1, 4, 5, 3, 2])).toBe(3)
  })
})

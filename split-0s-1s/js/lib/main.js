const segregate = (arr) => {
  let left = 0
  let right = arr.length - 1

  while (left < right) {
    if (arr[left] === 0) {
      left += 1
    }
    if (arr[right] === 1) {
      right -= 1
    }
    if (left < right) {
      let tmp = arr[left]
      arr[left] = arr[right]
      arr[right] = tmp
    }
  }
  return arr
}

module.exports = segregate

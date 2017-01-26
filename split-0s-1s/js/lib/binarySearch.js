module.exports = (target, arr = arr.sort()) => {
  let lo = 0
  let hi = arr.length - 1
  let guess
  console.log(arr)
  while (lo <= hi) {
    let guessIdx = Math.floor((lo + hi) / 2)
    guess = arr[guessIdx]
    if (guess === target) {
      return guessIdx
    } else {
      if (guess < target) {
        lo = guessIdx + 1
      } else {
        hi = guessIdx - 1
      }
    }
  }

  return -1
}

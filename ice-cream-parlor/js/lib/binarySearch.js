module.exports = (target, arr) => {
  let lo = 0
  let hi = arr.length - 1
  let guess

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

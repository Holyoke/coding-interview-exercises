module.exports = (totalMoney, costs) => {
  let map = {}

  //build map
  costs.forEach((cost, idx) => {
    map[cost] = idx + 1
  })

  // look for complimentary cost
  costs.forEach((cost) => {
    let targetCost = totalMoney - cost
    debugger;
    if (map[targetCost]) {
      return `${map[cost]} ${map[targetCost]}`
    }
  })

  return -1
}

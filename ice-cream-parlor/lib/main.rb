def find_flavors(total_money, costs)
  cost_map = costs.each_with_index.inject(Hash.new) { |sum, (i,j)| sum[i] = j + 1; sum }

  costs.each_with_index do |cost, idx|
    complement_cost = total_money - cost
    return "#{idx + 1 } #{cost_map[complement_cost]}" if cost_map[complement_cost]
  end

  false
end

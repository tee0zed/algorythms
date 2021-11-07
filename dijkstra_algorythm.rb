def dijkstra_algorythm(dag)
  costs = dag[:start]
  processed = []
  parents = {}

  while (nodes_keys = costs.keys - processed).any?
    lowest_cost_node = costs.slice(*nodes_keys).min_by { |k, v| v }

    neighbors = dag[lowest_cost_node.first]

    neighbors.each do |k, v|
      new_cost = lowest_cost_node.last + v

      if costs[k].nil? || costs[k] > new_cost
        parents[lowest_cost_node.first] = [k, v]
        costs[k] = new_cost 
      end
    end

    processed << lowest_cost_node.first	
  end

  [costs, parents] 
end

dag = {
	start: { a: 5, b: 2 },
	a:     { c: 4, d: 2 },
	b:     { a: 8, d: 7 },
	c:     { end: 3, d: 6},
	d:     { end: 1 },
	end:   {}
}

puts dijkstra_algorythm(dag)
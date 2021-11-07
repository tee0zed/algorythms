def correct_item?(item)
  item == :michael
end

def bfs(graph)
  queue = [graph.keys[0]]
  searched = []

  until queue.empty? do
    item = queue.shift

    unless searched.include?(item)
      if correct_item?(item)
        return item
      else
        queue += graph[item]
      end
    end
  end
  return nil
end

graph = { 
  bob:     [:claire, :nancy, :carl], 
  michael: [:anna, :lisa, :bob], 
  nancy:   [:josh, :michael],
  carl:    [:peggy, :anna],
  claire:  [:josh, :tom], 
  tom:     [],
  josh:    [], 
  lisa:    []
}


if bfs(graph) == :michael
  puts 'Ok'
else
  puts 'Fail'
end 

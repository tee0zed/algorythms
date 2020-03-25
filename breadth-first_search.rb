def bfs(graph)
  queue = [graph.keys[0]]
  searched = []

  until queue.empty? do
    item = queue.shift

    unless searched.include?(item)
      if item[0] == 'm'
        return item
      else
        queue += graph[item]
      end
    end
  end
  return nil
end


graph = {'bob' => ['claire', 'nancy', 'carl'], 'tom' => [],
  'claire' => ['josh', 'tom'], 'josh' => [], 'nancy' => ['josh', 'michael'],
  'michael' => ['anna', 'lisa', 'bob'], 'carl' => ['peggy', 'anna'], 'lisa' => []}


puts bfs(graph)

def directors_totals(nds)
  result = {}
  dir_index = 0

  while dir_index < nds.length do
    result[nds[dir_index][:name]] = gross_for_director(nds, dir_index)
    dir_index += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(nds, dir_index)
  mov_index = 0
  total_profit = 0
  while mov_index < nds[dir_index][:movies].count do
    total_profit += nds[dir_index][:movies][mov_index][:worldwide_gross]
    mov_index += 1
  end
  total_profit
end
def bubble_sort(list)
  list.each_index do |index|
    (list.size - 1).downto(index) do |i|
      list[i], list[i - 1] = list[i - 1], list[i] if list[i - 1] < list[i]
    end
  end
end

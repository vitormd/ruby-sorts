def quick_sort(list)
  return list if list.size < 2

  pivot = list.sample
  groups = list.group_by { |x| x <=> pivot }
  groups.default = []
  quick_sort(groups[-1]) + groups[0] + quick_sort(groups[1])
end

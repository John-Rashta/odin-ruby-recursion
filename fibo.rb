def fibs(num)
  if num.zero?
    return []
  elsif num == 1
    return [0]
  end

  full_sequence = [0, 1]

  (num - 2).times do
    full_sequence.push(full_sequence[-1] + full_sequence[-2])
  end

  full_sequence
end

def fibs_rec(num)
  if num.zero?
    return []
  elsif num == 1
    return [0]
  elsif num == 2
    return [0, 1]
  end

  temp_arr = fibs_rec(num - 1)
  temp_arr.push(temp_arr[-1] + temp_arr[-2])
end

p fibs_rec(8)

def fibs(length)
  fib_seq = []
  iteration = 0
  fib_seq << 0 if iteration.zero?
  until iteration == length - 1
    iteration += 1
    if iteration == 1
      fib_seq << 1
      next
    end
    current_num = fib_seq[iteration - 1] + fib_seq[iteration - 2]
    fib_seq << current_num
  end
  print fib_seq
end

def fibs_rec(length)
  if length - 1 <= 0
    return [0]
  elsif length - 1 == 1
    return [0, 1]
  end

  (fibs_rec(length - 1) << (fibs_rec(length - 1)[-1] + fibs_rec(length - 1)[-2]))
end

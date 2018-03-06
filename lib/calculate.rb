class Calculate
  include ActiveModel::Validations

  def calc_fibonacci(n)
    return fibonacci(n.to_i, nil)
  end

  def sequence_fibonacci(n)
    return fibonacci(n.to_i, [])
  end

  def is_prime(n)
    for d in 2..(n - 1)
      if (n % d) == 0
        return false
      end
    end
    return true
  end

  def factorial(n)
    if n.to_i <= 1
      return 1
    else
      return n * factorial(n-1)
    end
  end

  private
    def fibonacci(n, sequence = nil)
      if(sequence != nil)
        sequence.push(n)
        return sequence if (0..1).include? n
      end
      return n if (0..1).include? n
        ( fibonacci(n - 1, sequence) + fibonacci(n - 2, sequence) )
    end

end
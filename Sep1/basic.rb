#Guy Payne and Noah Kaplan
#returns even or odd from a given int
def even_or_odd(n)
    if n % 2 == 0
        return "even"
    else
        return "odd"
    end
end

#method finds minimum value in an array
def min(x)
  minimum = x[0]    
  x.each do |num|
    if num < minimum
      minimum = num
    end
  end
  return minimum    
end

#max method finds max of an array
def max(n)
    max = n[0]
    n.each do |num| 
        if num > max
            max = num
        end
    end
    return max
end

def calculate(s)
    #splitting the array using regular expressions
    array = s.split(/(.*?)(\d+) (.*?)(\d+)/)
    #if the word "gains" is in the string
    if s.match "gains"
      sum = array[2].to_i + array[4].to_i
    #if the word "loses" is in the string  
    elsif s.match "loses"  
      sum = array[2].to_i - array[4].to_i
    end
    #returning the sentence
    "The #{array[1]} #{sum} pieces of fruit"
end

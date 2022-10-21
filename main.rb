


class Bagage
  def colvoVechey
    return @colvoVechey
  end

  def weightOfAll
    return @weightOfAll
  end

  def initialize(n, n1)
    puts "Багаж создан"
    @colvoVechey = n
    @weightOfAll = n1
  end

  def findSredneyVes()
    return @weightOfAll/@colvoVechey
  end


end

bagage = Bagage.new(1,80.8)
bagage2 = Bagage.new(9,0.8)
bagage3 = Bagage.new(9,0.11)
bagage4 = Bagage.new(2,0.8)
bagage5 = Bagage.new(34,0.2)


def taskOne(bags)
  sum = 0
  for  el in bags do
    sum = sum + el.findSredneyVes
  end
  for el in bags
    if el.findSredneyVes - sum >= -0.3
      puts "Yes"
      puts el.findSredneyVes
      puts sum
      return
    end
  end
  puts sum
  puts "NO one"
end


def taskTwo(bags)

  countZero =0
  countOne = 0
  countTwo = 0
  sredColvo = 0
  for el in bags
    sredColvo = sredColvo + el.colvoVechey
    countZero+=1
  end
  sredColvo = sredColvo / countZero

  for el in bags
    if el.colvoVechey == 2
      countOne+=1
    end
    if el.colvoVechey > sredColvo
      countTwo+=1
    end
  end

  print "Colvo pas s 2 : "
  puts countOne

  print "Colvo pas s > sred : "
  puts countTwo
end

def taskThree(bags)
  count = 0
  for el in bags
    for el2 in bags
      if el2.colvoVechey == el.colvoVechey && el2 != el
        if el.weightOfAll - el2.weightOfAll > -0.5 || el2.weightOfAll - el.weightOfAll > -0.5

            count+=1
        end
    end
    end
    end
  puts count
end

def taskFour(bags)
  count = 0
  for el in bags
    for el2 in bags
      if el.colvoVechey < el2.colvoVechey && el2 != el
        count+=1
      end
      if el.weightOfAll < el2.weightOfAll && el2 != el
        count +=1
      end
    end
    if count == 0
      puts "Yes"
      return
    end
  end
  puts "NO"
end


def taskFive(bags)
  for el in bags
    if el.colvoVechey == 1
      if el.weightOfAll >= 30
        puts "Yes"
        return
      end
    end
  end
  puts " NO"
end

puts bagage.colvoVechey
puts bagage.weightOfAll
bags = Array.new
bags[0] =  bagage
bags[1] =  bagage2
bags[2] =  bagage3
bags[3] =  bagage4
bags[4] =  bagage5

puts "Task One"
taskOne(bags)
puts "Task Two"
taskTwo(bags)
puts "Task Three"
taskThree(bags)
puts "Task Four"
taskFour(bags)
puts "Task Five"
taskFive(bags)
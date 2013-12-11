Class Integer
  VALUES = {5 => "Eagle", 12 => "Alpha"}
  def print(*args)
    found = []
    VALUES.each_pair do |k,v|
      found << v if self.is_multiple?(k)
    end
    found.length >0 ? found.join(" ") : self.to_s 
  end
  
  def is_multiple?(othernum)
    self % othernum == 0
  end

end

p (1..84).map(&:print)

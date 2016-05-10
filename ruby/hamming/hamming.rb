class Hamming

  def self.compute(strand1, strand2)
    counter = 0                                   # => 0
    strand1.chars.each_with_index do |letter, i|  # => ["A", "S", "D", "F", "G", "H"]
        if strand1.length != strand2.length
          raise (ArgumentError)
        end
        if strand1.chars[i] != strand2.chars[i]   # => false, false, false, false, false, false
          counter += 1
        end                                       # => nil, nil, nil, nil, nil, nil
      end                                         # => ["A", "S", "D", "F", "G", "H"]
    counter                                       # => 0
  end                                             # => :compute
end                                               # => :compute

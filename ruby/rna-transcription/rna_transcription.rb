class Complement

  def self.of_dna(strand)
    if strand.include? 'U'
      raise ArgumentError
    else
      strand.gsub(/[CGAT]/, 'C' => 'G', 'G' => 'C', 'A' => 'U', 'T' => 'A')
    end
  end

  def self.of_rna(strand)
    if strand.include? 'T'
      raise ArgumentError
    else
    strand.gsub(/[CGUA]/, 'C' => 'G', 'G' => 'C', 'U' => 'A', 'A' => 'T')
    end
  end
end

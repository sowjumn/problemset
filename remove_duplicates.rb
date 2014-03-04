class RemoveDuplicates
  attr_reader :dup_list

  def initialize(dup_list)
    @dup_list = dup_list
  end

  def perform
    h = Hash.new
    dup_list.each do |e|
      if !h[e] 
        h[e] = 1
      end
    end
    h.keys
  end
end
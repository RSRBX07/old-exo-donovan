class Counter
  attr_reader :count_value
  
  def initialize
    @count_value = value || 0
  end

  def add_one 
    new_val = @count_value + 1
    File.open "counter.txt", "w" do |counter_file|
      counter_file.write new_val
    end
  end

  def value
    if File.exist? "counter.txt" 
      File.open "counter.txt", "r" do |counter_file|
        counter_file.each_line do |line| 
          line.to_i
        end
      end
    else
      File.open "counter.txt", "w" do |counter_file| 
        counter_file.write(@count_value)
        value
      end 
    end
  end
end

counter = Counter.new

puts counter.count_value 
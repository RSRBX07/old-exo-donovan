class Counter
  attr_reader :count_value
  attr_reader :filename
  
  def initialize
    @@filename ||= "counter.txt"
    @count_value = value || 0
    add_one
  end

  def path
    dirname = File.join(File.dirname(__FILE__), '/tmp/')
    return (dirname + @@filename).to_s
  end

  def add_one 
    new_val = @count_value + 1
    File.open path,"w" do |counter_file|
      counter_file.write new_val
    end
  end

  def value
    if !File.exist? path
    File.new(path, "w+") 
    File.open(path,"w") {|newFile| newFile.puts "0"} 
    end
    File.open path do |counter_file|
      counter_file.each_line {|line| return line.to_i}
    end
  end

  def delete_file
    File.delete path
    puts "le fichier #{@@filename} a été supprimé"
  end
end


counter = Counter.new
puts counter.count_value
counter.delete_file if rand(0..100).to_i < 10
class Counter
  attr_reader :count_value
  attr_reader :filename
  
  def initialize
    load_counter if File.exist? path
    @@filename ||= "counter.yaml"
    @count_value = value || 0
    save_counter
  end

  def path
    dirname = File.join(File.dirname(__FILE__), '/tmp/')
    return (dirname + @@filename).to_s
  end

  def self.save_counter
    File.open(path, 'w') {|file| file.write self.to_yaml }
  end

  def self.load_counter
    YAML::load path
  end

  def delete_file
    File.delete path
    puts "le fichier #{@@filename} a été supprimé"
  end
end


counter = Counter.new
puts counter.count_value
counter.delete_file if rand(0..100).to_i < 10
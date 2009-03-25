# Install hook code here


puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Running Script ~~~~~~~~~~~~~~~~~~~~~~~~~~~~"


Dir.chdir(Dir.getwd.sub(/vendor.*/, '')) do

def copy_files(source_path, destination_path, directory)
  source = File.join(directory, source_path)
  destination = File.join(Rails.root, destination_path)
  FileUtils.mkdir(destination) unless File.exist?(destination)
  FileUtils.cp_r(Dir.glob("#{source}/*"), destination)
end

directory = File.dirname(__FILE__)

copy_files("/skeleton", "../", directory)

end

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Script Complete ~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

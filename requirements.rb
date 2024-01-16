# requirements.rb

# Parse the Gemfile.lock and extract gems and versions
def parse_gemfile_lock
  gemfile_lock = 'Gemfile.lock'
  gems = {}

  if File.exist?(gemfile_lock)
    in_gems_section = false

    File.readlines(gemfile_lock).each do |line|
      if line.strip == 'GEM'
        in_gems_section = true
      elsif line.strip.empty?
        in_gems_section = false
      end

      if in_gems_section && line.include?('(') && line.include?(')')
        gem_name, gem_version = line.strip.split(' ')
        gem_version.gsub!('(', '').gsub!(')', '')
        gems[gem_name] = gem_version
      end
    end
  else
    puts "Gemfile.lock not found"
  end

  gems
end

# Write gems to requirements.txt
def write_requirements(gems)
  File.open('requirements.txt', 'w') do |file|
    gems.each { |name, version| file.puts "#{name}:#{version}" }
  end
end

gems = parse_gemfile_lock
write_requirements(gems)
puts "requirements.txt created successfully."

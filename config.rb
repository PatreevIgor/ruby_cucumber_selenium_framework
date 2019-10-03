Before do |scenario|
  puts 'Before block'
  # $browser ||= Core::Browser.new(ENV['BROWSER'] && ENV['BROWSER'].to_sym || :chrome)
end

After do |scenario|
  puts 'After block'
end

#! bin/ruby

require 'nokogiri'

puts " ----------------------- start ----------------------- "
# file = Flie.open("git.html", "r") { |io| puts io  }
# doc = File.open("git.html") { |f| puts Nokogiri::HTML(f) }

 li_results = [
    # {element:'code', result: ""},
    {element:'li', result: "-"}
]



file = File.foreach("md.html") { |e|
  # puts e  # .search('tr span[1]')
  new_file = Nokogiri::HTML(e)


 li_results.each do |line|
  new_file.search("#{line[:element]}").each do |link|
    puts "#{line[:result]} #{link}"
    puts ""
  end
 end



}

puts " ----------------------- end ----------------------- "
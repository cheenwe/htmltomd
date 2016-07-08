#! bin/ruby
require 'nokogiri'

puts " ----------------------- start ----------------------- "

simple_results = [
  {element:'blockquote', result: ">"},
  {element:'p, br', result: "
    "},
  {element:'h1', result: "#"},
  {element:'h2', result: "##"},
  {element:'h3', result: "###"},
  {element:'h4', result: "####"},
  {element:'h5', result: "#####"},
  {element:'h6', result: "######"},
  {element:'h7', result: "#######"}
]

 repeate_results = [
    {element:'del, s', result: "~~"},
    {element:'em', result: "*"},
    {element:'strong', result: "**"},
    {element:'strong em', result: "***"}
    # {element:'hr', result: "~~"}
]

 li_results = [
    # {element:'code', result: ""},
    {element:'ul', result: ""},
    {element:'li', result: "-"}
]

 href_results = [
  {element:'a', result: ""}
]

#代码
code_result = {element:'pre', result: "```"}

# 图片
image_result =  {element:'p a img, p img', result: " 图片"}

file = File.foreach("git.html") { |e|
  # puts e  # .search('tr span[1]')

new_file = Nokogiri::HTML(e)

 simple_results.each do |line|
  new_file.search("#{line[:element]}").each do |link|
    puts "#{line[:result]} #{link.content} "
  end
 end

 new_file.search("#{code_result[:element]}").each do |link|
   puts "#{code_result[:result]}ruby"
   puts "#{link.content}"
   puts "#{code_result[:result]}"
 end

 repeate_results.each do |line|
  new_file.search("#{line[:element]}").each do |link|
    puts "#{line[:result]} #{link.content} #{line[:result]}}"
  end
 end

 li_results.each do |line|
  new_file.search("#{line[:element]}").each do |link|
    puts "#{line[:result]} #{link.content}"
    puts ""
  end
 end

 href_results.each do |line|
  new_file.search("#{line[:element]}").each do |link|
    puts " [#{link.content}](#{link[:href]})"
  end
 end

  new_file.search("#{image_result[:element]}").each do |link|
    puts "![#{image_result[:result]}](#{link[:src]})"
  end

}

puts " ----------------------- end ----------------------- "
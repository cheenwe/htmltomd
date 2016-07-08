# [ {'h1', " ## "},{'h2', " ## "},{'h3', " ## "},{'h4', " ## "},{'h5', " ## "}].each do |s|
#     puts "--#{s}-- "
#     puts "--#{s.keys.to_s}----#{s.values.to_s}-- "
#     # puts "-------------_#{k}: #{v}"

#     # ss.search{"#{s.keys}"}.each do |link|
#     #   puts " #{s.values} #{line.content}"
#     # end

#   end


 [{element:'h1', result: "#"},  {element:'h2', result: "##"},  {element:'h3', result: "###"},  {element:'h4', result: "####"},  {element:'h5', result: "#####"}].each do |line|
  puts line
  puts line[:element]
  puts line[:result]

    # puts "--#{line.keys.to_s}----#{line.values.to_s}-- "
 end
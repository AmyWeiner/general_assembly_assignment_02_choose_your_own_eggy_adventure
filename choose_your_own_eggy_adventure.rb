# This program...

file='story.txt'
# stores all lines of the text as key-value pairs
# the key will be the page, and the value will be the contents
# of the given page
pages_hash = {}

# stores multiple lines of text, concatenated as one string
page_contents = ""

# stores the current page
page = ""

f = File.open(file, "r")
f.each_line do  |line|
  if line.index("~p")
    page = line.chomp
    puts page
  else
  	page_contents = line
  	lines_grabbed += line
  end
  pages_hash[page] = page_contents
end
f.close

puts "The pages are: "
puts pages_hash.keys

puts ""

puts "The contents are: "
puts pages_hash.values


require 'csv'


data_file = "/ttt.csv"
arr = []
CSV.foreach(data_file, headers: true) do |row|
  arr<<row.fields[0]
end
final=[]

arr.each do |rt|
  er = rt.sub("\t",',')
  p er
  final << er.gsub("\t",'')
end

name = final[0].split(',')[0]
link = final[0].split(',')[1]

p "<a href='#{link}'>#{name}</a>"

s = 'abc def ghi,jkl mno pqr,stu vwx yz'

puts s.split.inspect
=begin
#The split will envelope the elements grouped together into
quotes. The inspect method will then escape special characthers
=end

puts s.split(',').inspect

puts s.split(',', 2).inspect



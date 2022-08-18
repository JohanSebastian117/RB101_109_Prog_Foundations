def digit_list(num)
	p num.to_s.chars.map(&:to_i)
end

digit_list(12345)
#had a hiccup with this one. Did not know chars method

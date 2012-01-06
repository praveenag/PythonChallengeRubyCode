def read_file
	file = File.new("ocr", "r")
	text=""
	while (line = file.gets)
        	text<<line
      	end
	text
end
def parse_text(text)
	character_map={}
	text.each_char do |char|
		count = character_map[char.to_sym]
		if(count) 
			existing_count = character_map[char.to_sym]
			character_map[char.to_sym] = existing_count+1
		else
			character_map[char.to_sym]=1
		end
	end
	character_map
end
def solve
	rare_string=""
	text_to_parse = read_file
	map= parse_text(text_to_parse)
	map.each do |key,value|
		if(value<=1)
			rare_string<<key.to_s
		end
	end
	rare_string
end
puts solve

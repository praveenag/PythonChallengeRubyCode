ALPHABET_MAP = {:y=>'a',:z=>'b',:a=>'c',
:b=>'d',:c=>'e',:d=>'f',:e=>'g',:f=>'h',
:g=>'i',:h=>'j',:i=>'k',:j=>'l',:k=>'m',
:l=>'n',:m=>'o',:n=>'p',:o=>'q',:p=>'r',
:q=>'s',:r=>'t',:s=>'u',:t=>'v',:u=>'w',
:v=>'x',:w=>'y',:x=>'z'}

LINK="map"
TEXT ="g fmnc wms bgblr rpylqjyrc gr zw fylb. rfyrq ufyr amknsrcpq ypc dmp. bmgle gr gl zw fylb gq glcddgagclr ylb rfyr'q ufw rfgq rcvr gq qm jmle. sqgle qrpgle.kyicrpylq() gq pcamkkclbcb. lmu ynnjw ml rfc spj." 
def get_skipped_char(char)
	replacing_char = ALPHABET_MAP[char.to_sym]
	if(replacing_char)
		return replacing_char
	else
	return char
	end
end

def replace_character(string)
	replaced_string=""
	string.each_char do |char|
	replaced_string << get_skipped_char(char)
	end
	replaced_string
end

p replace_character(TEXT)
p replace_character(LINK)

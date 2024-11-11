ascii_arr=[]
def caeser(text,key)
ascii_arr=text.codepoints
ascii_arr.map! do |value|
  if value.between?(65,90)
   if value+key>90
    value=(value+key-65)%26+65
   else
    value=value+key
  end
  elsif value.between?(97,122)
    if  value+key>97
      value=(value+key-97)%26+97
    else
      value=value+key
    end
  else value=value
  end
end
  return ascii_arr.pack('c*')
end
puts caeser("What a string!", 5)

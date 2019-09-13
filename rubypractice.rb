def single_quote
  # single quote string here
    'Hello World and others!'
end

def double_quote
  # Double quote string here
    "Hello World and others!"
end

def here_doc
  # Here doc string here
  doc = <<-str
   Hello World and others!
   str
end

#-------------------------

def transcode(input_string)
    input_string.force_encoding(Encoding::UTF_8)
end

#---------------------------


def serial_average(serial)
    avg = ((serial[4,5].to_f + serial[10,5].to_f) / 2.0).round(2)  
    return serial[0,3] + "-" + "%0.2f" % [avg]
end

#------------------------

def count_multibyte_char(input_string)
    count = 0
   input_string.each_char{|char| 
       count = count + 1 if char.bytesize>1
       }
    count
end

#---------------------
def count_multibyte_char(input_string)
    count = 0
   input_string.each_char{|char| 
       count = count + 1 if char.bytesize>1
       }
    count
end

#--------------------------

def process_text(input_string_array)
    input_string_array.map{|str| str.chomp.strip}.join(' ')
end

#-------------------------------

# Enter your code here
def strike(input_str)
    "<strike>#{input_str}</strike>"
end

def mask_article(in_str,arr_str)
    input_string = in_str
    arr_str.each do |str|
        input_string.gsub!(str,strike(str)) if input_string.include? str      
    end
    return input_string
end
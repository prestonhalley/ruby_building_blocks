def caesar_cipher(str, shifter)
    shifter = shifter % 26  #If someone enters a number larger than 26, needed to make sure the shifter will go around the number wheel, instead of increaseing the ASCII number to an enormous number.
    letters = str.split("")
    letters.map! do |letter|
        if /\w/.match(letter) && /\D/.match(letter)
            letter = letter.ord + shifter
            if (91...(92 + shifter)) === letter || (123...(124 + shifter)) === letter
                letter -= 26                
            end
            letter = letter.chr
        else
            letter
        end
    end
    puts letters.join("")
end

user_string = "AbCdEfGhIjKlMnOpQrStUvWxYz"
user_shifter = 999999999999999999999999999999999999999999999999999999999999999999999999
caesar_cipher(user_string, user_shifter)

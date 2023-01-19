def caeser_cipher(message, shift_factor)
    decipher = message.split('')
    shifted_message = []
    deciphered = decipher.each { |char| 
        
        if char == " "
            new_char = char
            shifted_message.push(new_char.chr)
        else 
            new_char = char.ord + shift_factor
            shifted_message.push(new_char.chr)
        end

        }

    shifted_message = shifted_message.join()
    p shifted_message
    
end

caeser_cipher("Why hello there!", 4)


#Cipher Steps
# 1. Capture string in an array ✓
# 2. Split string into characters ✓
# 3. Use ASCII value to apply shift 
# 4. Join new characters back together
# 5. Return new string
#6. 
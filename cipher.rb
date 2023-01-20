def caeser_cipher(message, shift_factor)
    decipher = message.split('')
    #Create empty array to append the new values into as the cipher is applied to each iterated character
    shifted_message = []
    deciphered = decipher.each { |char| 
        chord = char.ord
    
        #Check if char is alphabetic. Could use a helper function here, but wanted the reps with the between? method
        if chord.between?(32, 64) || chord.between?(91, 96) || chord.between?(123, 126) || chord == 0
            new_char = char
            shifted_message.push(new_char.chr)
        elsif chord.between?(97, 122)
            new_char = chord + shift_factor
            if new_char > 122
                new_char = new_char - 26
            end
            shifted_message.push(new_char.chr)
        elsif chord.between?(65, 90)
            new_char = chord + shift_factor
            if new_char > 90
                new_char = new_char - 26
            end
            shifted_message.push(new_char.chr)
        end

        }

    shifted_message = shifted_message.join()
    p shifted_message

end

caeser_cipher("Easy As 1, 2, 3!", 5)


#Cipher Steps
# 1. Capture string in an array ✓
# 2. Split string into characters ✓
# 3. Use ASCII value to apply shift ✓
# 4. Join new characters back together ✓
# 5. Return new string ✓
# 6. Account for case, and wrap to ensure characters don't shift from alpha to symbol ✓
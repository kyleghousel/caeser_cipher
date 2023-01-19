def caeser_cipher(message, shift_factor)
    i = 0
    new_message = ""
    while i <= shift_factor do
        new_message += message
        i += 1
    end
    p new_message
end

caeser_cipher("Why hello there!", 4)


#Cipher Steps
# 1. Capture string in an array
# 2. Split string into characters
# 3. Use ASCII value to apply shift
# 4. Join new characters back together
# 5. Return new string
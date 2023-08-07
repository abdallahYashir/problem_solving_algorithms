def caesarCipher(s, k)
    s.split("").map { |letter|
        if letter =~ /[a-zA-Z]/
            letter = letter.ord + k
            if letter > 122 || (letter > 90 && letter < 97)
                letter -= 26
            end
            letter.chr
        else
            letter
        end
    }.join("")
end
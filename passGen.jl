using Random

chars = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '?', '!', '@', '#', '$', '%', '&', '(', ')', '{', '}', '[', ']']
words = String(read("words.dat")) |> Meta.parse |> eval
passLength = parse(Int64, ARGS[1])


passArr = []


for i in 1:passLength
    char = rand(1:50)

    
    if char <= 26 && rand((1, 2)) == 2
        push!(passArr, uppercase(chars[char]))
    elseif char >= 40
        for b in 1:length(words)
            word = words[rand(1:2315)]
            if passLength - i > length(word)
                push!(passArr, word)
                break
            else
                push!(passArr, chars[rand(27:39)])
                break
            end
        end
    else
        push!(passArr, chars[char])
    end
    if length(join(passArr)) == passLength
        break
    end
end

println("Password: ", join(passArr), "\n", "Length: ", length(join(passArr)))

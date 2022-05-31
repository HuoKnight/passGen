using Random

chars = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '?', '!', '@', '#', '$', '%', '&', '(', ')', '{', '}', '[', ']']

passArr = []


for i in 1:parse(Int64, ARGS[1])
    char = rand(1:39)

    if char <= 26 && rand((1, 2)) == 2
        push!(passArr, uppercase(chars[char]))
    else
        push!(passArr, chars[rand(1:39)])
    end
end

println("Password: ", join(passArr))

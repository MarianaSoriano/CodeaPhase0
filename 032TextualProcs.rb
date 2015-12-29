phrase = Proc.new {puts "Hello there!"}
def greeter
    yield
end
greeter(&phrase)#This isn't an argument with "&" call "phrase" Proc

hi = Proc.new {"Hello!"}
p hi.call #We use the .call method to call the 'hi' Proc

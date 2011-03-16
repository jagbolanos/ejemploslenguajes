

def otrafuncion(v, x)
    v.call(x)
end

def f(x) 
    puts x * x
end

otrafuncion(method(:f), 10)

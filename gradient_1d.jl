using Plots

function numerical_diff(f, x)
    h = 1e-4
    (f(x+h) - f(x-h)) / (2*h)
end

function tangent_line(f, x)
    d = numerical_diff(f, x) # 傾き
    println(d)
    y = f(x) - d*x
    return (t) -> d*t + y
end

f1(x) = 0.01x^2 + 0.1x

x = 0.0:0.1:20.0; y1 = [f1(i) for i in x]

tf = tangent_line(f1, 5)
y2 = [tf(i) for i in x]

p1 = plot(x, y1)
p2 = plot(x, y2)

plot(p1, p2)

function numerical_diff(f, x)
    h = 1e-4
    (f(x+h) - f(x-h)) / (2*h)
end

function tangent_line

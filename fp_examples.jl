n = 0
i::Float32 = 0.0
while i < 1
  global i += 0.1
  global n += 1
end

println("With float32: $n iterations")

n = 0
j::Float64 = 0.0
while j < 1
  global j += 0.1
  global n += 1
end

println("With float64: $n iterations")

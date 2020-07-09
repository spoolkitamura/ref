def put_0
  puts " 000  "
  puts "0   0 "
  puts "0   0 "
  puts "0   0 "
  puts " 000  "
  puts "      "
end

def put_1
  puts "  1   "
  puts "  1   "
  puts "  1   "
  puts "  1   "
  puts "  1   "
  puts "      "
end

def put_2
  puts "  22  "
  puts "    2 "
  puts "   2  "
  puts "  2   "
  puts " 2222 "
  puts "      "
end

def put_3
  puts " 333  "
  puts "    3 "
  puts "  33  "
  puts "    3 "
  puts " 333  "
  puts "      "
end

def put_4
  puts "   4  "
  puts "  44  "
  puts " 4 4  "
  puts "44444 "
  puts "   4  "
  puts "      "
end

def put_5
  puts " 5555 "
  puts " 5    "
  puts " 555  "
  puts "    5 "
  puts " 555  "
  puts "      "
end

def put_6
  puts "  66  "
  puts " 6    "
  puts " 666  "
  puts " 6  6 "
  puts "  66  "
  puts "      "
end

def put_7
  puts " 7777 "
  puts "    7 "
  puts "   7  "
  puts "  7   "
  puts "  7   "
  puts "      "
end

def put_8
  puts " 888  "
  puts "8   8 "
  puts " 888  "
  puts "8   8 "
  puts " 888  "
  puts "      "
end

def put_9
  puts "  99  "
  puts " 9  9 "
  puts "  999 "
  puts "    9 "
  puts "  99  "
  puts "      "
end

def put_n(n)
  if n == 0
    put_0
   end
  if n == 1
    put_1
  end
  if n == 2
    put_2
  end
  if n == 3
    put_3
  end
  if n == 4
    put_4
  end
  if n == 5
    put_5
  end
  if n == 6
    put_6
  end
  if n == 7
    put_7
  end
  if n == 8
    put_8
  end
  if n == 9
    put_9
  end
end

put_n(1)
put_n(3)
put_n(0)


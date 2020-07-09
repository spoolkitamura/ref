def put_0
  lines = []
  lines << " 000 "
  lines << "0   0"
  lines << "0   0"
  lines << "0   0"
  lines << " 000 "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_1
  lines = []
  lines << "  1   "
  lines << "  1   "
  lines << "  1   "
  lines << "  1   "
  lines << "  1   "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_2
  lines = []
  lines << "  22  "
  lines << "    2 "
  lines << "   2  "
  lines << "  2   "
  lines << " 2222 "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_3
  lines = []
  lines << " 333  "
  lines << "    3 "
  lines << "  33  "
  lines << "    3 "
  lines << " 333  "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_4
  lines = []
  lines << "   4  "
  lines << "  44  "
  lines << " 4 4  "
  lines << "44444 "
  lines << "   4  "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_5
  lines = []
  lines << " 5555 "
  lines << " 5    "
  lines << " 555  "
  lines << "    5 "
  lines << " 555  "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_6
  lines = []
  lines << "  66  "
  lines << " 6    "
  lines << " 666  "
  lines << " 6  6 "
  lines << "  66  "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_7
  lines = []
  lines << " 7777 "
  lines << "    7 "
  lines << "   7  "
  lines << "  7   "
  lines << "  7   "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_8
  lines = []
  lines << " 888  "
  lines << "8   8 "
  lines << " 888  "
  lines << "8   8 "
  lines << " 888  "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_9
  lines = []
  lines << "  99  "
  lines << " 9  9 "
  lines << "  999 "
  lines << "    9 "
  lines << "  99  "
  lines << "      "
  lines.each do |line|
    puts line
  end
end

def put_n(n)
  s = n.to_s
  keta = s.length
  keta.times do |i|
    if s[i].to_i == 0
      put_0
     end
    if s[i].to_i == 1
      put_1
    end
    if s[i].to_i == 2
      put_2
    end
    if s[i].to_i == 3
      put_3
    end
    if s[i].to_i == 4
      put_4
    end
    if s[i].to_i == 5
      put_5
    end
    if s[i].to_i == 6
      put_6
    end
    if s[i].to_i == 7
      put_7
    end
    if s[i].to_i == 8
      put_8
    end
    if s[i].to_i == 9
      put_9
    end
  end
end

put_n(130)

def run
  while true
    queens = (0..7).to_a.shuffle
    break if check?(queens)
  end
  display(queens)
end

def check?(pos)
  pos.each_with_index do |x,y|
    j = y+1
    while j < pos.length
      return false if (x - pos[j]).abs == (y - j).abs
      j += 1
    end
  end

  true
end

def display(pos)
  board = Array.new(8) { Array.new(8, " ") }

  board.each_with_index do |row, col|
    row[pos[col]] = "Q"
    puts row.join(" ")
  end

end

run
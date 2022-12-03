#!/usr/bin/awk -f

BEGIN {
  # Losing throws
  loss_throws["A"] = 3
  loss_throws["B"] = 1
  loss_throws["C"] = 2
  # Draw throws
  draw_throws["A"] = 1
  draw_throws["B"] = 2
  draw_throws["C"] = 3
  # Winning throws
  win_throws["A"] = 2
  win_throws["B"] = 3
  win_throws["C"] = 1
}
/X/ {
  score += loss_throws[$1]
}

/Y/ {
  score += 3
  score += draw_throws[$1]
}

/Z/ {
  score += 6
  score += win_throws[$1]
}

END {
  print score
}

#!/usr/bin/awk -f

BEGIN {
  # Winning combos
  scores["A Y"] = 6
  scores["B Z"] = 6
  scores["C X"] = 6
  # Draw combos
  scores["A X"] = 3
  scores["B Y"] = 3
  scores["C Z"] = 3
}
# Add the score for what you throw
/X/ {
  score += 1
}
/Y/ {
  score += 2
}
/Z/ {
  score += 3
}
{
  # Add the score for whether you won or draw
  score += scores[$0]
}
END {
  print score
}

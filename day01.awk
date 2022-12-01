#!/usr/bin/awk -f

{
  totalcal += $0
}
/^$/ {
  if (totalcal > biggest) biggest = totalcal
  totalcal = 0
}
END {
  print biggest
}

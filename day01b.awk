#!/usr/bin/env gawk -f

{
  totalcal += $0
}
/^$/ {
  totals[i++] = totalcal
  totalcal = 0
}
END {
  asort(totals, sorted_totals, "@val_num_asc")
  print(sorted_totals[i]+sorted_totals[i-1]+sorted_totals[i-2])
}

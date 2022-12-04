#!/usr/bin/awk -f

BEGIN {
  FS=","
}
{
  split($1,r1,/-/)
  split($2,r2,/-/)
  not_in_range = 0
  for(i=r1[1]; i<=r1[2]; i++) {
    if(!(i>=r2[1] && i<=r2[2])) {
      not_in_range++
      break
    }
  }
  for(i=r2[1]; i<=r2[2]; i++) {
    if(!(i>=r1[1] && i<=r1[2])) {
      not_in_range++
      break
    }
  }
  if(not_in_range < 2) {
    redundant++
  }
}
END {
  print redundant
}

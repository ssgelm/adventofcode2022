#!/usr/bin/awk -f

BEGIN {
  FS=","
}
{
  split($1,r1,/-/)
  split($2,r2,/-/)
  for(i=r1[1]; i<=r1[2]; i++) {
    if(i>=r2[1] && i<=r2[2]) {
      redundant++
      next
    }
  }
  for(i=r2[1]; i<=r2[2]; i++) {
    if(i>=r1[1] && i<=r1[2]) {
      redundant++
      next
    }
  }
}
END {
  print redundant
}

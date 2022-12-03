#!/usr/bin/awk -f

function charToNum(c) {
  values = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  return index(values, c)
}
{
  compartmentSize = length($0) / 2
  split(substr($0, 1, compartmentSize), compartment1, //)
  compartment2 = substr($0, compartmentSize + 1, compartmentSize)
  for(i in compartment1) {
    if (index(compartment2, compartment1[i]) > 0) {
      total += charToNum(compartment1[i])
      break
    }
  }
}
END {
  print total
}

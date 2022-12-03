#!/usr/bin/awk -f

function charToNum(c) {
  values = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  return index(values, c)
}
{
  sack1 = $0
  getline
  sack2 = $0
  getline
  sack3 = $0
  split(sack1, arrSack1, //)
  for(i in arrSack1) {
    if (index(sack2, arrSack1[i]) > 0 && index(sack3, arrSack1[i]) > 0) {
      total += charToNum(arrSack1[i])
      break
    }
  }
}
END {
  print total
}

BEGIN {
  sum = 0
}

{
  v = int($1 / 3) - 2
  sum += v
  print v
}

END {
  print "Sum: ",sum
}

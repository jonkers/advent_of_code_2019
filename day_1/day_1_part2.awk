BEGIN {
  sum = 0
  stage_sum = 0
}

{
  v = $1
  stage_sum = 0
  /* If v < 9, no further contribution is needed to stage_sum */
  while (v >= 9) {
    v = int(v / 3) - 2
    stage_sum += v
  }
  sum += stage_sum
  print "Stage sum: ",stage_sum
}

END {
  print "Sum: ",sum
}

BEGIN {
  FS = ","
}

{
  for(i = 1; i <= NF; i = i + 4)
  {
    print $i
  }
}

END{
  print $0
}

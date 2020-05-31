BEGIN {
  FS = ","
}

{
  print
  for(i = 1; i <= NF; i = i + 4)
  {
    if ($i == 1) {
      $($(i+3)+1) = $($(i+1)+1) + $($(i+2)+1)
    }
    else if ($i == 2) {
      $($(i+3)+1) = $($(i+1)+1) * $($(i+2)+1)
    }
    else {
      break
    }
  }
}

END{
  print
}

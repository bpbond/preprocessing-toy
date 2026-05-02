
message("Starting")

if(file.exists("tokenfile.RDS")) {
  message("Token file exists!")
} else {
  message("No token file :(")
}

writeLines(as.character(Sys.time()), 'output.txt')

message("All done")

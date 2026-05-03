library(rdrop2)

message("Starting")

if(file.exists("tokenfile.RDS")) {
  message("Token file exists!")
} else {
  message("No token file :(")
}

# Can we read the Dropbox directory?
x <- drop_dir(dtoken = "tokenfile.RDS")

writeLines(as.character(Sys.time()), 'output.txt')

message("All done")

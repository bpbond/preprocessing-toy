library(rdrop2)

message("Starting")

if(file.exists("tokenfile.RDS")) {
  message("Token file exists!")
} else {
  message("No token file :(")
}

# Can we read the Dropbox directory?
drop_auth(rdstoken = here::here("tokenfile.RDS"))
x <- drop_dir()

writeLines(as.character(Sys.time()), 'output.txt')

message("All done")

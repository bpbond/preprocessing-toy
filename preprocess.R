library(rdrop2)

message("Starting preprocess.R")

TOKENFILE <- "tokenfile.RDS"

if(file.exists(TOKENFILE)) {
  message("Token file exists!")
  message("File size is ", file.size(TOKENFILE))
  message("Trying to readRDS it...")
  readRDS(TOKENFILE)
} else {
  message("No token file :(")
}

# Can we read the Dropbox directory?
drop_auth(rdstoken = TOKENFILE)
x <- drop_dir()

writeLines(as.character(Sys.time()), 'output.txt')

message("All done")

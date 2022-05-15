## parse google sheets to make csv documents for website

library(googlesheets4)
library(dplyr)
library(purrr)

url <- "https://docs.google.com/spreadsheets/d/1payi3eUhGogJurJgeiGjTxWKnHPswTNrW0JBaWcMG6c/edit#gid=0"

sn <- googlesheets4::sheet_names(url)


for(name in sn){
  print(name)
  
  ## read in sheets
  
  gs <- googlesheets4::read_sheet(url,sheet = name)

  ## create csv entry with the following categories
  
  # Title
  # Address
  # website
  # Description
  
  gs1 <- gs %>% 
    select(Name, Category, Description, Address, Website) %>% 
    arrange(Category, Name) 
  
  ## write to _data folder with appropriate name
  
  file_path <- sprintf("../_data/%s.csv", name)
  
  readr::write_csv(gs1,file =file_path )
    
  }




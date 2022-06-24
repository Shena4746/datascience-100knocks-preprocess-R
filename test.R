library("RPostgreSQL")
library("DBI")
library("dbplyr")
library("dplyr")

con <- dbConnect(PostgreSQL(), host = "localhost", port = 5432, dbname = "knock100", user = "guest", password = "guest")

DBI::dbListTables(con)

setwd("~/code/R/datascience-100knocks-preprocess-R/scr")
bookdown::render_book("./top.Rmd", "bookdown::gitbook")


customer_tbl <- dplyr::tbl(con, "customer")
category_tbl <- tbl(con, "category")
product_tbl <- tbl(con, "product")
receipt_tbl <- tbl(con, "receipt")
store_tbl <- tbl(con, "store")

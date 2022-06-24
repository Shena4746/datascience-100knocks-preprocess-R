# .Rmd テンプレート

## ビルドタスクについて

## .yml ヘッダーについて


```{r connect-to-DB, eval = TRUE,include=FALSE}
con <- DBI::dbConnect(
    RPostgreSQL::PostgreSQL(),
    host = "localhost",
    port = 5432,
    dbname = "knock100",
    user = "guest",
    password = "guest"
)
```

接続できたか確認.

```{r show-databases, message=TRUE}
DBI::dbListTables(con)
```

各テーブルへの参照を取得.

```{r name-variables, eval=TRUE}
customer_tbl <- dplyr::tbl(con, "customer")
category_tbl <- dplyr::tbl(con, "category")
product_tbl <- dplyr::tbl(con, "product")
receipt_tbl <- dplyr::tbl(con, "receipt")
store_tbl <- dplyr::tbl(con, "store")
```

ちゃんとクエリが飛ばせるかテスト.

この `customer_tbl` 等の参照を使って dplyr の文法でデータ加工処理を書いていく.

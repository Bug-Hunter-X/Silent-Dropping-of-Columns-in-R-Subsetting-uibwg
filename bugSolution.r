```r
# Improved code that checks for column existence before subsetting

df <- data.frame(col1 = c(1, 2, 3), col2 = c(4, 5, 6))
cols_to_subset <- c("col1", "col3")

#Check if columns exist
valid_cols <- cols_to_subset[cols_to_subset %in% names(df)]

#Subset only valid columns
if (length(valid_cols)>0){
  subset_df <- df[, valid_cols]
} else {
  warning("None of the specified columns exist in the dataframe")
  subset_df <-NULL
}
```
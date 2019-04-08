app <- ShinyDriver$new("../")
app$snapshotInit("recordedDTTest")

app$setInputs(dtScaled_rows_current = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), allowInputNoBinding_ = TRUE)
app$setInputs(dtScaled_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), allowInputNoBinding_ = TRUE)
app$setInputs(scale = 7)
app$setInputs(dtScaled_rows_current = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), allowInputNoBinding_ = TRUE)
app$setInputs(dtScaled_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), allowInputNoBinding_ = TRUE)
app$snapshot()

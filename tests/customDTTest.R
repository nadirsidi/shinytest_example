app <- ShinyDriver$new("../")
app$snapshotInit("customDTTest")

app$setInputs(scale = 7)
app$snapshot(items = list(export = c("scaledData")), screenshot=TRUE)

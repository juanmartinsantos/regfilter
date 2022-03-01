# load the dataset
data(rock)
set.seed(9)
out <- regIRF(x = rock[,-ncol(rock)], y = rock[,ncol(rock)])

# tests
test_that("the result has the correct class", {
  expect_s3_class(out, "rfdata")})

test_that("the number of idclean plus idnoise equals the number of dataset samples", {
      expect_true(length(out$idclean) + length(out$idnoise) == nrow(rock))
})

test_that("the idclean and idnoise are equal to dataset rownames", {
  expect_true(any(sort(c(out$idclean,out$idnoise)) == as.integer(rownames(rock))))
})

test_that("the original dataset can be correctly reconstructed from the rfdata object", {
      dataClean <- cbind(out$xclean, out$yclean)
      dataNoisy <- cbind(out$xnoise, out$ynoise)
      colnames(dataClean) = colnames(dataNoisy) = colnames(rock)
      processData <- rbind(dataClean, dataNoisy)
      processData <- processData[order(as.numeric(row.names(processData))), ]
      expect_equal(processData, rock)
})

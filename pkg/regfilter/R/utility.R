normalizeData2 <- function(data){
  features <- apply(data, MARGIN = 2,
                    FUN = function(x){
                      resx <- (x - min(x)) / (max(x) - min(x))
                      return(resx)
                    })
  data_aux <- as.data.frame(features)
  return(data_aux)
}

forecast <- function(prediccion, real, NS){
  forest <- logical(length(prediccion))
  dif <- abs(prediccion-real)
  idx_NS <- which(dif > NS)
  # if are different: True
  forest[idx_NS] <- T
  return(forest)
}

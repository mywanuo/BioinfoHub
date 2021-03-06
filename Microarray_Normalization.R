
library(preprocessCore) # normalize.quantiles()
library(vsn)

eSet <- readRDS(file='data/rData/eSet.rds')
phenoData <- pData(eSet)
exprData <- exprs(eSet)

### Quantile Normalization
exprDataQuantileNorm <- normalize.quantiles(exprData)
colnames(exprDataQuantileNorm) <- colnames(exprData)
rownames(exprDataQuantileNorm) <- rownames(exprData)

### Vsn Normalization
exprDataVsnNorm <- justvsn(exprData)
meanSdPlot(exprDataVsnNorm)

### Lowess/Loess

### loessCyc

exprDataLoessCycNorm <- normalizeCyclicLoess(log2(exprData))
exprDataLoessCycNorm


### Median Normalization

### rlm

normalize <- function(x){
  return((x - min(x)) / (max(x) - min(x)))
}

wbcd <- read.csv("wisc_bc_data.csv", stringsAsFactors = FALSE)

str(wbcd)

wbcd <- wbcd[-1]

table(wbcd$diagnosis)

wbcd$diagnosis <- factor(wbcd$diagnosis, levels = c("B", "M"), labels = c("Benign", "Malignant"))

wbcd_n <- as.data.frame(lapply(wbcd[2:31], normalize))
summary(wbcd_n$area_mean)

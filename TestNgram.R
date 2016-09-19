# Test ngram package
testsentence <- "This is a test sentence to test the ngram R package"
library(ngram)
ng_bigram <- ngram(test_sentence , n=2)
print(ng_bigram)
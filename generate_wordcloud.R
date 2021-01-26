library("quanteda")
library("quanteda.textplots")
library("readtext")

jan6_text <- readtext('/TextAnalysis')
jan6_corpus <- corpus(jan6_text)
jan6_dfm <- jan6_corpus %>% 
  dfm(remove = stopwords('english'), remove_punct = TRUE) %>%
  dfm_trim(min_termfreq = 8, verbose = FALSE)

set.seed(100)
textplot_wordcloud(jan6_dfm,color = c('pink', 'orange', 'red', 'blue', 'purple', 'green'))

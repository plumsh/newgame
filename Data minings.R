##hello change alot dsa sadasd
###2222
<<<<<<< HEAD
###222222
=======
#111111
>>>>>>> dev
library('rvest')
url <- 'http://www.imdb.com/search/title?count=100&release_date=2016,2016&title_type=feature'

webpage <- read_html(url)
rank_data_html <- html_nodes(webpage,'.text-primary')
rank_data <- html_text(rank_data_html)
head(rank_data)

rank_data <- as.numeric(rank_data)

title_data_html <- html_nodes(webpage,'.lister-item-header a')
title_data <- html_text(title_data_html)
head(title_data)
description_data_html <- html_nodes(webpage,'.ratings-bar+ .text-muted')
description_data <- html_text(description_data_html)
head(description_data)
description_data<-gsub("\n","",description_data)
runtime_data_html <- html_nodes(webpage,'.text-muted .runtime')
runtime_data <- html_text(runtime_data_html)

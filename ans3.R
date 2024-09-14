## paste all your code here for Problem 3 of the exam
library(rvest)
library(tidyverse)
link <- read_html("https://www.scimagojr.com/journalrank.php?area=2600&category=2613")
tabless <-html_table(link)
data <- tabless[[1]]
rename(data,''="No.")

link2 <- html %>% html_elements(".pagination_buttons a")%>% html_attr("href")
link2 <- paste("https://www.scimagojr.com/" , link2[2],sep="")
link2 <- read_html(link2)
data2 <- html_table(link2)[[1]]     #data2 has 50 more rows

link3 <- link2 %>% html_elements(".pagination_buttons a")%>% html_attr("href")
link3 <- paste("https://www.scimagojr.com/" , link3[2],sep="")
link3 <- read_html(link3)
data3 <- html_table(link3)[[1]]

link4 <- link3 %>% html_elements(".pagination_buttons a")%>% html_attr("href")
link4 <- paste("https://www.scimagojr.com/" , link4[2],sep="")
link4 <- read_html(link4)
data4 <- html_table(link4)[[1]]

link5 <- link4 %>% html_elements(".pagination_buttons a")%>% html_attr("href")
link5 <- paste("https://www.scimagojr.com/" , link5[2],sep="")
link5 <- read_html(link5)
data5 <- html_table(link5)[[1]]

link6 <- link5 %>% html_elements(".pagination_buttons a")%>% html_attr("href")
link6 <- paste("https://www.scimagojr.com/" , link6[2],sep="")
link6 <- read_html(link6)
data6 <- html_table(link6)[[1]]

stat_journals<-merge(data,data2,data3,data4,data5.data6)

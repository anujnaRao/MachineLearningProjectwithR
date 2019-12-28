install.packages("rvest")
library(rvest)

dataset <- data.frame()

View(dataset)

url<- "https://www.amazon.in/Mi-XMSH05HM-Band-3-Black/dp/B07HCXQZ4P/ref=zg_mg_electronics_home_1?_encoding=UTF8&psc=1&refRID=KJG5YFPX7ZX14YXKGAYT#customerReviews"

data<- read_html(url)
print(url)

print(data)

x<- html_nodes(data,"[class ='a-section celwidget']")
username <- html_text(html_nodes(x,"[class ='a-profile-name']"))

#few more lines

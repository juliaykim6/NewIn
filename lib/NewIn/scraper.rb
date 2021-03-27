class Scraper
    @doc = Nokogiri::HTML(open("https://www.farfetch.com/sets/women/new-in-this-week-eu-women.aspx"))

    def self.scrape_items
        items = @doc.search("li[data-testid='productCard']")
        
        items.each do |item|
            brand =  item.search("h3[data-testid='productDesignerName']")[0].children[0].text
            name = item.search("p[data-testid='productDescription']")[0].children[0].text
            price = item.search("span[data-testid='price']")[0].children[0].text
            url = "https://farfetch.com" + item.children[0].attributes["href"].value
            Item.new(brand, name, price, url)

        end

    end 


end

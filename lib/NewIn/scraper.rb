class NewIn::Scraper
    @doc = Nokogiri::HTML(open("https://www.farfetch.com/sets/women/new-in-this-week-eu-women.aspx"))

     def self.scrape_items
        self.scrape_ff_item
    end

    def self.scrape_ff_item
        item = NewArrivals::Items.new

        item.brand = @doc.search("div._346238__titleWrapper h1")[2].text
        item.name = "item" if @name == nil
        item.name = @doc.search("div._d85b45__header__headings h1")[1].text
        item.price = "Unavailable" if @price == nil
        item.price = @doc.search("div._6356bb span.price")[2].text
        item.url = "Visit FarFetch for the latest fashion finds! \nhttps://www.farfetch.com/sets/women/new-in-this-week-eu-women.aspx" if @url == nil
        item.url = "https://farfetch.com" + @doc.search("_5ce6f6")[1]['href']
    end
end
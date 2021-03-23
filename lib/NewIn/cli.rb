class NewIn::CLI 
    def call 
        #NewArrivals::Scraper.scrape_items
        #list_items
        menu
    end

    #def list_items
    #    puts "\n New In:"
    #    @items = NewArrivals::items.today
    #    @items.each.with_index(1) do |items, x|
    #        puts "#{x}. '#{item.name}' by #{item.brand} - #{item.price}"
    #    end
    #end
    

    def menu
        input = nil
        while input != "exit"
            puts "\nEnter the number of the item you'd like to view, type list to see all the items again, or type exit to leave this site."
            input = gets.strip.downcase

            #if input.to_i > 0 && input.to_i < 3
            #    the_item = @items[input.to_i-1]
            #    puts "\n\t'#{the_item.name}' by #{the_item.brand} - #{the_item.price}"
            #    if the_item.url
            #        doc = Nokogiri::HTML(open("#{the_item.url}"))
            #        item = doc.search("div.article-body p").text
            #        puts "\n"
            #        puts item
            #        puts "\n"
            #        puts the_item.url
            #    else
            #        puts "\nVisit https://www.farfetch.com/sets/women/new-in-this-week-eu-women.aspx for the latest pieces!"
            #    end
            #elsif input == 'list'
            #    list_items
            #elsif input == 'exit'
            #    goodbye
            #else
            #    puts "\nSorry, please try again!"
            #end
        end
    end

    def goodbye
        puts "\nSee you tomorrow for more of the latest pieces!"
    end

    #binding.pry

end 

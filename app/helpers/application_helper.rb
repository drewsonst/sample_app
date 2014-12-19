module ApplicationHelper
    #Returns the full title on a per page basis
    def full_title(page_title = '') #if nothing passed in set to empty?
       base_title = "Ruby on Rails Sample App"
       if page_title.empty?
           base_title
        else
            "#{page_title} | #{base_title}" #ex Home | Ruby on Rails Sample App
        end
    end
end

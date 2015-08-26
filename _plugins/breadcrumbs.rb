##
# Monkey patch Jekyll's Page and Post classes.
module Jekyll

    class Page
        def ancestors
            get_pages(self.url)
        end

        ##
        # Make ancestors available.
        def to_liquid(attrs = ATTRIBUTES_FOR_LIQUID)
            super(attrs + %w[
                ancestors
            ])
        end
    end

    class Post
        def ancestors
            get_pages(self.url)
        end

        ##
        # Make ancestors available.
        def to_liquid(attrs = ATTRIBUTES_FOR_LIQUID)
            super(attrs + %w[
                ancestors
            ])
        end
    end
end

##
# Returns ordered list
def get_pages(url)
    a = []
    while url != "/index.textile"
        pt = url.split("/")
        if pt[-1] != "index.textile"
            # go to directory index
            pt[-1] = "index.textile"
            url = pt.join("/")
        else
            # one level up
            url = pt[0..-3].join("/") + "/index.textile"
        end
        a << get_page_from_url(url)
    end
    a.reverse
end

##
# Gets Page object that has given URL. Very inefficient O(n) solution.
def get_page_from_url(url)
    (site.pages + site.posts).each do |page|
        return page if page.url == url
    end
end

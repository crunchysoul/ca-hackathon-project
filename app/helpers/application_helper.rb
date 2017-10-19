module ApplicationHelper
    def style_backgound_image(url)
        return "" if url.nil?
        "background-image: url(#{url});"
    end
end

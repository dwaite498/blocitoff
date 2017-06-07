module UsersHelper
    include ActionView::Helpers::DateHelper
    def time_left(item)
        start_time = item.created_at
        distance_of_time_in_words(start_time, item.created_at + 7.days)
    end

end

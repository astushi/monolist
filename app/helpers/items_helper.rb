module ItemsHelper
    def user_have_or_want_item(item)
        User.find_by(id: item.user_id)
    end
end
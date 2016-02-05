class RankingController < ApplicationController

    def have
        items_haved = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
        ids = items_haved.keys
        @counts = items_haved.values
        @items_ranked = Item.find(ids).sort_by{|item| ids.index(item.id)}
    end
    
    def want
        items_wanted = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
        ids = items_wanted.keys
        @counts = items_wanted.values
        @items_ranked = Item.find(ids).sort_by{|item| ids.index(item.id)}
    end
end

require 'pry'

class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.any? {|i| i[:name] >= item_name}
    end

    def give_away(dev, freebie)
        if self.freebies.any? {|i| i[:id] >= freebie.id}
            freebie.dev_id = dev.id
        end
    end
end

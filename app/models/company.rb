class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    # def devs
    #     Dev.where(id: Freebie.where(company_id: self.id).pluck(:dev_id))
    # end

    def give_freebie(dev, item_name, value)
        Freebie.create(company_id: self.id, dev_id: dev.id, item_name: item_name, value: value)
    end

    def self.oldest_company
       self.minimum(:founding_year)
    end

end

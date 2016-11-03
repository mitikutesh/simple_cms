class Subject < ApplicationRecord
	has_one :page

	scope :myvisible, lambda { where(:visible =>true)  }
	scope :myinvisible, lambda { where(:visible =>false) }
	scope :sorted, lambda{ order("subjects.position ASC")}
	scope :newest_first, lambda { order("subjects.created_at DESC")}
	scope :search, lambda { |query|
		where(["name LIKE ?", "%#{query}%"])
	}
end
                        
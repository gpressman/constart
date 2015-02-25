class Nizar < ActiveRecord::Base
   has_many :ironhackers
   has_many :cookies
end

class Ironhacker < ActiveRecord::Base
   has_one :nizar
end

class  Cookies < ActiveRecord::Base
	belongs_to :nizar
end
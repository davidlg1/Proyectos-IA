class Comercial < ActiveRecord::Base
	validates :consulta, presence: true 
end

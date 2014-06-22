class SoporteTecnico < ActiveRecord::Base
	validates :consulta, presence: true
end

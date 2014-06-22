class Producto < ActiveRecord::Base
	validates :nombre, presence: true
	validates :descripcion, presence: true
end

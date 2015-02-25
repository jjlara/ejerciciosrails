class Ejercicio < ActiveRecord::Base
	has_many :pregunta

	accepts_nested_attributes_for :pregunta, allow_destroy: true, reject_if: proc{|atributo| atributo['titulo'].blank?}
end

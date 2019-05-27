class Contact < ApplicationRecord
	validates_presence_of :name, message: 'O campo Nome não pode ser vazio'
	validates_presence_of :email, message: 'O campo Email não pode ser vazio'
end

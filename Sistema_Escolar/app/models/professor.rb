#encoding: utf-8
class Professor < ActiveRecord::Base
attr_accessible :nome

validates_presence_of :nome, message: " - deve ser preenchido"
validates_uniqueness_of :nome, message: " - nome já cadastrado"

has_many :turmas
end

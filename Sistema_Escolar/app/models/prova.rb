#encoding: utf-8
class Prova < ActiveRecord::Base

attr_accessible :aluno_id , :nota

belongs_to :aluno

validates_presence_of :aluno_id , message: " - deve ser preenchido"
validates_associated :aluno

validates_presence_of :nota, message: "Nota invalida"
validates_numericality_of :nota ,greater_than:0,less_than:10, message: " - valor invalido"

end

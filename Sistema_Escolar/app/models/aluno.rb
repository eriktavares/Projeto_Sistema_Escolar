#encoding: utf-8
class Aluno < ActiveRecord::Base
attr_accessible :nome , :turma_id

validates_presence_of :nome, message: " - deve ser preenchido"
validates_uniqueness_of :nome, message: " - nome ja cadastrado"

validates_presence_of :turma_id, message: " - deve ser preenchido"

has_many :provas
belongs_to :turma


end

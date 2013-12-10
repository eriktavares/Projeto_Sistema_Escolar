#encoding: utf-8
class Turma < ActiveRecord::Base
attr_accessible :nome , :professor_id

validates_presence_of :nome, message: " - deve ser preenchido"
validates_uniqueness_of :nome, message: " - nome já cadastrado"

validates_presence_of :professor_id, message: " - deve ser preenchido"

has_many :alunos
belongs_to :professor


end

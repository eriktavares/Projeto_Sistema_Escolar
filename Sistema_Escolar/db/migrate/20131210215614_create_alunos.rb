class CreateAlunos < ActiveRecord::Migration
  def self.up
    create_table :alunos do |t|
	t.string :nome, limit: 40
	t.integer :turma_id
      t.timestamps
    end
	add_index(:alunos, :turma_id)
  end
def self.down
drop_table :alunos
end
end

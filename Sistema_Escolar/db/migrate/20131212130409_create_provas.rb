class CreateProvas < ActiveRecord::Migration
  def self.up
    create_table :provas do |t|
	t.float :nota
	t.integer :aluno_id
      t.timestamps
    end
add_index(:provas, :aluno_id)
  end
def self.down
drop_table :provas
end
end

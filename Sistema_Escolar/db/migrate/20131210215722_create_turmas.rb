class CreateTurmas < ActiveRecord::Migration
  def self.up
    create_table :turmas do |t|
	t.string :nome, limit: 20
	t.integer :professor_id
	

      t.timestamps
    end
	add_index(:turmas, :professor_id)
  end

	def self.down
drop_table :turmas
end
end

class CreateProfessores < ActiveRecord::Migration
  def self.up
    create_table :professores do |t|
	t.string :nome, limit: 40
      t.timestamps
    end
  end
	def self.down
drop_table :professores
end
end

class CreateRegras < ActiveRecord::Migration
  def change
    create_table :regras do |t|
      t.string :regra
      t.text :descricao

      t.timestamps
    end
  end
end

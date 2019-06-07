class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: { on_delete: :cascade }
      t.text :body

      t.timestamps
    end
  end
end

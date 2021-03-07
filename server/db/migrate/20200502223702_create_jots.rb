class CreateJots < ActiveRecord::Migration[6.0]
  def change
    create_table :jots do |t|
      t.string :title
      t.string :body
      t.string :tags
      t.integer :user_id

      t.timestamps
    end
  end
end

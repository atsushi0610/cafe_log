class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string     :title      , null: false
      t.date       :date       , null: false
      t.text       :impression , null: false
      t.string     :brand
      t.integer    :kind_id
      t.integer    :taste_id
      t.integer    :aroma_id
      t.integer    :roast_id
      t.integer    :drink_id
      t.references :user       , null: false
      t.timestamps
    end
  end
end

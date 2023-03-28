class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string     :title      , null: false
      t.date       :date       , null: false
      t.text       :impression , null: false
      t.references :user       , null: false
      t.timestamps
    end
  end
end

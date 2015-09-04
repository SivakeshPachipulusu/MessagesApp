class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :m_name
      t.string :m_subject
      t.text :m_description

      t.timestamps null: false
    end
  end
end

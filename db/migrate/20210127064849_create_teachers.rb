class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :subject_name
      t.string :image_url
      t.string :slug

      t.timestamps
    end
  end
end

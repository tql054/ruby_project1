class CreateQuanlymuonsacs < ActiveRecord::Migration[7.0]
  def change
    create_table :quanlymuonsacs do |t|
      t.string :STT
      t.string :mahs
      t.string :hoten
      t.string :lop
      t.string :tensach
      t.string :tacgia
      t.string :tusach
      t.string :sobm, null:true
      t.string :ngaymuon
      t.string :ngaytra, null:true
      t.string :songay, null:true
      t.timestamps
    end
  end
end

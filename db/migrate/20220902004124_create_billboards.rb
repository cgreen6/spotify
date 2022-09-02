class CreateBillboards < ActiveRecord::Migration[7.0]
  def change
    create_table :billboards do |t|
      t.string :attr
      # t.string :attr

      t.timestamps
    end
  end
end

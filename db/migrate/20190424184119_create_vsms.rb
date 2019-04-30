class CreateVsms < ActiveRecord::Migration[5.2]
  def change
    create_table :vsms do |t|
    	t.string :file_name

    	t.integer :inventory1
    	t.string :processA
    	t.text :resourceA
    	t.string :dataA1
    	t.string :dataA2
    	t.string :dataA3

    	t.integer :inventory2
    	t.string :processB
    	t.text :resourceB
    	t.string :dataB1
    	t.string :dataB2
    	t.string :dataB3

    	t.integer :inventory3
    	t.string :processC
    	t.text :resourceC
    	t.string :dataC1
    	t.string :dataC2
    	t.string :dataC3

    	t.integer :inventory4
    	t.string :processD
    	t.text :resourceD
    	t.string :dataD1
    	t.string :dataD2
    	t.string :dataD3

    	t.integer :PLT1
    	t.integer :PLT2
    	t.integer :PLT3
    	t.integer :PLT4

    	t.integer :PT1
    	t.integer :PT2
    	t.integer :PT3


    	t.timestamps
    end
  end
end

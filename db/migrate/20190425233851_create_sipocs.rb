class CreateSipocs < ActiveRecord::Migration[5.2]
  def change
    create_table :sipocs do |t|
      t.string :file_name

      t.string :supplier1
      t.string :input1
      t.string :process_requirement1
      t.string :process1
      t.string :output1
      t.string :customer_requirement1
      t.string :customer1

      t.string :supplier2
      t.string :input2
      t.string :process_requirement2
      t.string :process2
      t.string :output2
      t.string :customer_requirement2
      t.string :customer2

      t.string :supplier3
      t.string :input3
      t.string :process_requirement3
      t.string :process3
      t.string :output3
      t.string :customer_requirement3
      t.string :customer3

      t.string :supplier4
      t.string :input4
      t.string :process_requirement4
      t.string :process4
      t.string :output4
      t.string :customer_requirement4
      t.string :customer4

      t.string :supplier5
      t.string :input5
      t.string :process_requirement5
      t.string :process5
      t.string :output5
      t.string :customer_requirement5
      t.string :customer5

      t.timestamps
    end
  end
end

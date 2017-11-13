class Student < ApplicationRecord
  validates :first_name, :last_name, :email, :cell_phone, :home_phone,
            :work_phone, presence: true
  validates :email, email: true
  validates :cell_phone, :home_phone, :work_phone,
            format: {
              with: /\d\d\d-\d\d\d-\d\d\d\d/,
              message: 'should be like xxx-xxx-xxxx'
            }
end

class Store < ActiveRecord::Base
  has_many :employees

  

  validates :name, presence: true
  validates :name, length: { maximum: 25 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validates :male_employees, numericality: {greater_than_or_equal_to: 0}
  validates :female_employees, numericality: {greater_than_or_equal_to: 0}

  # after_create :increase_female_employee, if: :female_employees
  # after_create :increase_male_employee, if: :male_employees
 

  def annual_expense
    sum = 0
  employees.each do |employee|
    sum += employee.annual_salary
  end
  return sum
  end

  def annual_profit
    annual_revenue - annual_expense
  end

    # def increase_female_employee
    #   self.female_employees += 1
    #   self.save
    # end

    #  def increase_male_employee
    #   self.male_employees += 1
    #   self.save
    # end


end

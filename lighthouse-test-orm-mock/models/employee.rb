class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true


  after_create :increment_store_count
  after_destroy :decrement_store_count

  def annual_salary
    hourly_rate * 1950
  end

  def self.average_hourly_rate_for(gender)
    all_employees = Employee.all
    if gender == 'M'
      all_employees.where("gender = ?", 'M').average(:hourly_rate).round(2)
    else
      all_employees.where("gender = ?", 'F').average(:hourly_rate).round(2)
    end
  end
    # if gender == 'M'
    #   @male_average = self.where("gender = ?", 'M').average(:hourly_rate)
    #   puts @male_average
    # end

    private
    def increment_store_count
      if gender == 'F'
        store.increment!(:female_employees)
      else
        store.increment!(:male_employees)
      end
    end    

    def decrement_store_count
      if gender == 'F'
        store.decrement!(:female_employees)
      else
        store.decrement!(:male_employees)
      end
    end


end





# bob = Employee.new
# puts bob
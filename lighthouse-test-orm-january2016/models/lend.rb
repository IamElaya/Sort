class Lend < ActiveRecord::Base

  belongs_to :library
  belongs_to :book

  validate :wrong_date1
  validate :wrong_date2
  after_save :is_extended

  def overdue?
    if checkout && due && checkin.nil? && checkout < due || (checkout && due && checkin && due < checkin)
      return true
    else
      if checkout && due && checkin && checkin < due
        return false
      end
    end
  end

  def fees
    library.late_fee * (checkin - due)
  end

  def days
    if due && checkout && due > checkout
      due - checkout
    end
  end


  protected

    def wrong_date1
      if due && checkout && due < checkout
        errors.add(:due, 'due date must be after checkout')
      end
    end

    def wrong_date2
      if checkin && checkout && checkin < checkout 
        errors.add(:checkin, 'checkin date must be after checkout')
      end
    end

    def is_extended
      if self.days > 2
        self.extended = true
      end
    end

end

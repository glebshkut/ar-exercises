class Employee < ActiveRecord::Base


  belongs_to :store

  validate :must_have_first_name,
    :must_have_last_name,
    :must_have_hourly_rate,
    :must_be_assigned_to_store

  def must_have_first_name
    if !first_name || first_name == ""
      errors.add(:first_name, "can't be empty")
    end
  end

  def must_have_last_name
    if !last_name || last_name == ""
      errors.add(:last_name, "can't be empty")
    end
  end

  def must_have_hourly_rate
    if !hourly_rate || hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "wrong hourly rate")
    end
  end

  def must_be_assigned_to_store
    if !store_id
      errors.add(:store_id, "store_id is not specified")
    end
  end

end

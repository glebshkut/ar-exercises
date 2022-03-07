class Store < ActiveRecord::Base


  has_many :employees

  validate :must_have_name,
    :must_have_annual_revenue,
    :must_have_apparel

  def must_have_name
    if name.length < 3
      errors.add(:name, "can't be less than 3 chars")
    end
  end

  def must_have_annual_revenue
    if annual_revenue < 0
      errors.add(:name, "revenue can't be less than 0")
    end
  end

  def must_have_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "can't have no apparel")
      errors.add(:womens_apparel, "can't have no apparel")
    end
  end

end

require 'date'


module DateSupport

  ELIG_MONTHS = 13

  def calculate_plan_elig(date_of_employment)
    # convert string to Date
    empl_date = Date.strptime(date_of_employment,'%m/%d/%Y')
    # add number of months
    elig_date = empl_date >> ELIG_MONTHS

  end

  def calculate_anniversary(date_of_employment, anniversary_years = 10)
    # convert string to Date
    empl_date = Date.strptime(date_of_employment,'%m/%d/%Y')
    # add number of years
    annivers_date = empl_date.next_year(anniversary_years)
  end

  def calculate_paycheck_date(date_of_employment, num_days )
    # convert string to Date
    empl_date = Date.strptime(date_of_employment,'%m/%d/%Y')
    #add nunmber of days
    annivers_date = empl_date + num_days
  end


end



#Reference:
# https://ruby-doc.org/stdlib-2.4.1/libdoc/date/rdoc/Date.html
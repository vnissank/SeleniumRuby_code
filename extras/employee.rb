require "../extras/date_support"

class Employee
  include DateSupport
  PAYCHECK_DAYS = 15
  def initialize(employee_name, start_date)
    @name = employee_name
    @employment_date = start_date
  end

  def print_elig_date
    eligib_date = calculate_plan_elig(@employment_date)
    date_with_slashes = eligib_date.strftime('%m/%d/%Y')
    puts "#{@name} start date is #{@employment_date}, eligible for plan in #{ELIG_MONTHS} month on #{date_with_slashes}"
  end

  def print_anniversary_message
    years = 5
    anniversary_date = calculate_anniversary(@employment_date)
    puts "#{@name} start date is #{@employment_date}, #{years} years anniversary date is on #{anniversary_date}"
  end

  def print_paycheck_date
    pay_date = calculate_paycheck_date(@employment_date, PAYCHECK_DAYS)
    puts "#{@name} start date is #{@employment_date}, paycheck date in #{PAYCHECK_DAYS} days is on #{pay_date}"
  end

end

new_employee_obj = Employee.new('Olga Godlevska', '01/30/2016')
new_employee_obj.print_elig_date
new_employee_obj.print_anniversary_message
new_employee_obj.print_paycheck_date

d1 = Employee.new('Olga', 10)

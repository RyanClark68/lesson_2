


def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Hi, what is your name?")


name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure you use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

prompt("Now let's figure out your car loan amount!")

prompt("What is the total amount of your car loan?")


  car_loan = ''
  loop do
    car_loan = Kernel.gets().chomp()
    if car_loan.empty?()
      prompt("You need to enter a valid number.")
    else
      break
    end
  end

prompt("Ok, so your car loan amount is #{car_loan}")

prompt("Ok, we need just a few more pieces of information. Now we need the Annual Percentage Rate (APR)")

prompt("What is your APR?")

annual_percentage_rate = ''
  loop do
    annual_percentage_rate = Kernel.gets().chomp()

    if annual_percentage_rate.empty?() || annual_percentage_rate.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

prompt("Great, so your APR is #{annual_percentage_rate}.")
prompt("Now I just need to get the duration of your loan.")
prompt("What is the duration of your loan in years?")

 loan_duration = ''
  loop do
    loan_duration = Kernel.gets().chomp()

    if loan_duration.empty?() || loan_duration.to_i() < 0
      prompt("Enter a valid number")
    else
      break
    end
  end

  prompt("Thank you for the information!")

 annual_percentage_rate = annual_percentage_rate.to_f() / 100
  monthly_interest_rate = annual_percentage_rate / 12
  months = loan_duration.to_i() * 12

  monthly_payment = car_loan.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months.to_i()))

  prompt("Your monthly payment will be: $#{format('%02.2f', monthly_payment)}")
  prompt("Have a great day!")

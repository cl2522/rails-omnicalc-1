class CalcController < ApplicationController

  def home
    render({ :template => "calc/home" })
  end

  def square
    render({ :template => "calc/square" })
  end

  def square_results

    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2

    
    render({ :template => "calc/square_results" })
  end

  def root
    render({ :template => "calc/root" })
  end

  def root_results

    @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 0.5

    render({ :template => "calc/root_results" })
  end

  def random
    render({ :template => "calc/random" })
  end

  def random_results

    @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f

  @result = rand(@min..@max)

    render({ :template => "calc/random_results" })
  end

  def payment
    render({ :template => "calc/payment" })
  end

  def payment_results

    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_f

    @r = @apr / 100 / 12
    @n = @years * 12

    @numerator = @r * @pv
    @denominator = 1 - ((1 + @r) ** (-@n))

    @monthly_payment = @numerator / @denominator

    render({ :template => "calc/payment_results" })
  end
end

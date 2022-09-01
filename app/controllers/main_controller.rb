class MainController < ApplicationController
  def test
  
  end
  def calculate
    @s1 = params[:subject1]
    @s2 = params[:subject2]
    @s3 = params[:subject3]
    @p1 = params[:point1]
    @p2 = params[:point2]
    @p3 = params[:point3]

    @numbersArray = [@p1.to_i, @p2.to_i, @p3.to_i]
    @max_number = @numbersArray.max()
    @sum_number = @numbersArray.sum
  end 

end

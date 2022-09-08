class MainController < ApplicationController
  def test
    @round = params[:round]
    @name = params[:name]
    @score = params[:score]
  end
  def calculate

   
    names = params[:subject][:name]
    scores = params[:subject][:score]
    scores = scores.map(&:to_i)
    names.each do |name|
      if name == ""
        redirect_to controller: "main", action: "test", round: params[:round]
      end
    end
    scores.each do |score|
      if score == ""
        redirect_to controller: "main", action: "test", round: params[:round]
      end
    end
    max_number = scores.max()
    index_of_max_number = scores.rindex(max_number)
    @subject_of_max = names[index_of_max_number]
    @sum_number = scores.sum
    
  end 

end

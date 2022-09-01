class ScoreController < ApplicationController
  def index
    @subject1 = params[:subject1]
    @subject2 = params[:subject2]
    @subject3 = params[:subject3]
    @score1 = params[:mark1].to_i
    @score2 = params[:mark2].to_i
    @score3 = params[:mark3].to_i
    @sumScore = @score1 + @score2 + @score3
    @maxScore = [@score1,@score2,@score3].max
    if @maxScore == @score1
      @maxScoreSubject = @subject1;
    elsif @maxScore == @score2
      @maxScoreSubject = @subject2;
    else
      @maxScoreSubject = @subject3;
   end
  end
end

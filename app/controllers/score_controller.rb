class ScoreController < ApplicationController
  def index
    @sumScore = params[:sumScore]
    @maxScoreSubject = params[:maxScoreSubject]
   end
end 
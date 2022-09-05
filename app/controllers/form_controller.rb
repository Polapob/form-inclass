class FormController < ApplicationController
  def index
    @number_of_choices = params[:number_of_choices];
    choices = @number_of_choices.to_i - 1;
    @is_first_time = params[:is_first_time];
    @subjectOld = [];
    @scoreOld = [];
    @sum_score = 0;
    @max_score = 0;
    @max_subject = "";
    @isEmp = false;

    if !@is_first_time
      @is_blank = false
      for i in 1..@number_of_choices.to_i+1
        @name = params["subject_#{i}"]
        @mark = params["mark_#{i}"]
        if @name === "" || @mark === ""
          @is_blank = true;
        end

        @prev_max_score = @max_score;
        @max_score = [@mark.to_i,@max_score].max;

        if @max_score != @prev_max_score
          @max_subject = @name
          end
        @sum_score += @mark.to_i;
      
      end
      if !@is_blank
        redirect_to "/score/index?sumScore=#{@sum_score}&maxScoreSubject=#{@max_subject}"
        end
    end

end
  def score
    
  end
  def home
    @is_first_time = true;
  end
end

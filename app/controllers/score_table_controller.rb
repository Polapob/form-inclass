class ScoreTableController < ApplicationController
    def list
        @commit = params[:commit]
        if (@commit == "delete")
          Student.delete(params[:id_edit])
        end
        @data = []
        @sumScore = 0
        @maxScore = -1
        @maxScoreSubject = ""
        Student.find_each do |eachStudent|
          @data.append([eachStudent.subject, eachStudent.points, eachStudent.id])
          @sumScore += eachStudent.points
          if (eachStudent.points >= @maxScore)
            @maxScore = eachStudent.points.to_i
            @maxScoreSubject = eachStudent.subject
          end
        end
      end
      def edit
        @edit = params[:form_edit]
        if (@edit)
          @subject_update = params[:subject_update]
          @point_update = params[:point_update]
          @id_update = params[:id_update]

          @isStringEmpty = false
          if (@subject_update.strip === "" || @point_update === "")
            @isStringEmpty = true
          end

          @isUpdateSuccess = false
          if (!@isStringEmpty)
            @check = Student.where(id: @id_update).first                         #Update data           
            @check.subject = @subject_update.strip
            @check.points = @point_update.to_i
            @check.save
            @isUpdateSuccess = true
          end
    
          @subject_edit = @subject_update       
          @point_edit = @point_update
          @id_edit = @id_update
        else                                   
          @subject_edit = params[:subject_edit]
          @point_edit = params[:point_edit].to_i
          @id_edit = params[:id_edit].to_i
        end
      end

end

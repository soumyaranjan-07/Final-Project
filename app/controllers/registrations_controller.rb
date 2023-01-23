class RegistrationsController < Devise::RegistrationsController
    def sign_up_params
        params.require(:student).permit(:email,:password,:password_confirmation,:name,:avatar_image)
    end
    def edit
    end 

    def update
        respond_to do |format|
            if @student.update(student_params)
              format.html { redirect_to student_dashboard_path, notice: "Profile was successfully updated." }
            else
              format.html { render :edit, status: :unprocessable_entity }
            end
          end
    end
    private
    def student_params
        params.require(:student).permit(:email,:password,:password_confirmation,:name,:avatar_image)
    end
end

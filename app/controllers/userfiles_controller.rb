class UserfilesController < ApplicationController
  def create
    unless params.has_key? :userfile
      redirect_to(root_path, :alert => "File upload failed!")
    else
      @userfile = current_user.userfiles.create(userfile_params)
      if @userfile.save
        redirect_to(root_path, :notice => "File uploaded successfully!")
      else
        redirect_to(root_path, :alert => "File upload failed!")
      end
    end
  end

  def destroy
    @userfile = current_user.userfiles.find(params[:id])
    @userfile.destroy
    redirect_to(root_path, :notice => "File deleted!")
  end

  private
  def userfile_params
    params.require(:userfile).permit(:blob)
  end
end

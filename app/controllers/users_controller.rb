class UsersController < ApplicationController



 # http_basic_authenticate_with name:"1",password:"",
  def new
    @user = User.new
  end
def create
@user=User.new(post_params)
  @user.save
if @user.errors.any?
  flash[:notice] = "Введите данные повторно"
  render 'new'
else
  flash[:notice] ="Пользователь успешно создан"
  redirect_to "/main"
end

end
  private def post_params
    params.require(:user).permit(:name,:last_name,:login,:password)
end

  def index
    @user = User.all

  end
  def show

    @user = User.name
  end
  private def post_params2
    params.require(:user).permit(:id)
  end
  def main

  end
  def signup

  end
  def check

    user= User.find_by_login(params[:user][:login])
    login(user.login) if user && user.password == params[:user][:password]
    flash[:notice] = "Пользователь создан"
end



end














class LoginController < ApplicationController
  def index
  end
  
  def create
    @user = User.find_by(cpf: params[:session][:cpf])
    if @user && (params[:session][:password] == @user.password)
      session[:user_id] = @user.id
      session[:user_tipo] = @user.tipo
      redirect_to '/machines'
    else
      redirect_to '/', notice: 'Você errou seu cpf ou sua senha, digite novamente.'
    end 
  end
  def destroy 
    session[:user_id] = session[:user_tipo] = nil 
  redirect_to '/' 
  end
end

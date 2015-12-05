class LoginController < ApplicationController
  def index
  end
  
  def create
    @user = User.find_by(cpf: params[:session][:cpf])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      session[:user_tipo] = @user.tipo
      session[:user_name] = @user.name
      redirect_to '/index'
    else
      flash.now[:notice] = 'Você errou seu cpf ou sua senha, digite novamente.'
      render 'index'
      #redirect_to '/', notice: 'Você errou seu cpf ou sua senha, digite novamente.'
    end 
  end
  def destroy 
    if session[:user_id]
      session[:user_id] = session[:user_tipo] = session[:user_name] = nil 
      redirect_to '/' 
    else
      redirect_to '/' 
    end
  end
end

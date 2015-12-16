class LoginController < ApplicationController
  def index
  end
  
  #Recuperação de Senha
  def recover
    @user = User.find_by(cpf: params[:recover][:cpf])
    unless @user.nil?
      @pass = (0...6).map { (97 + rand(25)).chr }.join
      @user.password = @pass
      @user.save
      UserMailer.newpass_email(@user, @pass).deliver_now unless Rails.env.development?
      redirect_to '/', notice: "Uma nova senha foi enviada para o email: #{@user.email}, aguarde o recebimento."
    else
      redirect_to '/', notice: 'CPF inválido, digite um CPF valido para o recebimento de uma nova senha.'
    end
  end
  
  #Criação de Session para autenticação
  def create
    @user = User.find_by(cpf: params[:session][:cpf])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to index_path
    else
      redirect_to '/', notice: 'Você errou seu cpf ou sua senha, digite novamente.'
    end 
  end
  
  #Destruição da session
  def destroy 
    if session[:user_id]
      session[:user_id] = nil 
      redirect_to '/'
    else
      redirect_to '/' 
    end
  end
end

class UserMailer < ApplicationMailer
  default from: 'SmartCase <smartcase@cin.ufpe.br>'
 
  def welcome_email(user, pass)
    @user = user
    @pass = pass
    @url  = 'http://smartcase.herokuapp.com'
    mail(to: @user.email, subject: 'Cadastro NATI - CCSA')
  end
  def newpass_email(user, pass)
    @user = user
    @pass = pass
    @url  = 'http://smartcase.herokuapp.com'
    mail(to: @user.email, subject: 'Alteração de senha NATI - CCSA')
  end
end
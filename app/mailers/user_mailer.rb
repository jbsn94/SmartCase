class UserMailer < ApplicationMailer
  default from: 'SmartCase <smartcase@cin.ufpe.br>'
 
  def welcome_email(user, pass)
    @user = user
    @pass = pass
    @url  = 'http://smartcase.herokuapp.com'
    mail(to: @user.email, subject: 'Cadastro NATI - CCSA')
  end
end
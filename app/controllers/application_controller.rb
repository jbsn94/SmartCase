class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user 
  
  #Autenticação de Usuário
  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end
  
  #Autenticação de Usuário
  def require_user 
      redirect_to '/', notice: 'Você não está logado.' unless current_user
  end
  
  #Requerimento de Solicitante
  def require_solic
    redirect_to '/index', notice: 'Pagina apenas para Solicitantes.' unless current_user.tipo == 'Solicitante'
  end
  
  #Requerimento de Funcionário ou Administrador
  def require_func
    redirect_to '/index', notice: 'Pagina apenas para Funcionários e Administradores.' unless current_user.tipo == 'Funcionário' or current_user.tipo == 'Administrador'
  end
  
  #Requerimento de Administrador
  def require_admin
    redirect_to '/index', notice: 'Pagina apenas para Administradores.' unless current_user.tipo == 'Administrador'
  end
end

class HomeController < ApplicationController
  before_action :require_user
  
  def index
    @menuHome = "active-menu"
  end
  def dashboard
    @users = User.where(tipo: 'Solicitante').count
    @machines = Machine.count
    @funcionarios = User.where(tipo: 'Funcionário').count + User.where(tipo: 'Administrador').count
    @menuPainel = "active-menu"
  end
end

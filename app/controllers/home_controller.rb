class HomeController < ApplicationController
  before_action :require_user
  
  def index
    @menuHome = "active-menu"
  end
  def dashboard
    @users = User.where(tipo: 'Solicitante').count
    @machines = Machine.count
    @chamados = Order.count
    @funcionarios = User.where(tipo: 'Funcionário').count + User.where(tipo: 'Administrador').count
    @current_order = Order.all.reverse_order
    @menuPainel = "active-menu"
  end
end

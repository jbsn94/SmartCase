class HomeController < ApplicationController
  before_action :require_user
  
  def index
    @users = User.where(tipo: 'Solicitante').count
    @machines = Machine.count
    @funcionarios = User.where(tipo: 'Funcionario').count + User.where(tipo: 'Administrador').count
    @menuHome = "active-menu"
  end
end

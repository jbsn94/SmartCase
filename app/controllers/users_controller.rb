class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user
  before_filter :set_menu
  before_action :require_admin, only: [:destroy]
  before_action :require_func, except: [:edit, :destroy, :update]
  
  #MarkMenu
  def set_menu
    @menuUser = "active-menu"
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    if session[:user_tipo] != 'Administrador' && @user.id != session[:user_id]
      redirect_to index_path, notice: 'Perfil de usuário incorreto, você só poderá editar o seu perfil.'
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @pass = (0...6).map { (97 + rand(25)).chr }.join
    @user.password = @pass
    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user, @pass).deliver_now unless Rails.env.development?
        format.html { redirect_to @user, notice: "#{@user.name} foi criado com sucesso." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    respond_to do |format|
      if @user.update(user_params)
        if session[:user_tipo] == 'Solicitante'
          format.html { redirect_to index_path, notice: "#{@user.name} foi atualizado com sucesso." }
        else
          format.html { redirect_to @user, notice: "#{@user.name} foi atualizado com sucesso." }
          format.json { render :show, status: :ok, location: @user }
        end
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @name = @user.name
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "#{@name} foi deletado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      unless User.find_by(id: params[:id]).nil?
        @user = User.find(params[:id])
      else
        redirect_to index_path, notice: 'Este usuário não existe.'
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :cpf, :password, :tipo)
    end
end

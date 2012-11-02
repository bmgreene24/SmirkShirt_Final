class UsersController < ApplicationController
  before_filter :authenticate, :except => [:create]

  def new
    @user = User.new
  end

    def create
      @user = User.new(params[:user])
      @user.last_login = DateTime.now()
      if @user.save
        if current_user and current_user.admin
          redirect_to users_path, :notice => 'User creation successful!'
        else
          session[:user_id] = @user.id
          redirect_to products_path, :notice => 'User creation successful!'
        end
      else
        render :action => 'new', :notice => 'User creation failed!'
      end
      end

  def authenticate
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Please log in"
    end
  end

  def index
    redirect_to(root_url) unless current_user.admin
    @users = User.find(:all)
  end

  def edit
    return unless (params[:id] == current_user.id.to_s()) or current_user.admin
    @user = User.find(params[:id])
  end

  def show
    return unless (params[:id] == current_user.id.to_s()) or current_user.admin
    @user = User.find(params[:id])
    @current_cart = current_cart

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def destroy
    return unless current_user.admin?
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
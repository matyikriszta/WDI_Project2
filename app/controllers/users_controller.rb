class UsersController < ApplicationController
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def dashboard
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def inbox
  @title = "Inbox"
  @messages = current_user.received_messages
  end

  def new_message
    @message = ActsAsMessageable::Message.new
  end

  def create_message
    @to = User.find_by_email(params[:acts_as_messageable_message][:to])
    current_user.send_message(@to, params[:acts_as_messageable_message][:topic], params[:acts_as_messageable_message][:body])
    raise
    redirect_to :back, notice: "Message sent to Owner"
  end

  def destroy_message
    @message = current_user.messages.find(params[:id])
    if @message.destroy
      flash[:notice] = "All ok"
    else
      flash[:error] = "Fail"
    end
  end
end

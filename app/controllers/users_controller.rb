class UsersController < ApplicationController
  def index
    @messages = current_user.received_messages
  end
  def new
    @message = ActsAsMessageable::Message.new
  end

  def create
    @to = User.find_by_email(params[:message][:to])
    current_user.send_message(@to, params[:message][:topic], params[:message][:body])
  end

  def show
    @message = current_user.messages.find(params[:id])
  end

  def dashboard

  end
end

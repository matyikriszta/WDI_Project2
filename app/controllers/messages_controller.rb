class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.json
  def inbox
    @messages = current_user.received_messages
  end

  def outbox
    @messages = current_user.sent_messages
    render :inbox
  end

  def new_message
    @message = ActsAsMessageable::Message.new
  end

  def create_message
    @to = User.find_by_email(params[:message][:to])
    current_user.send_message(@to, params[:message][:topic], params[:message][:body])
    redirect_to messages_path
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

class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.json
  def inbox
    @messages = current_user.received_messages
  end

  def outbox
    @messages = current_user.sent_messages
  end

  def all
    @messages = current_user.messages
  end

  def new_message
    @message = ActsAsMessageable::Message.new
  end

  def create_message
    @to = User.find_by_email(params[:message][:to])
    current_user.send_message(@to, params[:message][:topic], params[:message][:body])
    redirect_to messages_path
  end

  def conversation
    @message = current_user.messages.find_by_id(params[:id])
    render :conversation
  end

  def reply
    @message = current_user.messages.find_by_id(params[:id])
    @message.reply(params[:topic], params[:body])
    redirect_to conversation_path(@message)
  end

  def destroy_message
    @message = current_user.messages.find(params[:id])
    if @message.destroy
      flash[:notice] = "All ok"
    else
      flash[:error] = "Fail"
    end
    redirect_to messages_path
  end

  def trash
    @messages = current_user.deleted_messages
  end
end

class MessagesController < ApplicationController
  authorize_resource
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
    @to = User.find(params[:acts_as_messageable_message][:to])
    current_user.send_message(@to, params[:acts_as_messageable_message][:topic], params[:acts_as_messageable_message][:body]) unless @to == current_user
      
    end
    redirect_to all_path
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
    @message.conversation.destroy_all
    #   flash[:notice] = "All ok"
    # else
    #   flash[:error] = "Fail"
    # end
    redirect_to all_path
  end

  def mark_as_read
    @message = current_user.messages.find_by_id(params[:id])
    @message.opened = true
    @message.save
    redirect_to all_path
  end
end

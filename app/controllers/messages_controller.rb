class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  end

  def new
  	@messages = Message.new
  end

  def create
	Message.create(check_params)
	redirect_to messages_path
	end
private
	def check_params
	params.require(:message).permit(:m_name, :m_subject, :m_description)
	end
end

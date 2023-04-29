class MessagesController < ApplicationController
    before_action :set_topic, only: %i[new create]

    def new
        @message = @topic.messages.new
    end

    def create
        @message = @topic.messages.create!(message_params)

        respond_to do |format|
            format.turbo_stream
            format.html { redirect_to @topic}
        end
    end

    private
        def set_topic
            @topic = Topic.find(params[:topic_id])
        end

        def message_params
            params.require(:message).permit(:content)
        end
end

class TopicsController < ApplicationController
	before_action :authenticate_user!
  before_action :set_topic, only: [:edit, :update, :destroy, :show]

  def index
		@topics = Topic.all
		if params[:back]
      @topic = Topic.new(topics_params)
    else
      @topic = Topic.new
			@topic.pictures.build
    end
  end

	def mypage
		@user = current_user
	end

	def new
  end

  def create
		@topic = Topic.new(topics_params)

    @topic.user_id = current_user.id
    if params[:back]
      render  :new
    else
      @topic.save
      if @topic.save
       redirect_to topics_path
      else
       render :new
      end
    end

  end

  def show
		@comment = @topic.comments.build
		@comments = @topic.comments
		@comments = @comments.order(:created_at)
  end

  def edit
		unless current_user ==  @topic.user
      redirect_to topics_path
    end
  end

  def update
		if @topic.update(topics_params)
    redirect_to topics_path
    else
      render action: 'edit'
    end
  end

  def destroy
		@topic.destroy
    redirect_to topics_path
  end

	private
   def topics_params
     params.require(:topic).permit(:title, :content, pictures_attributes: [:id, :image])
   end

   def set_topic
     @topic = Topic.find(params[:id])
   end
end

class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
  end

	def create
	 @comment = current_user.comments.build(comment_params)
	 @topic = @comment.topic
	 respond_to do |format|
		 if @comment.save
			 format.html { redirect_to topic_path(@topic) }
			 format.js { render :index }
		 else
			 format.html { render :new }
		 end
	 end
 end

  def edit
  end

	def update
	  respond_to do |format|
	    if @comment.update(comment_params)
	      format.html { redirect_to topic_path(@topic), notice: 'コメントを訂正しました。' }
	      format.js { render :edit_index }
	    else
	      format.html { redirect_to topic_path(@topic), notice: 'エラーが発生しました。' }
	    end
	  end
	end

  def destroy
		respond_to do |format|
      @comment.destroy
      format.html { redirect_to topic_path(@topic)}
      format.js { render :delete }
    end
  end

	private
		def comment_params
			params.require(:comment).permit(:topic_id, :content)
		end

		def set_comment
			@comment = Comment.find(params[:id])
			@topic = @comment.topic
		end
end

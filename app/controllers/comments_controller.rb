class CommentsController < ApplicationController
  def create
    @accommodation = Accommodation.find(params[:accommodation_id])
    @user = @accommodation.user
    @comment = @accommodation.comments.build(user_id: current_user.id, content: params[:comment][:content])
    if !@accommodation.nil? && @comment.save
      flash[:success] = "Your comment is successfully added"
      if @user != current_user
        @user.notifications.create(accommodation_id: @accommodation.id, variety: 2,
                                   from_user_id: current_user.id,
                                   content: @comment.content) 
        @user.update_attribute(:notification, true)
      end
    else
      flash[:danger] = "Should be add some comment"
    end
    redirect_to request.referrer || root_url
  end

  def destroy
    @comment = Comment.find(params[:id])
    @accommodation = @comment.accommodation
    if current_user.id == @comment.user_id
      @comment.destroy
      flash[:success] = "Your comment is deleted"
    end
    redirect_to accommodation_url(@accommodation)
  end
end

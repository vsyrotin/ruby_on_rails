class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @ticket = Ticket.find(params[:ticket_id])
    @comment = @ticket.comments.create(comment_params)
    redirect_to tickets_path(@ticket)
  end

  def destroy
    @ticket = Ticket.find(params[:ticket_id])
    @comment = @ticket.comments.find(params[:id])
    @comment.destroy
    redirect_to tickets_path(@ticket)
  end

  private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end

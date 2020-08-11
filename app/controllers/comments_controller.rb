class CommentsController < ApplicationController

    def index
        @comments = Comment.all
        render json: @comments
    end 

    def create
        @comment = Comment.create(content: params[:content], hero_id: params[:heroId])
        render json: @comment
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment = @comment.destroy
        render json: @comment
    end 

    private

    def comment_params
      params.require(:comment).permit([:hero_id, :content])
    end

end

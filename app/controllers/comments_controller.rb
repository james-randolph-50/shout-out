class CommentsController < ApplicationController

    def create
        @shout = Shout.find(params[:shout_id])
        @comment = @shout.comments.create(params[:comment].permit(:name, :comment))
        redirect_to shout_path(@shout)
    end

    def destroy
        @shout = Shout.find(params[:shout_id])
        @comment = @shout.comments.find(params[:id])
        @comment.destroy
        redirect_to shout_path(@shout)
    end


end

class Comments::CommentsController < CommentsController
    before_action :set_commentable

    private

    def set_commentable
        @commentable = Comment.find(params[:Comment_id])
    end
end
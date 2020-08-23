class Comments::CommentsController < CommentsController
    defore_action :set_commentable

    private

    def set_commentable
        @commentable = Comment.find(params[:Comment_id])
    end
end
class Highlights::CommentsController < CommentsController
    defore_action :set_commentable

    private

    def set_commentable
        debugger
        @commentable = Highlight.find(params[:Highlight_id])
    end
end
json.array! @comments, partial: "api/comments/comment", as: :comment
# json.array! @comments, partial: "api/comments/comment", locals: {commentable: @highlight}
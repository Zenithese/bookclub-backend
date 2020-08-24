json.extract! comment, :id, :commentable_type, :commentable_id, :body, :user_id, :comments
# json.commentable_path polymorphic_url(comment.commentable)
# json.url comment_url(comment, format: :json)

# commentable.comments.each do |comment|
#     json.extract! comment, :id, :commentable_type, :commentable_id, :body, :user_id, :created_at, :updated_at
# end
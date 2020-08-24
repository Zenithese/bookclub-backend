# json.extract! comment, :id, :commentable_type, :commentable_id, :body, :user_id, :comments

json.id comment.id
json.user_id comment.user_id
json.commentable_type comment.commentable_type
json.commentable_id comment.commentable_id
json.body comment.body
json.comments do 
    json.array! comment.comments, partial: "api/comments/comment", as: :comment
end
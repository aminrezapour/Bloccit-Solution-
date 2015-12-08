class FavoriteMailer < ApplicationMailer
  default from: "aminrezapour@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@shrouded-plateau-3477.herokuapp.com"
    headers["In-Reply_To"] = "<post/#{post.id}@shrouded-plateau-3477.herokuapp.com>"
    headers["References"] = "<post/#{post.id}@shrouded-plateau-3477.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "new comment on #{post.title}")
  end
end

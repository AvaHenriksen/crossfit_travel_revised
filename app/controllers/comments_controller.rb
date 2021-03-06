class CommentsController < ApplicationController


  def create
    @comment = Comment.new

    @comment.body = params[:body]
    @comment.location_id = params[:location_id]
    @comment.user_id = params[:user_id]

    save_status = @comment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/comments/new", "/create_comment"
        redirect_to("/comments")
      else
        redirect_back(:fallback_location => "/", :notice => "Comment created successfully.")
      end
    else
      render("comments/new.html.erb")
    end
  end

  def edit
    @comment = Comment.find(params[:id])

    render("comments/edit.html.erb")
  end

  def update
    @comment = Comment.find(params[:id])

    @comment.body = params[:body]
    @comment.location_id = params[:location_id]
    @comment.user_id = params[:user_id]

    save_status = @comment.save

    redirect_to("locations/#{@comment.location_id}.html.erb", :notice => "Comment updated")
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy

    if URI(request.referer).path == "/comments/#{@comment.id}"
      redirect_to("/", :notice => "Comment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Comment deleted.")
    end
  end
end

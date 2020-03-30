class PostsController < ApplicationController

  def index
    @posts=Post.all
  end


  def new
    
  end

  def  create
    #validatate data
    # store data
    # @post=Post.new
    # @post.title=params[:title]
    # @post.text=params[:text]
    @post=Post.create(post_param)
    @post.save()
    redirect_to :posts
  end

  def edit
    @post=Post.find(params[:id])

  end

  def  update
    @post=Post.find(params[:id])
    @post.update(post_param)
    redirect_to action:  :index
  
  end

  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to  :posts


  end


  def show
  
  end
  def post_param
    params.require(:post).permit(:title,:text)
  end
end
  

  
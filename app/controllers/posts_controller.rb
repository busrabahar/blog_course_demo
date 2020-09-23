class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    def index
    end
    def new
        @post =Post.new
    end
    def create
        @post=Post.new post_params

    if @post.save 
        redirect_to @post, notice: "Hellz yeah, Busra! Your article was succesfully saved!"
    else
        render 'new', notice: "Oh no, Busra! I was unable to save your post."
    end
end
def show
end

    private
    def post_params
        params.require(:post).permit(:title, :content)
    end

    def find_post
        @post = Post.find(params[:id])
    end
end

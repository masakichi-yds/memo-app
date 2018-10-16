class MemosController < ApplicationController

  def index
    @memos = Memo.where(user_id: @current_user.id)
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      flash[:notice] = "メモを作成しました"
      redirect_to '/memos/index'
    else
      render "memos/new"
    end
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    @memo = Memo.find(params[:id])
    @memo.title = memo_params[:title]
    @memo.body = memo_params[:body]
    @memo.category_id = memo_params[:category_id]
    if @memo.save
      flash[:notice] = "メモを更新しました"
      redirect_to "/memos/index"
    else
      render "memos/edit"
    end
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    flash[:notice] = "メモを削除しました"
    redirect_to "/memos/index"
  end

  private

  def memo_params
    params.require(:memo).permit(:title,:body,:category_id).merge(user_id: @current_user.id)
  end


end

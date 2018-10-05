class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to '/'
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to "/"
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to "/"
  end

  private

  def memo_params
    params.require(:memo).permit(:title,:body)
  end


end

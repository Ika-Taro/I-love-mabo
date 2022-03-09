class ItemsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :edit]


  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :moto_id, :touban_id, :touchi_id, :tenmen_id,
      :soy_sauce_id, :sake_id, :soup_id, :chili_pepper_id, :oil_id, :minced_meat_id,
      :negi_id, :tofu_id, :garlic_id, :ginger_id, :huajiao_id, :image, :explanatory_note).merge(user_id: current_user.id)
  end

end

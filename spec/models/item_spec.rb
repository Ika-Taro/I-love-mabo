require 'rails_helper'


RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
  describe '商品出品' do
    context '商品出品できるとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@item).to be_valid
      end
      it '麻婆豆腐の素の欄は空でも保存できること' do
        @item.moto_id = '1'
        expect(@item).to be_valid
      end
      it '豆板醤の欄は空でも保存できること' do
        @item.touban_id = '1'
        expect(@item).to be_valid
      end
      it '豆鼓の欄は空でも保存できること' do
        @item.touchi_id = '1'
        expect(@item).to be_valid
      end
      it '甜麺醤の欄は空でも保存できること' do
        @item.tenmen_id = '1'
        expect(@item).to be_valid
      end
      it '醤油の欄は空でも保存できること' do
        @item.soy_sauce_id = '1'
        expect(@item).to be_valid
      end
      it '酒の欄は空でも保存できること' do
        @item.sake_id = '1'
        expect(@item).to be_valid
      end
      it 'スープの欄は空でも保存できること' do
        @item.soup_id = '1'
        expect(@item).to be_valid
      end
      it '唐辛子の欄は空でも保存できること' do
        @item.chili_pepper_id = '1'
        expect(@item).to be_valid
      end
      it '油の欄は空でも保存できること' do
        @item.oil_id = '1'
        expect(@item).to be_valid
      end
      it '挽肉の欄は空でも保存できること' do
        @item.minced_meat_id = '1'
        expect(@item).to be_valid
      end
      it 'ネギの欄は空でも保存できること' do
        @item.negi_id = '1'
        expect(@item).to be_valid
      end
      it '豆腐の欄は空でも保存できること' do
        @item.tofu_id = '1'
        expect(@item).to be_valid
      end
      it 'にんにくの欄は空でも保存できること' do
        @item.garlic_id = '1'
        expect(@item).to be_valid
      end
      it 'しょうがの欄は空でも保存できること' do
        @item.ginger_id = '1'
        expect(@item).to be_valid
      end
      it '花椒の欄は空でも保存できること' do
        @item.huajiao_id = '1'
        expect(@item).to be_valid
      end
      it '画像は無くても保存できること' do
        @item.image = nil
        expect(@item).to be_valid
      end
    end

    context '商品出品できないとき' do
      it 'nameが空では保存できない' do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Nameを入力してください")
      end
      it 'userが紐づいていなければ保存できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Userを入力してください")
      end
    end
  end
end
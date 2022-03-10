require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do

      it 'nicknameが空では登録できない' do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include ("Nickname translation missing: ja.activerecord.errors.models.user.attributes.nickname.blank")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
          @user.valid?
          expect(@user.errors.full_messages).to include ("Eメール が入力されていません。")
      end


      
      it '重複したemailが存在する場合は登録できない' do
        first_user = FactoryBot.create(:user, email: 'test@test.co.jp')
        second_user = FactoryBot.build(:user, email: 'test@test.co.jp')
        second_user.valid?
        expect(second_user.errors.full_messages).to include("Eメール は既に使用されています。")
      end

      it 'emailは@を含まないと登録できない' do
        @user.email = 'textmail'
        @user.valid?
        expect(@user.errors.full_messages).to include ("Eメール は有効でありません。")
      end

      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include ("パスワード が入力されていません。")

      end

      it 'passwordが5文字以下では登録できない' do
        @user.password = '00000'
        @user.password_confirmation = '00000'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード は6文字以上に設定して下さい。')
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用） translation missing: ja.activerecord.errors.models.user.attributes.password_confirmation.confirmation")
      end

    end
  end
end

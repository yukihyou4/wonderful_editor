require "rails_helper"

RSpec.describe Comment, type: :model do

  context "必要な情報が揃っている場合" do
    let(:comment) { build(:comment) }

    it "commentが登録できる" do
      expect(comment).to be_valid
    end
  end


  context "bodyが無い場合" do
    let(:comment) { build(:comment, body: nil) }

    it "エラーが発生する" do
      expect(comment).not_to be_valid
    end
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end

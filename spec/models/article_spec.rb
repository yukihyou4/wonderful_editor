require "rails_helper"

RSpec.describe Article, type: :model do

  context "必要な情報が揃っている場合" do
    let(:article) { build(:article) }

    it "記事が登録できる" do
      expect(article).to be_valid
    end
  end


  context "titleが無い場合" do
    let(:article) { build(:article, title: nil) }

    it "エラーが発生する" do
      expect(article).not_to be_valid
    end
  end

  context "bodyが無い場合" do
    let(:article) { build(:article, body: nil) }

    it "エラーが発生する" do
      expect(article).not_to be_valid
    end
  end

  # pending "add some examples to (or delete) #{__FILE__}"
end

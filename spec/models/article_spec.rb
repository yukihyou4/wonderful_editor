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
end

  RSpec.describe "Api::V1::Articles", type: :request do
    describe "GET /articles" do
      subject { get(api_v1_articles_path) }

      let!(:article1) { create(:article, updated_at: 1.days.ago) }
      let!(:article2) { create(:article, updated_at: 2.days.ago) }
      let!(:article3) { create(:article) }

      it "記事の一覧が取得できる" do
        subject
        res = JSON.parse(response.body)

        expect(response).to have_http_status(:ok)
        expect(res.length).to eq 3
        expect(res.map {|d| d["id"] }).to eq [article3.id, article1.id, article2.id]
        expect(res[0].keys).to eq ["id", "title", "updated_at", "user" ]
        expect(res[0]["user"].keys).to eq ["id", "name", "email" ]
      end
    end
  end

  # pending "add some examples to (or delete) #{__FILE__}"

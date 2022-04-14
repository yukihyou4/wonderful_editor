# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_comments_on_article_id  (article_id)
#  index_comments_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (article_id => articles.id)
#  fk_rails_...  (user_id => users.id)
#
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

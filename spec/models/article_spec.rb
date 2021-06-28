require 'rails_helper'

describe Article do
  it { should validate_presence_of :title }
  it { should validate_presence_of :text }
  it { should have_many :comments }
  
  it "returns the article title" do
    article = create(:article, title: 'Foo Bar')
    expect(article.subject).to  eq 'Foo Bar'
  end
end
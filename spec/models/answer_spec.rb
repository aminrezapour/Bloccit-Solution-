require 'rails_helper'

RSpec.describe Answer, type: :model do

  let(:question) { Question.new(title: "New Question Title", body: "New question body", resolved: false) }
  let(:answer) { Answer.new(body: "New answer body", question: question) }

  it "should respond to body" do
    expect(answer).to respond_to(:body)
  end

end

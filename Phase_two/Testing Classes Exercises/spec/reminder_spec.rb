require 'reminder'

RSpec.describe Reminder do
    it "reminds user to perform an action" do
        reminder = Reminder.new("Anna")
        reminder.remind_me_to("have a cup of tea")
        result = reminder.remind()
        expect(result).to eq "have a cup of tea, Anna!"
    end
end
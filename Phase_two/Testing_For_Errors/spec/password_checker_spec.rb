require 'password_checker'

RSpec.describe PasswordChecker do
    it "checks if password is longer or equal to 8 characters" do
        pc = PasswordChecker.new
        expect(pc.check("computer")).to eq true
    end

    it "fails when password is less then 8 characters long" do
        pc = PasswordChecker.new
        expect { pc.check("home") }.to raise_error "Invalid password, must be 8+ characters."
    end
end
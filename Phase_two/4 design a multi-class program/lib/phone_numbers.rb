    class PhoneNumbers
        def initialize(diary) #instance of Diary
            @diary = diary
        end
  
        def phone_numbers
        # extracts phone numbers
        # returns phone numbers
            @diary.read_all.map { |v| v.content.scan (/[0-9]{11}/) }.flatten.uniq
        end

    end
require "pry"

class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = value.clamp(0, 10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def clean? 
        if hygiene > 7
            true
        else
            false
        end
        #self.hygiene > 7
        #the one line above will return T or F
    end

    def happy? 
        if happiness > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins" 
        #returns this string if write it like this. Puts prints to terminal
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    # def start_conversation(friend, topic)
    #     #could use case
    #     if topic == "politics"
    #         #[self, friend].each {|person| person.happiness -= 2}
    #         self.happiness -= 2
    #         friend.happiness -= 2
    #         "blah blah partisan blah lobbyist"
    #     elsif topic == "weather"
    #         self.happiness += 1
    #         friend.happiness += 1
    #         "blah blah sun blah rain"
    #     else
    #         "blah blah blah blah blah"
    #     end
    # end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            [self, friend].each{|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when "weather"
            [self, friend].each{|person| person.happiness += 1}
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

require_relative "Arena"
require_relative "Gladiator"

class SpaceArena < Arena

  def initialize
    @rivalGladiator = Gladiator.new(4,5,3,8)
  end

  def battle(gladiator)
    puts "You have the options of Spacegun and Lightsaber. Pres 1 for spacegun and 2 for lightsaber..."
    weapon = gets.chomp

    if weapon == "1"
      puts "You've chose Spacegun... LET THE BATTLE BEGIN!"
      while gladiator.health > 0 && rivalGladiator.health > 0
        if gladiator.strength > rivalGladiator.strength
          puts "You have made a good move! Your rival is loosing health!"
          rivalGladiator.lossHealth(2)

        elsif gladiator.strength < rivalGladiator.strength
          puts "Your rival have made a good move! You are loosing health!"
          gladiator.lossHealth(2)

        elsif gladiator.strength == rivalGladiator.strength
          if  gladiator.speed > rivalGladiator.speed
            puts "You have made a good move! Your rival is loosing health!"
            rivalGladiator.lossHealth(2)

         elsif gladiator.speed < rivalGladiator.speed
           puts "Your rival have made a good move! You are loosing health!"
           gladiator.lossHealth(2)

         elsif gladiator.speed == rivalGladiator.speed
           if rand(1..2) == 1
             puts "Not your luck day... You have lost the battle!"
             gladiator.lossHealth(gladiator.getHealth)
           else
             puts "You have just got lucky! Your rival have lost the battle!"
             rivalGladiator.lossHealth(rivalGladiator.getHealth)
           end
         end
       end
     end
     if isAlive(gladiator) == 1
       puts"You have won the space battle!!!!!"
       gladiator.succeeded
     else
       puts"You have lost the space battle!!!!!"
       gladiator.unsucceeded
     end

   elsif weapon == "2"
       puts "You've chose Lightsaber... LET THE BATTLE BEGIN!"
       while gladiator.health > 0 && rivalGladiator.health > 0
         if gladiator.strength > rivalGladiator.strength
           puts "You have made a good move! Your rival is loosing health!"
           rivalGladiator.lossHealth(1)

         elsif gladiator.strength < rivalGladiator.strength
           puts "Your rival have made a good move! You are loosing health!"
           gladiator.lossHealth(1)

         elsif gladiator.strength == rivalGladiator.strength
           if  gladiator.speed > rivalGladiator.speed
             puts "You have made a good move! Your rival is loosing health!"
             rivalGladiator.lossHealth(1)

          elsif gladiator.speed < rivalGladiator.speed
            puts "Your rival have made a good move! You are loosing health!"
            gladiator.lossHealth(1)

          elsif gladiator.speed == rivalGladiator.speed
            if rand(1..2) == 1
              puts "Not your luck day... You have lost the battle!"
              gladiator.lossHealth(gladiator.getHealth)
            else
              puts "You have just got lucky! Your rival have lost the battle!"
              rivalGladiator.lossHealth(rivalGladiator.getHealth)
            end
          end
        end
      end
      if isAlive(gladiator) == 1
        puts"You have won the space battle!!!!!"
        gladiator.succeeded
      else
        puts"You have lost the space battle!!!!!"
        gladiator.unsucceeded
      end
   else
     puts "WRONG INPUT!"
   end
  end

  def question(gladiator)
#different difficulty sets for different intelligence
    if (gladiator.intelligence) > 15 && (gladiator.intelligence <= 20)
      print "1 + 3 = "
      answer = gets.chomp
      if answer == 4
        puts "YOU GOT IT RIGHT!!"
        gladiator.succeeded()
      else
        puts "YOU GOT IT WRONG!!"
        gladiator.unsucceeded()
      end
    elsif (gladiator.intelligence) > 10 && (gladiator.intelligence <= 15)
      print "10 + 678 = "
      answer = gets.chomp
      if answer == 688
        puts "YOU GOT IT RIGHT!!"
        gladiator.succeeded()
      else
        puts "YOU GOT IT WRONG!!"
        gladiator.unsucceeded()
      end
    elsif (gladiator.intelligence) > 5 && (gladiator.intelligence <= 10)
      print "15 * 234 = "
      answer = gets.chomp
      if answer == 3510
        puts "YOU GOT IT RIGHT!!"
        gladiator.succeeded()
      else
        puts "YOU GOT IT WRONG!!"
        gladiator.unsucceeded()
      end
    elsif (gladiator.intelligence) > 1 && (gladiator.intelligence <= 5)
      print "1256 * 3243 = "
      answer = gets.chomp
      if answer == 4073208
        puts "YOU GOT IT RIGHT!!"
        gladiator.succeeded()
      else
        puts "YOU GOT IT WRONG!!"
        gladiator.unsucceeded()
      end
    end
  end

  def speed(gladiator)
    if (gladiator.speed) > 15 && (gladiator.speed <= 20)
      user_input = Thread.new do
        print "Enter a: "
        Thread.current[:value] = gets.chomp
      end
      timer = Thread.new { sleep 5; user_input.kill; puts }
      user_input.join
      if user_input[:value]
        if user_input[:value] == "a"
          puts "User entered #{user_input[:value]}"
          puts "YOU GOT IT RIGHT!!"
          gladiator.succeeded()
        else
          puts "YOU GOT IT WRONG!!"
          gladiator.unsucceeded()
        end
      else
        puts "Timer expired"
        gladiator.unsucceeded()
      end
    elsif (gladiator.speed) > 10 && (gladiator.speed <= 15)
      user_input = Thread.new do
        print "Enter a and b: "
        Thread.current[:value] = gets.chomp
      end
      timer = Thread.new { sleep 5; user_input.kill; puts }
      user_input.join
      if user_input[:value]
        if user_input[:value] == "ab"
          puts "User entered #{user_input[:value]}"
          puts "YOU GOT IT RIGHT!!"
          gladiator.succeeded()
        else
          puts "YOU GOT IT WRONG!!"
          gladiator.unsucceeded()
        end
      else
        puts "Timer expired"
        gladiator.unsucceeded()
      end
    elsif (gladiator.speed) > 5 && (gladiator.speed<= 10)
      user_input = Thread.new do
        print "Enter a , b and c: "
        Thread.current[:value] = gets.chomp
      end
      timer = Thread.new { sleep 5; user_input.kill; puts }
      user_input.join
      if user_input[:value]
        if user_input[:value] == "abc"
          puts "User entered #{user_input[:value]}"
          puts "YOU GOT IT RIGHT!!"
          gladiator.succeeded()
        else
          puts "YOU GOT IT WRONG!!"
          gladiator.unsucceeded()
        end
      else
        puts "Timer expired"
        gladiator.unsucceeded()
      end

    elsif (gladiator.speed) > 1 && (gladiator.speed <= 5)
      user_input = Thread.new do
        print "Enter a , b , c and d: "
        Thread.current[:value] = gets.chomp
      end
      timer = Thread.new { sleep 5; user_input.kill; puts }
      user_input.join
      if user_input[:value]
        if user_input[:value] == "abcd"
          puts "User entered #{user_input[:value]}"
          puts "YOU GOT IT RIGHT!!"
          gladiator.succeeded()
        else
          puts "YOU GOT IT WRONG!!"
          gladiator.unsucceeded()
        end
      else
        puts "Timer expired"
        gladiator.unsucceeded()
      end
    end
  end
end

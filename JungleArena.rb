require_relative "Arena"
require_relative "Gladiator"

class JungleArena < Arena

  def initialize
    @rivalGladiator = Gladiator.new(4,5,3,8)
  end

  def battle(gladiator)
    puts "You have the options of Archer and Axe. Pres 1 for archer and 2 for axe..."
    weapon = gets.chomp

    if weapon == "1"
      w = Archer.new
      gladiator.setWeapon(w)
      puts "You've chose Archer... LET THE BATTLE BEGIN!"
      while gladiator.health > 0 && rivalGladiator.health > 0
        if gladiator.strength > rivalGladiator.strength
          puts "You have made a good move! Your rival is loosing health!"
          rivalGladiator.lossHealth(w.power)

        elsif gladiator.strength < rivalGladiator.strength
          puts "Your rival have made a good move! You are loosing health!"
          gladiator.lossHealth(w.power)

        elsif gladiator.strength == rivalGladiator.strength
          if  gladiator.speed > rivalGladiator.speed
            puts "You have made a good move! Your rival is loosing health!"
            rivalGladiator.lossHealth(w.power)

         elsif gladiator.speed < rivalGladiator.speed
           puts "Your rival have made a good move! You are loosing health!"
           gladiator.lossHealth(w.power)

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
       puts "You've chose Axe... LET THE BATTLE BEGIN!"
       w = Axe.new
       gladiator.setWeapon(w)
       while gladiator.health > 0 && rivalGladiator.health > 0
         if gladiator.strength > rivalGladiator.strength
           puts "You have made a good move! Your rival is loosing health!"
           rivalGladiator.lossHealth(w.power)

         elsif gladiator.strength < rivalGladiator.strength
           puts "Your rival have made a good move! You are loosing health!"
           gladiator.lossHealth(w.power)

         elsif gladiator.strength == rivalGladiator.strength
           if  gladiator.speed > rivalGladiator.speed
             puts "You have made a good move! Your rival is loosing health!"
             rivalGladiator.lossHealth(w.power)

          elsif gladiator.speed < rivalGladiator.speed
            puts "Your rival have made a good move! You are loosing health!"
            gladiator.lossHealth(w.power)

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
      print "2 + 2 = "
      answer = gets.chomp
      if answer == 4
        puts "YOU GOT IT RIGHT!!"
        gladiator.succeeded()
      else
        puts "YOU GOT IT WRONG!!"
        gladiator.unsucceeded()
      end
    elsif (gladiator.intelligence) > 10 && (gladiator.intelligence <= 15)
      print "40 + 638 = "
      answer = gets.chomp
      if answer == 688
        puts "YOU GOT IT RIGHT!!"
        gladiator.succeeded()
      else
        puts "YOU GOT IT WRONG!!"
        gladiator.unsucceeded()
      end
    elsif (gladiator.intelligence) > 5 && (gladiator.intelligence <= 10)
      print "13 * 351 = "
      answer = gets.chomp
      if answer == 4563
        puts "YOU GOT IT RIGHT!!"
        gladiator.succeeded()
      else
        puts "YOU GOT IT WRONG!!"
        gladiator.unsucceeded()
      end
    elsif (gladiator.intelligence) > 1 && (gladiator.intelligence <= 5)
      print "1235 * 3243 = "
      answer = gets.chomp
      if answer == 4005105
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
        print "Enter 1: "
        Thread.current[:value] = gets.chomp
      end
      timer = Thread.new { sleep 5; user_input.kill; puts }
      user_input.join
      if user_input[:value]
        if user_input[:value] == "1"
          #puts "User entered #{user_input[:value]}"
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
        print "Enter 1 and 2: "
        Thread.current[:value] = gets.chomp
      end
      timer = Thread.new { sleep 5; user_input.kill; puts }
      user_input.join
      if user_input[:value]
        if user_input[:value] == "12"
        #  puts "User entered #{user_input[:value]}"
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
        print "Enter 1 , 2 and 3: "
        Thread.current[:value] = gets.chomp
      end
      timer = Thread.new { sleep 5; user_input.kill; puts }
      user_input.join
      if user_input[:value]
        if user_input[:value] == "123"
        #  puts "User entered #{user_input[:value]}"
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
        print "Enter 1 , 2 , 3 and 4: "
        Thread.current[:value] = gets.chomp
      end
      timer = Thread.new { sleep 5; user_input.kill; puts }
      user_input.join
      if user_input[:value]
        if user_input[:value] == "1234"
          #puts "User entered #{user_input[:value]}"
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

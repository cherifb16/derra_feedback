# Ecrire la logique qui permet au joueur (self) d'entrer "0 ~ 2".
class Player
    def hand
      # Affichez un texte demandant au joueur de choisir un mouvement de pierre-papier-ciseaux.
      
      # Assignez la valeur d'entrée du joueur à la variable "input_hand".
      # Astuce : regardez la méthode gets.
      
      # Si "input_hand" est l'un de "0, 1, 2", le processus d'itération est terminé, sinon (y compris les caractères alphabétiques), le processus d'itération est poursuivi.
      while true
        puts "Please enter a number between 0-2."
        puts "0 : Goo\n1 : Choki\n2 : Par"
        input_hand = gets.chomp


        if input_hand === "0" || input_hand === "1" || input_hand === "2"

        return input_hand.to_i
        # si "input_hand" est un de "0, 1, 2".
        # Astuce : regardez la méthode include ?
          # retourner "input_hand" tel quel.
          # Astuce : Si vous voulez renvoyer une valeur de retour pour terminer le processus d'itération, utilisez "return".
        # else Autrement.
        end
          # Afficher une phrase demandant au joueur d'entrer "0-2".
          # met "0 à 2 Veuillez entrer un nombre."
          # met "0 : Goo, 1 : Choki, 2 : Par"
          # Assignez la valeur d'entrée du joueur à la variable "input_hand".
        # fin de l'instruction if fin
        
      end
      
    end

  end
  # Ecrire la logique pour que l'autre partie génère aléatoirement une valeur de "0~2".
  class Enemy
    def hand
      enemy_hand = rand(0..2)
      # Obtenir une valeur aléatoire pour Goo, Choki ou Par.
    end
  end
  # Ecrire une logique pour que le joueur (vous) entre "0~2" et l'ennemi génère aléatoirement "0~2" et joue à pierre-papier-ciseaux et affiche le résultat sur la console.
  class Janken
    def pon(player_hand, enemy_hand)
      # Substituer ["goo", "choki", "par"] à la variable "janken".
      janken = ["Goo", "Choki", "Par"]
      #"Le coup de votre adversaire est #{coups de l'adversaire}" Le résultat est
      puts "La main de l'autre partie est : #{janken[enemy_hand]}"
      #Créer une logique pour jouer à pierre-papier-ciseaux à partir de la valeur de retour de la classe Player et de la valeur de retour de la classe Enemy.
      if player_hand == enemy_hand
        puts "Aiko"
        return true
        # Si la valeur de retour de la classe Player (player_hand) et la valeur de retour de la classe Enemy (enemy_hand) sont les mêmes...
        # "Aiko" est produit.
        # Retourne "vrai" pour exécuter pierre-papier-ciseaux de manière répétée.
        # Astuce : Vous pouvez utiliser "return" pour renvoyer une valeur de retour. Cependant, en Ruby, il est courant d'omettre le "return" lorsqu'on renvoie une valeur de retour.
      elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
        puts "vous avez gagné"
        return false
        # Si les combinaisons suivantes sont trouvées.
        # (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
        #Imprimez "vous avez gagné".
        #Retourne "false" et met fin à pierre-papier-ciseaux.
      else
        puts "Vous avez perdu"
        return false
        #Print "Vous avez perdu".
        #renvoie "false" et met fin à pierre-papier-ciseaux.
      end
    end
  end
  # Écrire la logique pour exécuter le jeu de pierre-papier-ciseaux.
  class GameStart
    # En utilisant self, vous pouvez appeler la méthode jankenpon en utilisant le nom de la classe sans instancier GameStart.
    def self.jankenpon
      #Substituer le joueur instancié à la variable "player".
      player = Player.new
      # Assigner une instanciation de Enemy à la variable "enemy".
      enemy = Enemy.new
      # Assigner une instanciation de Janken à la variable "janken".
      janken = Janken.new
      next_game = true
      # Assigner "true" à la variable "next_game".
      # Si "next_game" est "false", le processus d'itération sera terminé, # si "true", le processus d'itération sera poursuivi.
      while next_game
        # Substituer la valeur (valeur de retour) renvoyée par l'exécution de pierre-papier-ciseaux dans la variable "next_game".
        #「janken.pon(player.hand, enemy.hand)J'utilise pierre-papier-ciseaux.
        next_game = janken.pon(player.hand, enemy.hand)
      end
    end
  end
  # Appeler la méthode jankenpon avec le nom de la classe.
  GameStart.jankenpon
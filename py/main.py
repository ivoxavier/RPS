'''
 Copyright (C) 2022  Ivo Xavier

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; version 3.

 RPS is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
'''

import os
import codecs
import pyotherside
import re
import random
from time import strftime
from datetime import datetime
from threading import Thread


def game(user_choice):
        global user_sequence_wins
        choices = ["rock", "paper", "scissors"]
        computer_choice = random.choice(choices)

        #set pic of CPU choice
        if computer_choice == "rock":
                pyotherside.send("rock_img", "../../imgs/rock.png")
        elif computer_choice == "paper":
                pyotherside.send("paper_img", "../../imgs/paper.png")
        elif computer_choice == "scissors":
                pyotherside.send("scissors_img","../../imgs/scissors.png")

        #compare choices
        if user_choice == computer_choice:
                pass
        elif user_choice == "rock":
                if computer_choice == "scissors":
                        pyotherside.send("r_user_wins",1)
                elif computer_choice == "paper":
                        pyotherside.send("r_cpu_wins",1)
        elif user_choice == "paper":
                if computer_choice == "rock":
                        pyotherside.send("p_user_wins",1)
                elif computer_choice == "scissors":
                        pyotherside.send("p_cpu_wins",1)
        elif user_choice == "scissors":
                if computer_choice == "paper":
                        pyotherside.send("s_user_wins",1)
        elif computer_choice == "rock":
                        pyotherside.send("s_cpu_wins",1)
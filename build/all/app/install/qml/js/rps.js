/*
 * 2017-2018 Ivo Xavier <ivofernandes12@gmail.com>.
 * 2021 Ivo Xavier <ivofernandes12@gmail.com>.
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

var cpuWins = 0
var humanWins = 0

function play (letter){    
    var userchoice = letter;
    var phonechoice = Math.random();

    if(phonechoice < 0.34){
        phonechoice = "r";
        cpuChoiceImage.source = imgRockPath

    } else if(phonechoice <= 0.67){
        phonechoice = "p";
        cpuChoiceImage.source = imgPaperPath;

    } else{
        phonechoice = "s";
        cpuChoiceImage.source = imgScissorsPath;
    }
    //console.log('CPU: ' + phonechoice + '\n' + 'Human: ' + userchoice);

    var compare = function(choice1, choice2){

        if(choice1 === choice2){
            //Draw
            console.log("DRAW")
        } else if(choice1 === "p" & choice2 === "s"){
            //Scissors
            console.log("HUMAN WINS")
            humanWins++
            humanWinsCount.text = "Human: " + humanWins
        } else if(choice1 === "r" & choice2 === "s"){
            //Rock
            console.log("CPU WINS")
            cpuWins++
            cpuWinsCount.text = "CPU: " + cpuWins
        } else if(choice1 === "s" & choice2 === "r"){
            //Rock
            console.log("HUMAN WINS")
            humanWins++
            humanWinsCount.text = "Human: " + humanWins
        } else if(choice1 === "s" & choice2 === "p"){
            //Scissors
            console.log("CPU WINS")
            cpuWins++
            cpuWinsCount.text = "CPU: " + cpuWins
        } else if (choice1 === "r" & choice2 === "p"){
            //Papper
            console.log("HUMAN WINS")
            humanWins++
            humanWinsCount.text = "Human: " + humanWins
        } else if (choice1 === "p" & choice2 === "r"){
            //Papper
            console.log("CPU WINS")
            cpuWins++
            cpuWinsCount.text = "CPU: " + cpuWins
        } else {
            console.log("option outside possibilities")
        }
    }
compare(phonechoice, userchoice);
}

function start () {
    console.log("Thanks for playing RPS");
}

// Inicia a comparação das escolhas
function logic (text){
    var userchoice = text;
    // escolha do telefone
    var phonechoice = Math.random();
    if(phonechoice <0.34){
        phonechoice = "pedra";
    } else if(phonechoice <= 0.67){
        phonechoice = "papel";
    } else{
        phonechoice = "tesoura";
    }
    console.log('O telefone escolheu:' + phonechoice +';' + ' ' + 'Voce:' + userchoice);

    var compare = function(choice1, choice2){

        if(choice1 === choice2){
            resultado1.text = i18n.tr("Draw!");
            PopupUtils.open(Qt.resolvedUrl("AboutPage.qml"));
        } else if(choice1 === "papel" & choice2 === "tesoura"){
            resultado1.text = i18n.tr("Scissors wins!");
            PopupUtils.open(Qt.resolvedUrl("AboutPage.qml"))
        } else if(choice1 === "pedra" & choice2 === "tesoura"){
            resultado1.text = i18n.tr("Rock wins!");
            PopupUtils.open(Qt.resolvedUrl("AboutPage.qml"));
        } else if(choice1 === "tesoura" & choice2 === "pedra"){
            resultado1.text = i18n.tr("Rock wins!");
            PopupUtils.open(Qt.resolvedUrl("AboutPage.qml"));
        } else if(choice1 === "tesoura" & choice2 === "papel"){
            resultado1.text = i18n.tr("Scissors wins!");
            PopupUtils.open(Qt.resolvedUrl("AboutPage.qml"));
        } else if (choice1 === "pedra" & choice2 === "papel"){
            resultado1.text = i18n.tr("Papper Wins!");
            PopupUtils.open(Qt.resolvedUrl("AboutPage.qml"));
        }
    }
compare(phonechoice, userchoice);
}

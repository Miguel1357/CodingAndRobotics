#include<chplot.h>
//This story is about heroes fighting against a monster. Please answer questions as you enjoy the story.

//declarations

string_t Run, Attack, Item, x, y, move, move2, i, z, insult;
int BattleValue, r, n, s;

void declarations(){
    string_t Run, Attack, Item, x, y, move, move2, i, z, insult;
    int BattleValue, roll, n, s;
}

//names
void name1(){
    scanf("%s", &x);
}

void name2(){
    scanf("%s", &y);
}

//insult
void Insult(){
    printf("Narrator: Do you have an insult for the creature? Yes or No?\n\n");
    scanf("%s", &z);
    if(z=="Yes" || z=="No"){
        if(z=="Yes"){
            printf("Narrator: What is your insult?\n\n");
            scanf("%s", &insult);
            printf("%s: %s\n\n", x, insult);
        }
        if(z=="No"){
            printf("%s: You look like my...uh...I got nothing.\n\n", x);
        }
    }
}

//random#s
void roll(){
    n=randint(1,6);
    s=randint(1,6);
    r=n+s;
    if(r>=7){
        printf("Narrator: %s rolled some dice and got a %d and a %d. %s smashed the enemy with a concrete hammer %d\n\
time(s) and it was enough to defeat the enemy.\n\n", x, n, s, x, r);
    }else{
        printf("Narrator: %s rolled some dice and got a %d and a %d. %s smashed the enemy with a concrete hammer %d\n\
time(s), but it wasn't enough to defeat the enemy.\n\n", x, n, s, x, r);
    }
}

//Happygraph
void graph(){
    double func1(double x) {     return 0;}
    double func2(double x) {     return x*x-5*x+6;}
    int datanum;
    double y(double x){
        return pow((x-5), 2)+2;
    }
    CPlot plot;

    plot.title("Congratulations!");
    plot.axisRange(PLOT_AXIS_X, 0, 10);
    plot.axisRange(PLOT_AXIS_Y, 0, 20);
    
    //head
    plot.strokeColor("yellow");
    plot.fillColor("yellow");
    plot.circle (5,10,2.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (4,10,0.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (6,10,0.5);
    plot.func2D(3.5, 6.5, 1000, y);
    
    plot.plotting();
}

//GAMEOVERgraph
void graph2(){
    double func1(double x) {     return 0;}
    double func2(double x) {     return x*x-5*x+6;}
    double func3(double x) {     return 5;}
    int datanum;
    CPlot plot;

    plot.title("GAME OVER");
    plot.axisRange(PLOT_AXIS_X, 0, 10);
    plot.axisRange(PLOT_AXIS_Y, 0, 20);
    
    //head
    plot.strokeColor("black");
    plot.fillColor("white");
    plot.circle (5,10,2.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (4,10,0.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (6,10,0.5);
    plot.point(6, 9);
    plot.func2D(3.9, 4.1, 100, func1);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 1, "y1=5", "black");
    plot.func2D(4.9, 5.1, 100, func1);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 2, "y1=5", "black");
    plot.func2D(5.9, 6.1, 100, func1);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 3, "y1=5", "black");
    plot.func2D(2.9, 7.1, 100, func3);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 4, "y1=4", "black");
    plot.plotting();
}

//?graph
void graph3(){
    double func1(double x) {     return 0;}
    double func2(double x) {     return x*x-5*x+6;}
    double func3(double x) {     return 4;}
    int datanum;
    CPlot plot;

    plot.title("?");
    plot.axisRange(PLOT_AXIS_X, 0, 10);
    plot.axisRange(PLOT_AXIS_Y, 0, 20);
    
    //head
    plot.strokeColor("yellow");
    plot.fillColor("yellow");
    plot.circle (5,10,2.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (4,10,0.5);
    plot.strokeColor("black");
    plot.fillColor("black");
    plot.circle (6,10,0.5);
    plot.func2D(3, 7, 100, func3);
    plot.plotType(PLOT_PLOTTYPE_FILLEDCURVES, 4, "y1=5", "black");
    
    plot.plotting();
}

//introduction
void intro(){
    printf("Narrator: Sniiiiiiiiiiiiiiiiiiiiiiiiiffffffffffffffffff, Ahhhhhh. Nothing like a lovely day in the city of\n\
wherever we are. I wonder what our heros are up to.\n\n");
    sleep(3);
    printf("Man with a skull mask: RUN! RUN! RUN!\n\n");
    sleep(2);
    printf("Boy in a yellow power suit: Wh-OH MY GOD!\n\n");
    sleep(2);
    printf("Girl in ninja outfit: WHAT IS THAT?\n\n");
    sleep(2);
    printf("Small backpack robot: WE'RE GONNA DIE!\n\n");
    sleep(2);
    printf("Man in a tech suit: I DON'T WANNA DIE!\n\n");
    sleep(2);
    printf("Girl with huge iron gauntlets: CAN IT! JUST KEEP RUNNING!\n\n");
    sleep(2);

    printf("Narrator: It seems our heros are...running? Running in the deep, dark sewers?\n\n");
    sleep(3);
    printf("Familiar voice: PAUSE!\n\n");
    sleep(3);
    printf("Narrator: Hey! I thought I was narrating!\n\n");
    sleep(3);
    printf("Boy in a yellow power suit: Sorry. Can I do this one part.\n\n");
    sleep(3);
    printf("Narrator: ...Fine, but make it quick. After all, you are currently running for your life.\n\n");
    sleep(3);
    printf("Boy in a yellow power suit: O.K. Thank you mister. Now, I know what you're all thinking.\n\
You're all probably thinking, ''What the heck is going on.\n\
I just pushed ''Run'' and there's already a ton of action going on.''\n\n");
    sleep(6);

    printf("Boy in a yellow power suit: Actually, I have to continue running so I'll make this quick.\n\
My codename is Shifty, but you can call me anything. So what do you want to call me?\n\n");
    
    //insert name for the main character
    name1();

    printf("%s: ...and these are my friends...We're superheros. The dude with the skull mask is...well, ''Skull.'' The\n\
ninja girl is our team leader. She's, ''Ninja.'' The robot is my backpack and his name is, ''Gizmo.'' But we call him\n\
''Giz.'' Actually, now that I think about it, that sounds kinda weird. How about you give him a different name.\n\n", x);
    
    //insert name for the main character's companion
    name2();

    printf("%s: The girl with the huge metal gauntlets is ''Power.'' and lastly the tech suit dude is ''Hacker.''I know,\n\
I know. These names are lame. Now if you'll excuse me. I have to run for my life.\n\n", x);
    sleep(5);

    printf("Power: A DEAD END!\n\n");
    sleep(3);
    printf("%s: WE'RE GONNA DIE!\n\n", y);
    sleep(3);
    printf("%s: Uh guys...?\n\n", x);
    sleep(3);
    printf("Creature: RRRRRRRRRROOOOOOOOOAAAAAAARRRRRRRR!\n\n");
    sleep(3);
    printf("Ninja: Looks like we'll have to fight.\n\n");
    sleep(3);
    printf("Skull: Step aside!\n\n");
    sleep(3);
    printf("%s: (Woah! He just pulled out a grenade launcher!)\n\n", x);
    sleep(3);
    printf("Skull: Take this you bag of di-OOF!\n\n");
    sleep(3);
    printf("%s: (Of course Skull got too reckless and was launched to the wall.)\n\n", x);
    sleep(3);
    printf("Skull: I'm...O.K.\n\n");
    sleep(3);
    printf("Narrator: No you're not, Skull. No you're not.\n\n");
    sleep(3);
    printf("Ninja: Everyone fight!\n\n");
    sleep(3);
    printf("%s: All right!\n\n", x);
    sleep(3);
    printf("Ninja: Except for you, %s. You haven't completed your training.\n\n", x);
    sleep(3);
    printf("%s: Bu-\n\n", x);
    sleep(3);
    printf("Ninja: No bu-AHHHHH.\n\n");
    sleep(3);
    printf("%s: (Oh no! Not Ninja!)\n\n", x);
    sleep(3);
    printf("Narrator: Yikes! That's going to leave more than a mark!\n\n");
    sleep(3);
    printf("Power: My turn!\n\n");
    sleep(3);
    printf("%s: (Maybe Power can punch that thing to death.)\n\n", x);
    sleep(3);
    printf("Hacker: Looks like the creature threw Power to the ground. Now that's what I call a slam-dunk.\n\n");
    sleep(3);
    printf("%s: (Maybe not. Why am I not surprised? Also, I'm cringing from that last joke.)\n\n", x);
    sleep(3);
    printf("Narrator: I'm cringing from that last joke.\n\n");
    sleep(3);
    printf("Hacker: I think you should fight. Go for it %s.\n\n", x);
    sleep(3);
    printf("%s: Oh boy! My turn! Hey ugly!\n\n", x);
    sleep(3);
    printf("Creature: Grrrrrrrrrr.\n\n");
    
    //insert insult
    Insult();
    
    printf("Creature: RRRRRRRRRROOOOOOOOOAAAAAAARRRRRRRR.\n\n");
    sleep(3);
}

//battle
void battle(){
    printf("|BATTLE START!|\n\n");
    sleep(3);
    printf("HP:100\n");
    printf("Select a move.\n");
    printf("Attack\n");
    printf("Item\n");
    printf("Run\n");
}

//main
int main(){
    //introduction
    intro();
    battle();
    scanf("%s", &move);
    do{
        if(move=="Attack" || move=="Item" || move=="Run"){
            BattleValue==1;
            printf("Your move: %s\n\n", move);
        }
//option1(Attack)
        if(move=="Attack"){
            printf("%s: Alright, time to attack that ugly monster.\n\n", x);
            
            printf("%s: Wait, I am analyzing the organism. That thing is immune to certain attacks. Choose your attacks\n\
            wisely and do not let your guard down.\n\n", y);
            sleep(3);
            printf("%s: So, that thing is immune to certain attacks, huh?\n\n", x);
            sleep(3);
            printf("Narrator: Select your attack.\nConcreteSmash\nSewerBubble\nStormDrain\n");
            scanf("%s", &move2);
        if(move2=="ConcreteSmash" || move2=="SewerBubble" || move2=="StormDrain"){
           BattleValue==1;
//end1(ConcreteSmash)
            if(move2=="ConcreteSmash"){
                printf("Narrator: %s used ConcreteSmash. %s shifted into concrete-forme and rolled some dice.\n\n", x, x);
                sleep(3);
                roll();
                    if(r>=7){
                        sleep(5);
                        printf("Narrator: Congratulations! You won!\n\n");
                        sleep(3);
                        printf("%s: Well that was easy.\n\n", x);
                        sleep(3);
                        printf("%s: Too easy. Now, let's help the others.\n\n", y);
                        sleep(3);
                        printf("%s: Yeah. They must be really injured. They need our help.\n\n", x);
                        sleep(3);
                        printf("Narrator: The creature was killed and our heroes have once again saved the day.\n\
However, a new threat may be on the rise. But who? Who is this new threat? We will find out\n\
next time on the Adventures of Supers.\n\n");
                            graph();
                        }else{
                            printf("Yikes! Talk about tough luck. That move sure was a risk. The opponent used \n\
HeadCharge. It charged towards %s with its head pushing him back. %s was then charged into a wall. Oh no! Is this the\n\
end for our beloved heroes. The hideous monster has triumphed the challenge and became the victor of the duel.\n\
GAME OVER.\n\n", x, x);
                            graph2();
                        }
                    exit(0);
//end2(SewerBubble)
                }else if(move2=="SewerBubble"){
                    printf("Narrator: %s used SewerBubble. %s shifted into sewer-forme and created a giant sewer bubble\n\
to protect %s and your friends. Unfortunately, the monster enjoys the stench and popped the\n\
bubble. The opponent used WildClaws. It struck %s with its vicious claws. Oh no! Is this the end for our beloved heroes.\n\
The hideous monster has triumphed the challenge and became the victor of the duel. GAME OVER.\n\n", x, x, x);
                    graph2();
                    exit(0);
//end3(StormDrain)
                }else if(move2=="StormDrain"){
                    printf("%s used StormDrain. %s shifted into water-forme and absorbed all the water in the sewers.\n\
%s fully healed yourself, but his HP was already fully restored. The opponent used HeadCharge.\n\
It charged towards %s with its head pushing him back. %s was then charged into a wall. Oh no! Is this the end for our\n\
beloved heroes. The hideous monster has triumphed the challenge and became the victor of the duel. GAME OVER.\n\n"
, x, x, x, x, x);
                    graph2();
                    exit(0);
                }
            }
        }
//option2(Item)
                if(move=="Item"){
        printf("%s: Ah. I see. You are going for a strategic choice. Don't forget that I'm always an option.\n\
So what will you choose? RawMeat can be used to recover health, Oil'nMatch can be used to damage the enemy, and\n\
I can D.O. anything for you. Just remember to choose wisely.\n\n\
Narrator: Select your item.\nRawMeat\nOil'nMatch\n%s\n\n", y, y);
            scanf("%s", &move2);
            if(move2=="RawMeat" || move2=="Oil'nMatch" || move2=="%s", y){
           BattleValue==1;
//end4(RawMeat)
                    if(move2=="RawMeat"){
                printf("Narrator: %s was about to use the RawMeat that he bought from the super market, but The\n\
creature snatches and devours the it. Now that the creature had eaten a meal, it became energetic and has gained a boost\n\
to its attack, defense, and speed/accuracy stats. After that, the creature used WildClaws. It struck %s with its vicious\n\
claws. Oh no! Is this the end for our beloved heroes. The hideous monster has triumphed the challenge and became the\n\
victor of the duel. GAME OVER.\n\n", x);
                        graph2();
                        exit(0);
//end5(Oil'nMatch)
                }else if(move2=="Oil'nMatch"){
            printf("Narrator: %s used Oil'nMatch. %s threw the Oil he bought from the gas station onto the monster. He\n\
then lit a match and tossed it at the enemy. Unfortunately, the enemy was immune to fire. The enemy was immune to fire.\n\
Enemy was immune to fire. Was immune to fire. Immune to fire. To fire. Fire. FIRE! OF COURSE, IT'S A IMMUNE TO FIRE.\n\
OH, I JUST HAD TO JINX IT! WAY TO GO NARRATOR! Oh of course...cough...Anyways, the enemy used WildClaws and sliced %s.\n\
Oh no! Is this the end for our beloved heroes! The hideous monster has triumphed the challenge and became the victor of\n\
the duel! GAME OVER.n", x, x, x);
                        graph2();
                        exit(0);
//end6(%s, y)
                }else if(move2=="%s", y){
                printf("Narrator: %s used %s.\n\n", x, y);
            printf("%s: I'll do my best %s! Activating Code: D.O. Time to Destroy and Obliterate! Now, through me into\n\
the monster's mouth!\n\n%s: Why?\n\n%s: I'm going to self-destruct inside that creature.\n\n%s: You wouldn't.\n\n\
%s: Oh, I would.\n\n%s: Wait! Don't do this! I don't want to lose you!\n\n%s: Relax. I'm a robot, remember? Hacker can just\
rebuild me. %s: O.K. Fine.\n\n%s: Now throw me in!\n\nNarrator: It seems our little robot friend is making a sacrafice\n\n\
for our heros. How heroic.", y, x, x, y, x, y, x, y, x, y);
                    sleep(3);
                        printf("Narrator: Congratulations! You won!\n\n");
                    sleep(3);
                        printf("%s: Poor %s.\n\n", x, y);
                    sleep(3);
                        printf("%s: ...\n\n", y);
                    sleep(3);
                        printf("%s: Well they my help.\n\n", x);
                    sleep(3);
                        printf("Narrator: The creature...sob...was killed and %s...sob...saved the day. How tragic...\n\
Ladies and gentlemen I am trying to hold my tears. That was the most heroic thing I have ever se-What's that...yeah he's\n\
a robot, but...Oh yeah. Of course! He's a robot! They can just rebuild him. Anyways, our heroes have once again saved\n\
the day, all thanks to %s. However, a new threat may be on the rise. But who? Who is this new threat? We will find out\n\
next time on the Adventures of Supers.\n\n", y, y);
                        graph();
                        exit(0);
                }
            }
        }
//option3(Run)
                if(move=="Run"){
        printf("%s tried to run, but the creature grabbed and swallowed him! Don't panic! It's not too late! Think\n\
of a strategy, quickly!");
                    sleep(3);
        printf("%s: If I don't get out of here, I'll be digested! Better think of a plan to find my way out!\n\
Man...why do I have to do this by myself?\n\n", x);
                    sleep(3);
        printf("Narrator: Select your strategy.\nLazer\nElectroShock\nParty\n");
                    sleep(3);
            scanf("%s", &move2);
            if(move2=="Lazer" || move2=="ElectroShock" || move2=="Party"){
           BattleValue==1;
//end7Lazer
                    if(move2=="Lazer"){
                printf("%s used Lazer. %s lazered his way out of the belly of the beast. The monster howled in pain and\n\
kept punching its stomach. But %s did not stop and kept on lazering his way out. Finally, the shape-shifting hero\n\
escaped and the monster was defeated.\n\n", x, x, x);
                        sleep(3);
                        printf("Narrator: Congratulations! You won!\n\n");
                        sleep(3);
                        printf("%s: Well that was easy.\n\n", x);
                        sleep(3);
                        printf("%s: Too easy. Now, let's help the others.\n\n", y);
                        sleep(3);
                        printf("%s: Yeah. They must be really injured. They need our help.\n\n", x);
                        sleep(3);
                        printf("Narrator: The creature was killed and our heroes have once again saved the day.\n\
However, a new threat may be on the rise. But who? Who is this new threat? We will find out\n\
next time on the Adventures of Supers.\n\n");
                        graph();
                        exit(0);
//end8(ElectroShock)
                }else if(move2=="ElectroShock"){
                printf("%s used ElectroShock. %s electricuted the enemy, but the enemy is immune to electricity. Oh come\n\
on! What's next!? The enemy is immune to fire and nuclear explosions!? Actually I don't remember if it is immune to\n\
fire. But, why does the villain have to be over powered? Anyways, oh no! Is this the end for our beloved heroes! The\n\
hideous monster has triumphed the challenge and became the victor of the duel! GAME OVER.\n\n", x, x);
                        graph2();
                        exit(0);
//end9(Party)
                }else if(move2=="Party"){
                printf("%s used...Party. %s...for some odd reason you decided to party in the monster's stomach. %s then\n\
started to sing that Party in my Stomach Song from...eewwwww...Yo-gabba-gabba. The monster seems\n\
confused. Even I'm confused. As %s jumped up and down while dancing, the monster got sick and\n\
threw up. The enemy seems defeated. The enemy fled. O.K. Just, how many boxes of Pop Tarts were you on? I'm not talking\n\
about %s. I'm talking to you. Just, what encouraged you to select party while %s is being digested. But, whatever. It\n\
was effective. So, I guess I shouldn't be upset at you...but man I don't get paid enough for this.\n\n", x, x, x, x, x, x);
                        graph3();
                        exit(0);
                }
            }
        }else{
            printf("Try again.\n\n");
            scanf("%s", &move);
        }
    }while (BattleValue==0);
}

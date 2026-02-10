INCLUDE questions.ink
INCLUDE score.ink
VAR opinion = 7
You walk along the busy street late in the evening, headed to your apartment from your retail job making minimum wage. You’re so exhausted and burnt out, you don’t notice the light pole until you smack your face against the wooden beam. The pain snaps you out of your daze, and you find yourself face to face with an ad stapled to the pole. The ad is clearly for a job, but it doesn’t say anything about what it is; just that the salary is negotiable, and to come to 777 Merlin Ln Apt 304 if interested. Most days you’d completely ignore something like this, never even consider it, but not today. Today you decide to break the monotonous cycle of your life, and take a risk for a better future. That’s what you thought.
* [Continue] Arriving at 777 Merlin Ln, you see a run-down apartment complex that barely looks livable. Regardless, you enter, ascend the stairs to the third floor and knock on the door to apartment 304. The figure that opens the door catches you off guard. An elderly man with a long gray beard wearing a stereotypical wizard’s cloak and hat.
* * [Continue] “For the last time, I am NOT making you a potion to-” the odd man cuts himself off, clearly realizing that you are not the person he was expecting. He points a long stick at you, resembling a staff of some sort “Who are you?”
* * * [I'm here about the flyer] “I… I’m here about the flyer…” you stammer out, startled by the aggressive reception and the staff leveled at your chest.

    “Ah, you must have seen my job posting!” he says, his expression suddenly changing, “Come in, sit down and we’ll start the interview.”
    
    * * * *[Interview?]“Interview? Right now?”

    “Yes! We don’t have time to waste.”
    
    * * * * *[Okay] “O…kay…” 
    “Wonderful!” he exclaims, “please, come in, follow me!” He leaves the door open as he whirls around and marches away. You step in and are immediately overwhelmed by the sheer amount of stuff crammed into the miniscule apartment; no counter or floor space is left clear except for a thin path over to a desk in the middle of the room. The odd man, who you can only assume is a wizard, sits at the desk, gesturing for you to sit on the rickety stool across from him. It almost buckles underneath you, but just barely manages to hold your weight.
    
    “Alriiiight! Let’s begin. Tell me a little bit about yourself” ->Opening

* * * [Leave] “No, sorry, wrong house” you say, turning and leaving the building. That whole situation just seemed too weird, and escaping your crappy job isn’t worth that. ->END



== Opening
VAR askedaboutjob = false
VAR lied = false
* [Say your name and where you currently work]->name
    

* [Lie about your name and occupation]->lie

* [Ask about the job]"Aren't you going to tell me about the job first? What am I even interviewing for?"
    ->inquire

* [Refuse to answer]->refuse

* {askedaboutjob} [Say your name and that you've been reading about magic]->magic

= name
“I’m James. I currently work at McWenking. I’ve done almost everything there, from cashier work to janitorial work, to fixing the ice cream machine to…” You trail off, seeing the lack of energy on the man’s face hearing about your accomplishments. 
    {lied: “You should’ve stuck with the president thing, especially considering the solid proof you brought in.” The wizard comments.}
    {not askedaboutjob: “I’m sure I’d be great at….” you trail off, realizing you don’t even know what sort of job you’re interviewing for.} 
    *{!askedaboutjob} "What am I interviewing for?" 
    ->inquire
    *{askedaboutjob} ->start //goto interview
    
    
= lie
~ lied = true
“My name is Flamingo McDoolesnap, and I’m the president.”

“The president!” the wizard exclaimed. “In that case, you’re hired!”

“Yeah right” a catty voice chimes in, clearly not the odd man’s unless he’s also a ventriloquist. You look up and see a cat looking at you judgmentally, resting its head on its paw.
    * [Aww kitty!]
    “Awww, kitty! Pspspspspspsps.” You exclaim, and start trying to coax the cat over toward you. 
	“How DARE you!” The cat says, “I am Ebineezer the Fury, ruler of the astral plane, master of material manipulation, member of the Interdimensional Council of Magicks, and you mere mortal DARE you reduce me to a household pet?”
    * * [Apologise]
        “I’m sorry Lord Ebineezer. My pathetic mortal self could never comprehend your vast power. Please have mercy on me!”
		“Hmmf. I will let it slide just this once mortal. Just know there will be no second chances!”
		You avert your eyes from the cat and turn your attention back to the wizard.
    * * [Pet the cat]
        Against all better judgement, you reach out towards the hissing Ebineezer and gently scratch him under the chin. His rage quickly fades into purring, as he closes his eyes contentedly. You stop after a minute and turn back to the wizard to continue. “Don’t you dare try that again. You are by far the worst candidate to come in here” the cat snaps at you, resuming his disinterested demeanor, but you swear that you faintly hear him whisper “I like this one” to the wizard.
    - - "I'm glad the two of you get along so well already." the wizard says. "So why are you here Mr. President?"->presidential_lies
    * [Ignore the cat. The man must be a ventriloquist]
    “I’m not lying, I even brought proof.” You say, pulling out a crumpled piece of paper with “I am the President and I can do what I want” written on it in red crayon. The man takes it from you, examining it for a second, before nodding and handing it back.
 “Well, I can’t argue with that! Though I’m surprised you’d shirk your presidential duties to work for a humble wizard like me. I’m honored, Mr. McDoolesnap.”
“What is wrong with you…” the untraceable voice says again, and you swear you saw the cat saying it.->presidential_lies
=presidential_lies
    * * [Being president was boring]
        “Yeah, it’s not all it’s cracked up to be. Turns out there's a bunch of rules that keep you from making the changes you want. I just want to make spells and cause terror.”
        The wizard raises an eyebrow, “In that case, I think we will get along well. But I still need to interview you first.”
        ->start //goto interview
    * * [Come clean]
        “Actually I lied, I’m not the president.”
        “Obviously” quips the cat. The wizard looks disappointed. 
        ->name


= inquire
~ askedaboutjob = true
“Wasn’t it on the flier?” the man pauses, “Well, no matter. This job is for the position of my assistant.”
*[Assistant?]
    “What kind of assistant? What do you even do?”
“Well, I’m a wizard, of course! You’ll be helping me with my research, doing basic tasks like getting items I need for my rituals.”
    * * [A wizard?]"A wizard? Yeah right. And I'm the easter bunny"
    “You don’t believe me? Maybe this will change your tune.”
The wizard produces the staff from his cloak, and a purple light emanates from the crystal on the top. As the wizard mutters something unintelligible, you feel yourself change. You slowly turn into a mouse.
“Believe me now?”
        * * * [Yes, yes! turn me back]
        The wizard nods at your squeaks, and returns you to normal.{not name: "Now that we've cleared that up, tell me about yourself."->Opening}
        {name:->start}
        * * * [No. I've clearly been drugged]
        The wizard frowns at your squeaks. “Hmmm. Then there’s nothing I can do for you. Ebineezer, they’re all yours.”
    The wizard's cat now stands before you. “Finally, a delicacy.” it says as its giant paw pins you down and its gaping maw swallows you whole. ->END

    * * "I see."
    {not name: “Now, how about you tell me about yourself?”->Opening}
    {name:->start}
    


= refuse
“Wow, way to sell yourself” says a voice you don’t recognize. You look around the room for another person, but the only living thing you can see is a cat squeezed onto the edge of a cluttered shelf. “Do you even know how an interview works?” The voice continues, as the cat coincidentally opens its mouth in unison with the words.

“Ebineezer, leave them alone!” the wizard says after turning to look at the cat, before looking back at you. “I like your style, refusing to do the expected. Refusing to play by the rules. Reminds me of myself ....”
->start //goto interview

= magic
"My name is James and I've been reading some books about magic, and wanted to get some hands-one experience."
“Oho, a fellow lover of the arcane! Well, rest assured, I’ll give you a chance to show me what you’ve learned in this interview."

->start //goto interview
//max pts 25, each pt 1$/hr

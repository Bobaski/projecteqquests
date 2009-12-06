sub EVENT_SAY {
   if(quest::istaskactivityactive(161,4) && $text=~/hail/i) {
       quest::say("You've been a great help already. I'd feel very guilty asking you to help out any further. There are others that can do that work for us. For all of your efforts, I'd be honored to teach you the secret of refining chunks of broken stone worker into refined Taelosian clay and chunks of broken ancient stone worker into refined ancient Taelosian clay.' Malkidiv pulls a small text from his coat and leans forward to show you a few of the pages. What he shows you seems amazingly simple once you've seen it. You think that with practice you might be able to get better results than Malkidiv gives to those that he refines clay for. Just place a single chunk of Broken Taelosian stone worker onto a pottery wheel and you will receive clump of refined Taelosian clay.");
       quest::updatetaskactivity(159,4);
}
elsif ($text=~/hail/i) {
    quest::say("Hello. Thanks for stopping by. Are you, by chance, interested in helping me with some of the more [menial tasks] I have to get done around here?");
  }
  if ($text=~/menial tasks/i) {
    quest::say("Well, I am responsible for keeping the ship stocked with plates, pots and other simple supplies, but with all the research I'm working on and my experiments with the amazing local [clay], I just font have time to keep up. Wayfarers are notoriously hard on dinnerware. Can you [help] me out? And if you have any spare clumps of refined ancient clay, please speak with Hiloan, she needs help making some of the more complicated items used on the ship.");
  }
  if ($text=~/help/i) {
    quest::say("Great! We've discovered that this new clay makes wonderfully durable plates. Of course, there's no point in making durable plates, that's just a challenge to these people to try and break them. With this clay we can make thinner plates that are just as strong and take up less room. Here, take these bits of broken plates and this bonding agent and re-fire the plates. Bring them back to me as soon as you can. I'm grateful for the help. If you can [keep helping] me out, I might be willing to share with you our secret method of refining the stone worker clay.");
    quest::taskselector(161);

  }
 if(quest::istaskactivityactive(161,0) && $text=~/keep helping/i) {
     quest::summonitem(58025,20);
     quest::summonitem(58024,20);
   }
 if(quest::istaskactivityactive(161,1) && $text=~/keep helping/i) {   
    quest::say("Excellent, you're obviously too talented to be wasted fixing plates. We could use a lot of pots. Our cooks are just as clumsy as out patrons. Take these pot molds and blocks of clay and fire them in a kiln. I can use a lot of these things, we use them for storage, cooking, breaking over heads All the usual stuff. We don't need quality here, just quantity. Bring them back to me quickly or we'll run out soon.");
    quest::summonitem(58135,20);
    quest::summonitem(58202,20);
  }
  if(quest::istaskactivityactive(161,2) && $text=~/keep helping/i) {
    quest::say("Wonderful! You are certainly good at working with a kiln, and you've been a great help to me. I have a somewhat more complicated task to be done, if you have the time. We go through mugs here faster than an ogre goes through chocolate. Take this clay and these flasks of water and turn them on a pottery wheel until you have something that resembles a mug. Handles would be helpful, but not necessary. Then take the unfired mug and these Wayfarers seals and carefully fire them in the kiln. Don't worry, those seals are stamped onto tough sea serpent skin, they won't burn. Bring me the mugs when you're done.");
   quest::summonitem(58135,20);
   quest::summonitem(58039,20);
   quest::summonitem(58195,20);
   }
   if(quest::istaskactivityactive(161,3) && $text=~/keep helping/i) {
      quest::say("Fantastic! You have been of great service to the Wayfarers Brotherhood. If you can help me with my next task, I'd be willing to give out one of the Wayfarers trade secrets. This task will require more effort and skill than those I've been asking you to do. Some of our scouts use ceramic shafts for our arrows. These require some skill to make properly and have to be made well. I just can't trust anyone to make them. Take this clay, these flasks of water and this special dye and use the pottery wheel to form them into unfired shafts. Then, take these molds and fire the shafts. The dye is important, as each of the scouts likes to have their own colors on the shafts. Something about competing over who kills the most enemies or something like that.");
      quest::summonitem(58135,20);
      quest::summonitem(58039,20);
      quest::summonitem(58185,20);
      quest::summonitem(58172,20);
      }
      }
 sub EVENT_ITEM {
  plugin::return_items(\%itemcount); 
 }
# Cursed Event - SsraTemple
# This is one of the NoTarget NPC's needed to be depoped to trigger to Cursed Cycle. There is 10 trigger's in all, respawning every hour. When the event is not ready
# One of the TM's, Rhozth_Ssrakezh (NPCID# 162258) will despawn immediately when he spawns if the global for the event is still in play. Each trigger NPC 
# signals it's own NoTarget NPC on death, #cursed_one through #cursed_ten. When these NoTarget NPC's receive the signal, they depop. When all 10 of the NoTarget
# NPC's are despawned, the event cycle starts. In the event of a fail midway through the event, the next group of people to attempt the event will get a PH mob 
# with no loot, as per live. When Cursed dies, the event is no longer doable for a period of 5 days.
#
# Written by Reno
#

sub EVENT_SIGNAL {
	#Depop because our respective trigger has been killed
	quest::depop();
}
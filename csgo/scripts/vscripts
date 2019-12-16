////Setup\\\\
IncludeScript("vs_library")
endbutton <- Entities.FindByName(null,"climb_startbutton")
startbutton <- Entities.FindByName(null,"climb_endbutton")
kzplayer <- Entities.FindByClassname(null, "player")
spawnPoint <- kzplayer.GetOrigin()
vel <- kzplayer.GetVelocity()
saveCheckpoint <- null
prevCheckpoint <- null


SendToConsole("sv_cheats 1; sv_disable_radar 1; sv_weapon_encumbrance_per_item 0; weapon_reticle_knife_show 1; bot_kick; mp_autokick 0; mp_autoteambalance 0; mp_roundtime 60; mp_freezetime 0; mp_respawn_on_death_ct 1; mp_respawn_on_death_t 1; mp_solid_teammates 0; mp_restartgame 1; mp_warmup_end; sv_airaccelerate 100; sv_friction 5.0;sv_maxvelocity 2000;sv_staminajumpcost 0")
SendToConsole("sv_timebetweenducks 0; sv_accelerate_use_weapon_speed 0; sv_accelerate 6.5; sv_staminamax 0; sv_staminarecoveryrate 0; sv_enablebunnyhopping 1; sv_autobunnyhopping 1;sv_staminalandcost 0; sv_maxspeed 320;mp_drop_knife_enable 1; sv_maxvelocity 2000;  radio")
ScriptPrintMessageChatAll(" ● Script setup Complete. This is for single player only.");

::blank <- function()
{
	SendToConsole("radio")
}

////save\\\\
function saveP()
{
	prevCheckpoint = saveCheckpoint
	saveCheckpoint = kzplayer.GetOrigin()
	SendToConsole("radio")
	ScriptPrintMessageChatAll(" ● Checkpoint saved")
}

function setSpawn()
{
	spawnPoint = kzplayer.GetOrigin()
	SendToConsole("radio")
	ScriptPrintMessageChatAll(" ● Spawnpoint saved")
}

////tele\\\\
function teleP()
{
	kzplayer.SetOrigin(saveCheckpoint)
	SendToConsole("radio")
	kzplayer.SetVelocity(vel - vel)
	ScriptPrintMessageChatAll(" ● Checkpoint loaded")
}

function teleP2()
{
	kzplayer.SetOrigin(prevCheckpoint)
	SendToConsole("radio")
	kzplayer.SetVelocity(vel - vel)
	ScriptPrintMessageChatAll(" ● Last Checkpoint loaded")
}

function kzReset()
{
	kzplayer.SetOrigin(spawnPoint)
	SendToConsole("radio")
}

////Other\\\\
function hideHud()
{
	SendToConsole("toggle cl_drawhud")
	delay( "SendToConsole( \"radio\" )", 0.2 )
}

function playerFOV()
{
	SendToConsole("toggle fov_cs_debug 0 130")
	SendToConsole("radio")
}

/*

zp_get_user_first_zombie(id) True if it is, false otherwise.
zp_get_user_last_zombie(id) True if it is, false otherwise.
zp_get_user_last_human(id)    True if it is, false otherwise.                          
zp_get_user_zombie_class(id)   @return		Internal zombie class ID, or -1 if not yet chosen.                           
zp_get_user_zombie(id) True if it is, false otherwise.
zp_get_zombie_maxhealth(id) Maximum amount of health points, or -1 if not a normal zombie.

zp_has_round_started() @return		0 - Round not started*	1 - Round started*	2 - Round starting

zp_get_human_special_class(id) return specclassint
zp_get_zombie_special_class(id) return specclassint
zp_get_user_zombie_class(id) return classint












*/













#include <amxmodx>
#include <fakemeta>
#include <zombie_plague_special>


/*================================================================================
 [Defines]
=================================================================================*/ 
#define is_valid_player(%1) (1 <= %1 <= g_maxplayers && is_user_connected(%1)) 
// Plug info.
new const PLUGIN[] = "[ZP][Checks]"
new const VERSION[] = "1.0"
new const AUTHOR[] = "Furion"

new g_maxplayers


public plugin_precache()
{

}


public plugin_init() 
{
	register_plugin(PLUGIN, VERSION, AUTHOR)
	g_maxplayers = get_maxplayers()
 //hleventshooks
 //client 
 	register_event("DeathMsg", "event_death", "a")

  
  
 //map 
  register_event("ResetHUD", "event_new_round", "b")  //before freezetime?
  register_event("HLTV", "event_round_start", "a", "1=0", "2=0") //after freezetime
  register_logevent("logevent_round_end", 2, "1=Round_End")  
}
public plugin_cfg()
{
	
}
public onConfigsExecuted()
{
	
}

/********************************************************
amx+cstrike forwards for client
*************************************************************/

public client_connectex(id)
{

//PLUGIN_CONTINUE to let a client join to the server
//PLUGIN_HANDLED or higher to prevent a client to join
}
public client_authorized(id)
{

}
public client_putinserver(id)
{

}
public client_infochanged(id)
{

}

public event_death(killer,victim,HS,wpn)
{
//victim read_data(2)
//killer read_data(1)

}
public client_disconnected(id)
{

}

/********************************************************
amx+cstrike forwards for server/map
*************************************************************/
public event_round_start()
{


}
public logevent_round_end()
{

}

/*****************************************************
ZPS 4.3b2 forwards
*****************************************************/
//server
zp_game_mode_selected_pre(id, gamemode)
zp_round_ended(winteam)
zp_round_started(gamemode, id)


//weapons
public zp_weapon_selected_pre(id,type,weapid)//id- playerid, type-0|1(primary|secondary
{

}
public zp_weapon_selected_post(id,type,weapid)//id- playerid, type-0|1(primary|secondary
{

}
//extraitem 
zp_extra_item_selected_pre(id, itemid)
zp_extra_item_selected(id, itemid)

//player
zp_user_last_human(id)
zp_user_last_zombie(id)
zp_extra_item_selected_pre(id, itemid)
zp_extra_item_selected(id, itemid)
zp_user_humanized_pre(id, classid)
zp_user_humanized_post(id, classid)
zp_user_infected_pre(id, infector, classid)
zp_user_infected_post(id, infector, classid)












//while !player
//If player comes within sensor range
if instance_exists(obj_player) && distance_to_object(obj_player) <= targetRadius
{
    //Attack
    state_switch("Attack");
} else
{
    //If not in range, just fly and regen
    /* Need code for pathing here */
    phy_rotation = 0;
    physics_apply_local_force(-sprite_width/2,0,accel,0);
    //Regen while patrolling
    if health < healthMax
    {
        health_regen();
    }
    
}

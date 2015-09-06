if health < healthMax //&& not getting shot
{
    //Is player within sensor range?
    if distance_to_object(obj_player) <= targetRadius
    {
        //if so, run away
        turn_toward_direction(point_direction(obj_player.phy_position_x,obj_player.phy_position_y,phy_position_x,phy_position_y),turnSpeed);
        physics_apply_local_force(-sprite_width/2,0,accel,0);
    } else
    {
        //if not, stop and regen
        phy_rotation = 0;
        physics_apply_local_force(0,0,0,0);
        health_regen();
    }
} else
{
    //Once fully regen enter default Idle state
    state_switch("Idle");
}

if instance_exists(obj_player) && distance_to_object(obj_player) <= 300
{
    //Attack with phasers
    turn_toward_direction(point_direction(phy_position_x,phy_position_y,obj_player.phy_position_x,obj_player.phy_position_y),turnSpeed);
    show_debug_message("Attacking Player!");
    /*with (instance_create(x+lengthdir_x(48,phy_rotation*-1),y+lengthdir_y(48,phy_rotation*-1),obj_phaser))
    {
        phy_bullet=false;  //Set to false to prevent phaser from destroying prior to collision
        phy_rotation=other.phy_rotation;
        phy_fixed_rotation = true;
        physics_apply_local_impulse(-sprite_width/2,0,100,0);
        //physics_apply_local_force(-sprite_width/2,0,1000,0)
    }*/
    if health <= 4
    {
        state_switch("Flee");
    }
} else
{
    state_switch("Idle");
}


//while player not dead
//{
    
//}

//attack player
    //phasers and torps
    //randomly turn away and do drive bys
    //enter state_fleeing if under 20% health
//If player dead
    //Enter state_idle

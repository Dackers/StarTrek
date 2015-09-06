if(state_new)
{
    //If player come within sensor range
    if instance_exists(obj_player) && distance_to_object(obj_player) <= targetRadius
    {
        //And we have sufficient health
        if health >= .8 * healthMax
        {
            //Attack
            state_switch("Attack");
        } else
        {
            //else, run away
            state_switch("Flee");
        }
        
    } else
    {
        //If player is out of range, enter Patrol state
        state_switch("Patrol");
    }
} else
{
    show_message ("Error: No State")
}

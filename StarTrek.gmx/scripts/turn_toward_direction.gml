var wdir, tempdir, turnspeed;
wdir = argument0;
turnspeed = argument1;
if ( abs(wdir-(phy_rotation*-1)) > 180)
{
    if (wdir > 180)
    {
    tempdir = wdir - 360;
        if ( abs(tempdir-(phy_rotation*-1) ) > turnspeed)
        {
        phy_rotation += turnspeed;
        }
        else
        {
        phy_rotation = wdir*-1;
        }
    }
    
    else
    {
    tempdir = wdir + 360;
        if ( abs(tempdir-(phy_rotation*-1)) > turnspeed)
        {
        phy_rotation -= turnspeed;
        }
        else
        {
        phy_rotation = wdir*-1;
        }
    }
}
else
{
    if ( abs(wdir - phy_rotation) > turnspeed)
    {
        if (wdir > (phy_rotation*-1))
        {
        phy_rotation -= turnspeed;
        }
        else
        {
        phy_rotation += turnspeed;
        }
    }
    
    else
    {
    phy_rotation = wdir*-1;
    }
}

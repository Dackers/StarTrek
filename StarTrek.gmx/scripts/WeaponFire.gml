///WeaponFire (weapon object, projectile speed)
weaponType = argument0;
projectileSpeed = argument1;

with (instance_create(x+lengthdir_x(48,phy_rotation*-1),y+lengthdir_y(48,phy_rotation*-1),weaponType))
{
    phy_bullet=false;  //Set to false to prevent phaser from destroying prior to collision
    phy_rotation=other.phy_rotation;
    phy_fixed_rotation = true;
    physics_apply_local_impulse(-sprite_width/2,0,projectileSpeed,0)
}

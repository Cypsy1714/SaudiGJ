vision_lenght = 120;
vision_width = 90;

shadow_id = instance_create_depth(x, y + 15, 1000, obj_shadow);
shadow_id.partner = id;

sense_radius = 40;

vision_dir = "down";

see = false;
see_t = 0;
see_buffer = 20;

investigate = false;
investigate_t = 0;
investigate_max = 300;
last_seen_x = 0;
last_seen_y = 0;
attack_t = 0;
attack_buffer = 60;
shoot_speed = 999999;
shoot_t = 0;
shoot = false;

attack = false;
attack_c_t = 0;

spd = 1;
x_spd = 0;
y_spd = 0;

nodex[0] = 0;
nodey[0] = 0;
nodew[0] = 1;

cur_node = 0;
node_t = 0;

alert_sprite = false;
alert_submig = 0;
alert_t = 0;
alert_spd = 5;
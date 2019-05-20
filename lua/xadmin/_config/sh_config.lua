/*=============
xAdmin Config
=============*/
-- Here is the config for xAdmin. You can create ranks, set needed power levels and even edit the ban message.
-- Ensure you go to xadmin/core/sv_db.lua and set up your SQL credentials.
-- If you're running multiple servers, I also suggest going to autorun/xadmin_init.lua and setting up unique names for each server. Else they will share info.
-- You can find a "Getting Started" guide here: https://github.com/OwjoTheGreat/xadmin/wiki/Getting-Started
-- If you want to change the needed power level of the command you can find that in the xadmin/commands folder. See the above guide (Getting Started) for a detailed guide on how that works.


/*===========
Ranks Config
=============*/
-- These are the ranks that users can be. The first argument is the rank name and the 2nd is the power level.

-- Staff ranks
xAdmin.Core.RegisterGroup("superadmin", 100)
xAdmin.Core.RegisterGroup("admin", 80)
xAdmin.Core.RegisterGroup("moderator", 50)
-- Paid ranks
xAdmin.Core.RegisterGroup("vip+", 20)
xAdmin.Core.RegisterGroup("vip", 10)
-- Base rank
xAdmin.Core.RegisterGroup("user", 0)

-- The default group that a user is given on first join.
xAdmin.Config.DefaultGroup = "user"

-- The power levels needed to be superadmin/admin
xAdmin.Config.Superadmin = 100 -- Superadmin
xAdmin.Config.Admin = 80 -- Admin

-- The power level that can see admin chat
xAdmin.Config.AdminChat = 30
-- The color of admin chat
xAdmin.Config.AdminChatColor = Color(0,150,255)


/*===============
Formatting Config
=================*/

-- The chat prefix
xAdmin.Config.Prefix = "!"

-- The ban message
-- The %s formatting order is: Banning admin, time left, ban reason
xAdmin.Config.BanFormat = [[------------

-- Banned --
Banned by: %s
Time left: %s
Reason: %s

Feel you were false banned? Appeal it on the forums 
------------]]
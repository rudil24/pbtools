# pbtools

My collection of tools (mainly code snippets) that come in clutch for scripting and custom configurations:
* for [Visual Pinball 10 (VPX)](https://github.com/vpinball/vpinball/releases): the incredible pinball hobbyist application from the incomparable [vpinball](https://github.com/vpinball) team.
* for [Pinup Popper](https://www.nailbuster.com/wikipinup/doku.php?id=start): the essential VPX database and front-end for organization and retrieval of your locally stored VPX tables, built by [nailbuster](https://github.com/nailbuster). 

## [![folder](images/folder_24dp_A7C4E5_FILL0_wght400_GRAD0_opsz24.png)](vpx) [vpx](vpx) 
Contains VBScript snippets for: 
* controlling ROM volume
  * In early VPX 10.1-6 releases you could use F12 to control ROM volume, but now F12 opens the much more robust in-game menu. So how can you adjust rom volume? Right in the table script!
  * Did you also know as of Vpinmame 3.6 you can RAISE rom volume over the 0 db limit as well as lower it? A huge impact for quiet ROMs like *Time Machine (Data East 1988)* and *Torpedo Alley (Data East 1988)*  
* adding your own Music playlists (random and sequential, with start and stop capability from your magnasave buttons) to your favorite tables. <br>*Credit to original authors given in the snippets, where applicable*.

## [![folder](images/folder_24dp_A7C4E5_FILL0_wght400_GRAD0_opsz24.png)](popper) [popper](popper) 
Contains SQLite scripts and instructions for building active (dynamically built) playlists in Pinup Popper. With active playlists and better utilization of fields in your popper database, you can create amazing playlists like "give me a random playlist of 1 electromagnetic era (EM) table, 1 solid state (SS) table, and 1 modern DMD-era table that are all in my top 50 tables within those respective categories."

## other cool pinball tools
* [Open Source virtual pinball resources](https://github.com/francisdb/oss-virtual-pinball) from [francisdb](https://github.com/francisdb)<br>A great collection of other utility builders for VPX on Github.
* [VPin Workshop Scripts](https://gitlab.com/PDStig/vpin-workshop-scripts) from [PDStig](https://gitlab.com/PDStig)<br>Diving into these scripts just a little bit is showing me that, like most things these wizards of [VPin Workshop](https://www.vpinworkshop.com/work/) do for the hobby, they've found much better ways to handle music than my hacky script snippets.


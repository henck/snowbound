#charset "us-ascii"

/* 
 *   Include the main header for the standard TADS 3 adventure library.
 *   Note that this does NOT include the entire source code for the
 *   library; this merely includes some definitions for our use here.  The
 *   main library must be "linked" into the finished program by including
 *   the file "adv3.tl" in the list of modules specified when compiling.
 *   In TADS Workbench, simply include adv3.tl in the "Source Files"
 *   section of the project.
 *   
 *   Also include the US English definitions, since this game is written
 *   in English.  
 */
#include <adv3.h>
#include <en_us.h>

/*
 *   Our game credits and version information.  This object isn't required
 *   by the system, but our GameInfo initialization above needs this for
 *   some of its information.
 */
versionInfo: GameID
    IFID = 'c111f0d6-5304-4aab-b6a7-03d7952f7b49'
    name = 'Snowbound'
    byline = 'by Alexander van Oostenrijk'
    htmlByline = 'by <a href="mailto:alex.vanoostenrijk@gmail.com">
                  Alexander van Oostenrijk</a>'
    version = '1'
    authorEmail = 'Alexander van Oostenrijk <alex.vanoostenrijk@gmail.com>'
    desc = 'Put a brief "blurb" about your game here'
    htmlDesc = 'Put a brief "blurb" about your game here'
;

/*
 *   The "gameMain" object lets us set the initial player character and
 *   control the game's startup procedure.  Every game must define this
 *   object.  For convenience, we inherit from the library's GameMainDef
 *   class, which defines suitable defaults for most of this object's
 *   required methods and properties.  
 */
gameMain: GameMainDef
    /* the initial player character is 'me' */
    initialPlayerChar = me
  
    showIntro()
    {
      "Tired, trudging through the deep snow, you wipe sleet from your face 
      using a gloved hand. Face all but numb, you barely feel the encrusted 
      ice on your glove rake across your cheek. The hand inside the glove lost
      all feeling a while ago. What started out as a hiking trip in the foothills 
      of the Andes mountains has turned into a full-blown survival nightmare in no 
      time at all.
      \b
      The trail map Ray had Googled up and printed on a sheet of paper has turned to 
      mush in the rain. Rain turned to snow, falling thickly even now, and in the white 
      world that surrounds you now a map would be of little use anyway. 
      \b
      A whining baby, he called you when you suggested turning back when it 
      started to rain. Ray just had to get to this viewpoint just over the hill. 
      (<i>Suck it up, man! Grow a pair!</i>) There'd even been a sign stating in Spanish, 
      English and German,
      \b
      \tIN CASE OF BAD WEATHER, DO NOT ATTEMPT THE TRAIL BEYOND THIS POINT.
      \b
      To Ray, that had been like a red cloth to a bull. Nothing bad could possibly
      happen to <i>that</i> guy.
      \b
      <q>Ray! Wait up!</q> He doesn't hear you. The snow swallows up all sounds.
      He's disappeared beyond a group of snow-covered boulders up ahead, leaving you
      no choice but to hustle and catch up. 
      \b";
    }   
;

/*
 *   Define the player character.  The name of this object is not
 *   important, but it MUST match the name we use to initialize
 *   gameMain.initialPlayerChar above.
 *   
 *   Note that we aren't required to define any vocabulary or description
 *   for this object, because the class Actor, defined in the library,
 *   automatically provides the appropriate definitions for an Actor when
 *   the Actor is serving as the player character.  Note also that we don't
 *   have to do anything special in this object definition to make the
 *   Actor the player character; any Actor can serve as the player
 *   character, and we'll establish this one as the PC in main(), below.  
 */
+ me: Actor
  location = SnowyHillside
;



#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

StartOfPath: OutdoorRoom 'Path'
  visited = nil
  desc() {
    "You come to a point where the flat ground gets narrower, until it merely
    separates the steep hillside from a deep precipice. Losing your footing could
    well be fatal here. The beginning of a path between rows of boulders can just be discerned 
    in the snow. 
    \b";
    if(!visited) {
      visited  = true;
      "Ray is already halfway up the path. He half turns and makes a come-along gesture. He's
      saying something, but the strong wind blows most of his words away. <q>Hey dickface! Told you I'd ... Come on ... 
      somewhere ... no time!</q> He turns away and continues up the path to the northwest.
      \b
      It looks like Ray led you <i>somewhere</i>, after all. About time too, because you don't think
      you can go on for much longer. This trip's gone badly wrong... Ray's lucky it's not <i>his</i>
      parents who must be worried sick by now --
      \b
      You stop that train of thought before it can develop any further. Ray has no parents, lost them both when he was
      just twelve. He may be an asshat for leading you into this blizzard -- he'll never hear the end 
      of it -- but you're sure he'll lead you out of it, too. A little faith goes a long way, and Ray's
      always been like a big brother to you.
      \b
      The path gets really narrow up ahead, and Rays seems to be hugging the face of the cliff and 
      moving very slowly now. Then he's gone around a bend in the path and out of sight.";
    } else {
      "Ray's tracks lead off to the northwest, up the path. ";
    }
  }

  east: FakeConnector { 
    "You'd better follow Ray, since he has your map and compass. God help you if you walk off into that curtain of snow by yourself. ";
  } 
  
  northwest: TravelMessage 
  { 
    -> BendInPath
    "You start hurrying up the path as quickly as your tired body allows, then check your speed
    quickly as you glance down the cliffside along the path. It seems bottomless. ";
  }   
  

  atmosphereList : ShuffledEventList {
  [
    'Snow keeps falling thickly. ',
    'Hidden behind curtains of snow, the world is very still. ',
    'Your breath forms little clouds in the icy air. ',
    'The dull sound of a load of snow sliding off a tree branch comes from somewhere nearby. ',
    'The heavy silence is broken only by the ragged sound of your breathing. ',
    nil
  ] 
 }   
;


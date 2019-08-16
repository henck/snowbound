#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

SnowyHillside: OutdoorRoom 'Snowy hillside'
  "You are on a stretch of flat ground on a snow-covered hillside. The Chileans
  call their country <i>muy acidentado</i> - very hilly - for a reason. This entire
  hike has been a long series of climbs, some up, some down (but mostly up). A couple
  of tallish trees that look like pines grow along the trail. 
  \b
  Ray's deep tracks in the snow lead off to the west. "
  
  west: TravelMessage 
  { 
    -> StartOfPath
    "Nearly bent double in the strong wind, you follow Ray's tracks to the west. The thick
    snow makes your progress agonizingly slow. You can barely feel your feet, but a dull pain
    rises from your lower legs all the way up to your groin. ";
  }   

  east: FakeConnector { 
    "You'd better hurry up and follow Ray. God help you if you walk off into that curtain of snow by yourself. ";
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

+ boulders: Decoration 'boulder*boulders' 'boulders'
  "The boulders are taller than a man, and clearly rolled down the hillside in ages past. Now they're
  all but hidden by the snow. "
  isPlural = true
  dobjFor(Push)
  {
    verify() {}
    check() { failCheck('Now is not the time to play games. You\'ve hardly the strength to keep moving, 
      and besides you\'d need to bring a busload of people to stand a chance of moving these huge boulders. '); }
  }
;

trees: MultiLoc, Decoration 'pine tree*trees' 'trees'
  "Covered in snow, the trees are silent sculptures. "
  locationList = [ SnowyHillside, StartOfPath ]   
  isPlural = true 
  dobjFor(Climb)
  {
    verify() {}
    check() { failCheck('That would be a difficult undertaking that gains you nothing. These trees are covered 
      in a thick layer of snow, and the branches are thin and wouldn\'t support your weight. '); }
  }   
;

snow: MultiLoc, Decoration 'snow landscape area' 'snow'
  "Previously, you counted yourself among people who thought a snow-covered landscape pretty. 
  You've now learned that it's also freezing cold, and so white that it's blinding and painful
  to the eyes. "
  locationList = [ SnowyHillside, StartOfPath ] 
;

tracks: MultiLoc, Decoration 'track*tracks' 'tracks'
  "The layer of snow is so deep that Ray's floundering progress through it has left a small gully, rather than individual footsteps. "
  locationList = [ SnowyHillside, StartOfPath ] 
;

hill: MultiLoc, Decoration 'hill hillside mountain*hills' 'hillside'
  "Rocky and steep, you'd classify this as a mountain rather than a hill, but officially these
  are still merely <q>foothills</q> to the Andes mountains. Not that it matters one iota: in this
  blizzard of snow, you might as well be on the summit of the highest mountain for all the difference
  it would make. These conditions kill people. "
  locationList = [ SnowyHillside, StartOfPath ] 
;


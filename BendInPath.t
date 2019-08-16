#charset "us-ascii"
#include <adv3.h>
#include <en_us.h>

BendInPath: OutdoorRoom 'Bend in path'
  visited = nil
  desc() {
    "The path is very narrow here, and you can only negotiate it by pressing
    your back against the cliff face and taking small steps sideways, and not
    looking down: from what you can see from the precipice amongst the whirls 
    of snow, it's very, very deep.
    \b";
    if(!visited) {
      visited  = true;
      "Ray is shuffling along rather slowly, and you finally manage to catch up
      with him. His gaze alternates between the precipice and the end of the path
      to the west.
      \b
      <q>Finally decided to join me, did you?</q> he shouts. <q>Told you I'd get
      us out! Look!</q> Ray points west, where the contours of a small building are barely
      visible in the blizzard. <q>A cabin! That means people!</q>
      \b
      <q>Water,</q> you croak. <q>Dry clothes --</q>
      <q>That's right! Race you to the cabin, dickface!</q>
      With that, Ray pushes off, adjusts his backpack and shuffles quickly towards the end of the path,
      which starts to widen to the west. He looks back at you, grins widely, and
      loses his footing.
      \b
      One moment he's waving his arms, one foot over the abyss, his grin faltering. Then
      he's gone.
      \b
      There's no scream. Ray simply falls and disappears into depths, into the
      swirling show. 
      \b
      All is silent. ";
    } 
  }
  
  southeast: FakeConnector { 
    "There's no point in going back that way. You'd never find your way out of these
    hills without a map and a compass. Or better yet, access to a phone to call people
    who know what they are doing. ";
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
};
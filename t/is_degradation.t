#!/usr/bin/env perl
use strict;
use warnings;
use lib 't/lib';
use Test::More;

use Test::NetHack::Engravings;

degrade_ok  "Elbereth" => "Elbereth";
degrade_ok  "Elbereth" => "Flbereth";
degrade_nok "Flbereth" => "Elbereth";
degrade_ok  "Elbereth" => "";
degrade_ok  "Elbereth" => "????????";
degrade_ok  "Elbereth" => "       ?";
degrade_nok "Elbereth" => "        ?";

degrade_progression(
    "Elbereth" =>
    "Elbcret?" =>
    "E|b?re ?" =>
    "F| ???"   =>
    "F  ???"   =>
    "F    ?"   =>
    "F"        =>
    "-"        =>
    ""
);

degrade_progression(
    "Elbereth" =>
    "Elbe?eth" =>
    "El e?et?" =>
    "El e e??" =>
    "El c e?"  =>
    "El c e"   =>
    "E  c ?"   =>
    "E  c"     =>
    "E  ?"     =>
    "E"        =>
    ""
);

degrade_progression(
    "               x" =>
                   "x" =>
                   ""
);

degrade_progression(
    "E0E0E0E0E0E0E0E0E0ECE0" =>
    "E0E0E0E([0E0E0E0E?ECE0" =>
    "E0E0E0E([0E0E0E0E?EC?0" =>
    "E0E0?0E([0E0E?E0E?E(?0" =>
    "E0E? 0E([0E0E?E0E?E(?0" =>
    "E0L? 0E([0E0E?E0E?E(?0" =>
    "F?L? 0E([0E?E?E(E?E(?0" =>
    "F?L? (E([0E?E?E(E?E(?0" =>
    "F?L? (F([0??E?E?E?E? 0" =>
    "F?L? (F([0? E?E?E?E? 0" =>
    "F L? ?F([(? E?E?E?E? 0" =>
    "F L? ?|([(? E?L?E?E  0" =>
    "F L  ?|([(? E?L?E?E  0" =>
    "- L  ?|([(? E?L?E?E  0" =>
    "- L  ?|([(? E???E?E  0" =>
    "- L  ?|([?? E???E?E  0" =>
    "- L   |([?? E???E?F  0" =>
    "- L   |(??? E???|?F  0" =>
    "- L   |(??? E ??|?|  0" =>
    "- L   |( ?? E ??| |  0" =>
    "- |   |( ?? E ? | |  0" =>
      "|   |(  ? E ? | |  0" =>
      "|   |(  ? E   | |  0" =>
      "|   |?    E   | |  0" =>
      "|   |?    L   | |  0" =>
      "|   |?    L     |  0" =>
      "|   |?    L        0" =>
          "|?    L        0" =>
           "?    L        0" =>
           "?    L        C" =>
                "L        C" =>
                "L        ?" =>
                "L"          =>
                ""
);

degrade_progression(
    "Warning:  fortune reading can be hazardous to your health.",
    "W?rning:  fortune re?ding can be haza?dous to your nealth.",
    "W?rning:  ?ortune re??ing ?an be haza?dous ?o your nealth.",
    "W?rning:  ?ortune re? ing ??n bc haza?dous ?o your neal?h.",
    "W??nin?:  ?crtune re? ing  ?n bc haza?dous ?o your neal?h.",
    "W??n?n?:  ?crtune re? ing  ?r bc haza?dous ?o your nea|?h.",
    "W??n?n?:  ?crtunc re? ing  ?r bc haza?dous ?o your nea|?h.",
    "W??n?n?:  ?crtunc re? i?g  ?r bc haza?dous ?o your nea|?h.",
    "W??n n?:  ?crtunc re? i g  ?r bc haza?dou? ?o your nea|?h.",
    "W??n n?:  ?crtunc re? ? g  ?r bc haza?dou? ?o your rea|?h",
    "W??n n?:  ?crtunc re? ? g  ?r bc haza dou? ?o y?ur rea|?h",
    "W??n n?:  ?crtunc re? ? g  ?r bc haza dou? ?o ??ur rea|?h",
    "W??n n?:  ?crtunc re? ? g  ?r b? haza do?? ?c ? ur rea|?h",
    "W??n n?:  ?crtunc re? ? g  ?r b? haz? do ? ?c ? ur rea|?h",
    "W??n n?:  ?crtunc re? ? g  ?r b? haz? do ? ?c ? ur rea|?h",
    "W??n n?:  ?crtunc rc? ? g  ?r b? haz? do ? ?c ? ur rea|?h",
    "W??n n?:  ?crt?nc rc? ? g  ?r b  haz? |o ? ?c ? ur re?|?h",
    "W??n n?:  ?crt?nc rc? ? c  ?r b  haz? |o ? ?? ? ur ?e?|?h",
    "W??n r?:  ?crt?nc rc? ? c  ?r b  haz? |o ? ?? ? ur ?e?|?h",
    "V??n r?.  ?crt?nc rc? ? c  ?r b  haz? |o ? ?? ? ur ?e?|?h",
    "V??n r?.  ?crt?nc rc? ? c  ?r b  ?az? |o ? ?? ? ur ?e?|?h",
    "V??r r?.  ?crt?nc rc? ? c  ?r b  ??z? |o ?  ? ? ur ?e?|?h",
    "V??r r .  ?crt?nc rc? ? c  ?r b  ??z? |o ?  ? ? ur ?e |?h",
    "V??r r .  ?crt?nc rc? ? c  ?r b  ??z? |o ?  ? ? ?r ?e |?h",
    "V??r r .  ?crt??c rc? ? c  ?r b   ?z? |o ?  ? ? ?r ?e |?h",
    "V??r r .  ?crt??c rc? ? ?  ?r b   ?z? |o ?  ? ? ?r ?e  ?h",
    "V??r r    ??rt??c rc? ? ?  ?r b   ?z? |o ?    ?  r ?e  ?h",
    "???r r    ??rt??c rc? ? ?  ?r b   ?z? |o ?    ?  r ?e  ?h",
     "??r r    ??rt??c ?c? ? ?  ?r b   ?z? |o ?    ?  r ?e  ?h",
     "??r r    ??rt??c ?c? ? ?  ?r b   ?z? |o ?    ?  ? ?e  ?h",
     "??r r    ??rt??c ?c? ? ?  ?r b   ?z  |o ?    ?  ? ?e  ?h",
     "??r r    ??rt??c ?c? ? ?  ?? b   ?z  |o ?    ?  ? ?e  ?h",
      "?r r    ? rt? c ?c? ? ?  ?? b   ?z  |o ?    ?  ? ?e  ?h",
      "?r r    ? rt  c ?c? ? ?  ?? b   ?z  |o ?    ?  ? ?e  ?h",
      "?? r    ? rt  c ?c? ? ?  ?? b   ?z   o ?    ?  ? ?e  ?h",
      "?? r    ? rt  c ??? ? ?  ?? b   ?z   o ?    ?  ? ?e  ?h",
      "?? r    ? rt  c  ?? ? ?  ?? b   ?z   o ?    ?  ? ?e  ?h",
      "?? r    ? rt  c  ?  ? ?  ?? b   ??   o ?    ?  ? ?e  ?h",
      "?? r      rt  c  ?  ? ?  ?? b   ??   o ?    ?  ? ?e  ?h",
      "?? r      rt  c  ?    ?  ?? b   ??   o ?    ?  ? ?e  ?h",
);

done_testing;

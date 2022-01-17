t := (Trojkat new) initialize: 3 wysokosc: 4.
t drukuj.
k := (Kwadrat new) initialize: 2.
k drukuj.
Transcript show: 't+t'; cr.
t1 := t przesun: 2@3.
t1 drukuj.
t2 := t1 + t1 + t1 + t1.
t2 drukuj.
Transcript show: 't+k'; cr.
k1 := k przesun: (-3)@(-3).
k2:= k1 +k1
k2 drukuj.
t2 := t1 + k2.
t2 drukuj.
Transcript show: 'k+t'; cr.
k3 := k2 + t1.
k3 drukuj.

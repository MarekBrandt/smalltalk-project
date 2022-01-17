<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of 28 lipca 2017 on 17 stycznia 2022 at 23:22:36</time-stamp>


<component-created>
<name>Języki Programowania</name> <type>package</type>
</component-created><!-- Package Języki Programowania* -->


<component-property>
<name>Języki Programowania</name> <type>package</type>
<property>comment</property> <value>'Programy dla przedmiotu Języki Programowania'</value>
</component-property>

<class>
<name>Wielokat</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>wierzcholki nazwa </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>JezykiProgramowania</category>
<attributes>
<package>Języki Programowania</package>
</attributes>
</class>

<comment>
<class-id>Wielokat</class-id>
<body>Wielokat has not been commented.  The comment should state the purpose of the class and also explain any unobvious aspects of the implementation.Instance Variables:	nazwa	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	description of nazwa	wierzcholki	&lt;(Array of: (FlowSegment | Point))&gt;	description of wierzcholkiKlasa wielokatow</body>
</comment>

<class>
<name>Trojkat</name>
<environment>Smalltalk</environment>
<super>Wielokat</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>podstawa wysokosc </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Języki Programowania</package>
</attributes>
</class>

<comment>
<class-id>Trojkat</class-id>
<body>Moj trojkat</body>
</comment>

<class>
<name>Kwadrat</name>
<environment>Smalltalk</environment>
<super>Wielokat</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>podstawa </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>JezykiProgramowania</category>
<attributes>
<package>Języki Programowania</package>
</attributes>
</class>

<comment>
<class-id>Kwadrat</class-id>
<body>Kwadrat has not been commented.  The comment should state the purpose of the class and also explain any unobvious aspects of the implementation.</body>
</comment>

<methods>
<class-id>Wielokat</class-id> <category>initialize-release</category>

<body package="Języki Programowania" selector="initialize:name:pierwszy:">initialize: liczbaWierzcholkow name: nowaNazwa pierwszy: wierzcholek	"konstruktor obiektu - wielokata"	nazwa:=nowaNazwa.	wierzcholki:=Array new: liczbaWierzcholkow.	wierzcholki at: 1 put: wierzcholek.</body>

<body package="Języki Programowania" selector="initialize:name:">initialize: liczbaWierzcholkow name: nowaNazwa	"konstruktor obiektu - wielokata"	nazwa:=nowaNazwa.	wierzcholki:=Array new: liczbaWierzcholkow.	wierzcholki at: 1 put: 0@0.</body>
</methods>

<methods>
<class-id>Wielokat</class-id> <category>accessing</category>

<body package="Języki Programowania" selector="nazwa">nazwa	"podaje nazwe wielokata"	^nazwa</body>

<body package="Języki Programowania" selector="nazwa:">nazwa: nowa_nazwa	"ustawia nowa nazwe wielokata"	nazwa:=nowa_nazwa</body>
</methods>


<methods>
<class-id>Trojkat class</class-id> <category>instance creation</category>

<body package="Języki Programowania" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Trojkat</class-id> <category>accessing</category>

<body package="Języki Programowania" selector="drukuj">drukujTranscript 	show: (nazwa) printString; cr;	show: 'bok1 ', (wierzcholki at: 1) printString; cr;	show: 'bok2 ', (wierzcholki at: 2) printString; cr;	show: 'bok3 ', (wierzcholki at: 3) printString; cr.</body>
</methods>

<methods>
<class-id>Trojkat</class-id> <category>arithmetic</category>

<body package="Języki Programowania" selector="+">+ figura	"dodaj 2 figury w sensie pola"	| p a1 h1|		p:=self pole + figura pole.	a1:= ((podstawa squared) * p / self pole) sqrt. 	h1:= ((2*p)/a1).	^(Trojkat new) initialize: a1 wysokosc: h1.</body>
</methods>

<methods>
<class-id>Trojkat</class-id> <category>actions</category>

<body package="Języki Programowania" selector="pole">pole	"licz pole trojkata"	^(podstawa*wysokosc)/2</body>

<body package="Języki Programowania" selector="przesun:">przesun: wektor^(Trojkat new) initialize: podstawa wysokosc: wysokosc przesun: wektor od: wierzcholki</body>
</methods>

<methods>
<class-id>Trojkat</class-id> <category>initialize-release</category>

<body package="Języki Programowania" selector="initialize:wysokosc:">initialize: bok wysokosc: h	"tworz trojkat o podanym boku"	podstawa:=bok.	wysokosc:=h.	super initialize: 3 name: 'Trojkat'.	wierzcholki at: 2 put: bok@0.	wierzcholki at: 3 put: bok/2@h.</body>

<body package="Języki Programowania" selector="initialize:wysokosc:przesun:od:">initialize: a wysokosc: h przesun: wektor od: stare_wierzcholki	"tworz trojkat o podanym boku"	podstawa:=a.	wysokosc:=h.	super initialize: 3 name: 'Trojkat' pierwszy: ((stare_wierzcholki at: 1) + wektor).	wierzcholki at: 2 put:((stare_wierzcholki at: 2) + wektor).	wierzcholki at: 3 put: ((stare_wierzcholki at: 3) + wektor).</body>

<body package="Języki Programowania" selector="przesun:od:">przesun: wektor od: stare_wierzcholki	"tworz trojkat o podanym boku"	super initialize: 3 name: 'Trojkat' pierwszy: ((stare_wierzcholki at: 1) + wektor).	wierzcholki at: 2 put:((stare_wierzcholki at: 2) + wektor).	wierzcholki at: 3 put: ((stare_wierzcholki at: 3) + wektor).</body>
</methods>


<methods>
<class-id>Kwadrat</class-id> <category>accessing</category>

<body package="Języki Programowania" selector="drukuj">drukujTranscript 	show: (nazwa) printString; cr;	show: 'bok1 ', (wierzcholki at: 1) printString; cr;	show: 'bok2 ', (wierzcholki at: 2) printString; cr;	show: 'bok3 ', (wierzcholki at: 3) printString; cr;	show: 'bok4 ', (wierzcholki at: 4) printString; cr.</body>
</methods>

<methods>
<class-id>Kwadrat</class-id> <category>arithmetic</category>

<body package="Języki Programowania" selector="+">+ figura	"dodaj 2 figury w sensie pola"	| p |	p:=self pole + figura pole.	^(Kwadrat new) initialize: p sqrt</body>
</methods>

<methods>
<class-id>Kwadrat</class-id> <category>actions</category>

<body package="Języki Programowania" selector="przesun:">przesun: wektor^(Kwadrat new) initialize: podstawa przesun: wektor od: wierzcholki</body>

<body package="Języki Programowania" selector="pole">pole	"licz pole kwadratu"	^podstawa squared</body>
</methods>

<methods>
<class-id>Kwadrat</class-id> <category>initialize-release</category>

<body package="Języki Programowania" selector="initialize:przesun:od:">initialize: bok przesun: wektor od: stare_wierzcholki	"tworz kwadrat o podanym boku, przesuniety o"	podstawa:=bok.	super initialize: 4 name: 'Kwadrat' pierwszy: ((stare_wierzcholki at: 1) + wektor).	wierzcholki at: 2 put: ((stare_wierzcholki at: 2) + wektor).	wierzcholki at: 3 put: ((stare_wierzcholki at: 3) + wektor).	wierzcholki at: 4 put: ((stare_wierzcholki at: 4) + wektor).</body>

<body package="Języki Programowania" selector="initialize:">initialize: bok	"tworz kwadrat o podanym boku"	podstawa:=bok.	super initialize: 4 name: 'Kwadrat'.	wierzcholki at: 2 put: bok@0.	wierzcholki at: 3 put: bok@bok.	wierzcholki at: 4 put: 0@bok.</body>
</methods>



</st-source>

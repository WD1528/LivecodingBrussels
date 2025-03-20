
source1 = Bus.audio();
source2 = Bus.audio();

Out.ar(source1, SinOsc.ar(50, source2));
Out.ar(source2, SinOsc.ar(50, source1));

(
SynthDef(\crossfb, {arg freq;
	var phase1, phase2;

	phase1 = Bus.audio(s);
	phase2 = Bus.audio(s);

	Out.ar(phase1, SinOsc.ar(50, phase2));
	Out.ar(phase2, SinOsc.ar(50, phase1));

	Out.ar(0, [phase1, phase2]);
}).add;

)
SawOsc s => NRev r =>  dac;
.5 => s.gain;
.1 => r.mix;

//array
[0, 3, 5] @=> int hi[];

while(true)
{
        // change
        Std.mtof(45 + Std.rand2(0,3)*12 +
        hi[Std.rand2(0,hi.cap()-1)]) => s.freq;
    
    //rate
    200::ms=>now;
}
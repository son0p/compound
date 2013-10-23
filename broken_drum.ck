// noise generator, biquad filter, dac (audio output) 
Noise n => BiQuad f => dac;
// set biquad pole radius
.99 => f.prad;
// set biquad gain
.05 => f.gain;
// set equal zeros 
1 => f.eqzs;
// our float
0.0 => float t;

[0, 3, 5] @=> int hi[];

while(true)
{
        
    200.0 + Std.fabs(Math.sin(t)) * 1500.0 => f.pfreq;
    t + .50 => t;
     <<<Std.rand2(0,100)/50 => f.gain >>>;
    t + .5 => t;
  
    //rate
    100::ms=>now;
}
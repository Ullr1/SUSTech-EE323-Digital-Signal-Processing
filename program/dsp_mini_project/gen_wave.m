function waves = gen_wave(tone, scale, noctave, rising, rhythm, fs, attenuation)
duration_total = rhythm;
freq = tone2frequency(tone, scale, noctave, rising);
t = linspace(0, duration_total, fs*duration_total);
if tone == 0
    waves = zeros(1,fs*duration_total);
else
    waves=sin(2*pi*freq*t);
    k=[1,0.285,0.222,0.12,0.1246,0.141,0.02,0.059];
    for i=2:length(k)
        waves=waves+k(i)*sin(2*pi*freq*i*t);
    end
    waves=waves/max(waves);
end
if attenuation == "null"
    waves = waves;
elseif attenuation == "line"
    waves = waves.*(1+(0.4-1)/rhythm*t);
elseif attenuation == "exp"
    waves = waves.*exp(-t/1);
elseif attenuation == "squared"
    waves = waves.*(0.6*t.^2-1.2*t+1);
elseif attenuation == "exp_pro"
    a = 0.01;
    b = -2.5;
    waves=0.4*waves.*(t.^a.*exp(b*t));
end
end
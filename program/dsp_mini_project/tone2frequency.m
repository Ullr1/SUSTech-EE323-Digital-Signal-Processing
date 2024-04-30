function freq = tone2frequency(tone, scale, noctave, rising)
% Encoding instructions: 
% 'tone' represents the numerical notation in the  musical score, denoting the pitch of each note, ranging from 1 to 7. 
% 'scale' indicates the key signature in the music, input as C, D, E, F, G, A, or B. 
% 'noctave' signifies the number of octaves higher or lower for each pitch, with the numerical range as integers. 
% 0 denotes the middle octave, positive values represent 'noctave' higher octaves, and negative values represent 'noctave' lower octaves. 
% 'rising' indicates whether there's a sharp or flat key signature. 1 stands for sharp, -1 for flat, and 0 signifies no sharp or flat.
C_frequency = 261.5;
index = [2^(2/12), 2^(2/12), 2^(1/12), 2^(2/12), 2^(2/12), 2^(2/12), 2^(1/12)];
f = C_frequency;
if scale == "C"
    f_scale = f;
    int_scale = 1;
elseif scale == "D"
    for i = 2:2
        f = f*index( mod(i-2, 7)+1);
    end
    f_scale = f;
    int_scale = 2;
elseif scale == "E"
    for i = 2:3
        f = f*index( mod(i-2, 7)+1);
    end
    f_scale = f;
    int_scale = 3;
elseif scale == "F"
    for i = 2:4
        f = f*index( mod(i-2, 7)+1);
    end
    f_scale = f;
    int_scale = 4;
elseif scale == "G"
    for i = 2:5
        f = f*index( mod(i-2, 7)+1);
    end
    f_scale = f;
    int_scale = 5;
elseif scale == "A"
    for i = 2:6
        f = f*index( mod(i-2, 7)+1);
    end
    f_scale = f;
    int_scale = 6;
elseif scale == "B"
    for i = 2:7
        f = f*index( mod(i-2, 7)+1);
    end
    f_scale = f;
    int_scale = 7;
end

if tone>=2
    for i = 2:tone
        f_scale = f_scale*index( mod(i+(int_scale-3), 7)+1);
    end
end
if tone == 0
    freq = 0;
else
    freq = f_scale*2^noctave*2^(rising/12);
end
end
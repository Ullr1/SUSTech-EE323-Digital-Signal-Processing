function music = gen_music(toneMatrix, scale, noctaveMatrix, risingMatrix, rhythmMatrix, fs, attenuation)
music = [];
for i = 1:length(toneMatrix)
    music = [music, gen_wave(toneMatrix(i),scale,noctaveMatrix(i),risingMatrix(i),rhythmMatrix(i),fs,attenuation)];
end
audiowrite("music.wav",music,fs);
end
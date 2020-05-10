function ans=linear_amp(filename,par)
    sample2=readraw(filename);
    sample2=cast(sample2,'uint8');
    sample2_3=sample2*par;
    writeraw(sample2_3,"D.raw");
end
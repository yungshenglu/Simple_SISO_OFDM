% Save the real and imaginary parts separately into complex_array
complex_array = zeros(1, 2*YOUR_ARRAY_LENGTH);
for j = 1:YOUR_ARRAY_LENGTH
        complex_array(2*j-1) = real(var(j));
        complex_array(2*j) = imag(var(j));
end
% Save complex number into .bin file
fid = fopen('src_data_1.bin', 'w');
fwrite(fid, complex_array, 'float');
fclose(fid);

% To read .bin file
read_complex_binary ('src_data_1.bin')

% Save all variables into .mat file 
save src_data_1.mat;
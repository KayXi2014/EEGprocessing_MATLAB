function ST=stran(h)
% Compute S-Transform without for loops
%%% Coded by Kalyan S. Dash %%%
%%% IIT Bhubaneswar, India %%%
[~,N]=size(h); % h is a 1xN one-dimensional series
nhaf=fix(N/2);
odvn=1;
if nhaf*2==N
    odvn=0;
end
f=[0:nhaf -nhaf+1-odvn:-1]/N;
Hft=fft(h);
%Compute all frequency domain Gaussians as one matrix
invfk=(1./f(2:nhaf+1))';
W=2*pi*repmat(f,nhaf,1).*repmat(invfk,1,N);
G=exp((-W.^2)/2); %Gaussian in freq domain
% End of frequency domain Gaussian computation
% Compute Toeplitz matrix with the shifted fft(h)
HW=toeplitz(Hft(1:nhaf+1)',Hft);
% Exclude the first row, corresponding to zero frequency
HW=(HW(2:nhaf+1,:));
% Compute Stockwell Transform
ST=ifft(HW.*G,[],2); %Compute voice
%Add the zero freq row
st0=mean(h)*ones(1,N);
ST=[st0;ST];
end
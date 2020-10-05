function out = istran(S)
% USAGE: s=inv_s_tran(in)
%
% function to take the inverse S-transform, assuming that the S-transform
% was obtained using the function stran.m.  This is part of the ST IST
% pair.  For a more complete reference, see IEEE TRANSACTIONS ON SIGNAL
% PROCESSING, VOL. 55, NO. 10, OCTOBER 2007
% 
% 
% NOTE: this code is designed to work with the S-transform code found on
% Matlab central:
% http://www.mathworks.com/matlabcentral/fileexchange/45848-stockwell-transform--s-transform-
%
% =====================================================================
%  INPUTS
% 
%   S   the input S transform, as given by stran.m 
%
% =====================================================================
%  OUTPUTS
%
%  out  a time domain signal 
%
% ......................................................................
%  by Christian Poppeliers
%     East Carolina University
%     Dept. of Geosciences
N=size(S,2);
%S=stran_web(d);
% perform the inner sum
for ii=1:size(S,1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    )
    ss(ii)=sum(S(ii,:));
end
% fix the sign on the imaginary part
ss_real=real(ss);
ss_imag=imag(ss);
ss_imag(1:round(N/2))=-1*ss_imag(1:round(N/2));
ss=ss_real+(1i*ss_imag);
% take the ifft to get the time-domain signal
ist=real(ifft(ss));
% resample the time series to original length
ts=resample(ist,2,1);
out=ts;
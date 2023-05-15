function [r_ctm] = ctm_feature(real,imag)
%CTM_FEATURE Summary of this function goes here
%   Detailed explanation goes here


ln=length(real);
partial=zeros(ln,1);
ctm_temp=0;
r_temp=0;
r_ctm=zeros(ln,1);


while ctm_temp<0.95
    %Calculate partial for given r
    for i=1:ln
        abs_i_real=abs(real(i));
        abs_i_imag=abs(imag(i));
        
        temp_check=((abs_i_real)^2+(abs_i_imag)^2)^0.5;

            if temp_check < r_temp
                partial(i,1)=1;
            else
                partial(i,1)=0;
            end
    end
    %Calculate CTM for given r
    ctm_temp=sum(partial)/ln;

    r_ctm=r_temp;
    r_temp=r_temp+1;

    partial=zeros(ln,1);


end


end


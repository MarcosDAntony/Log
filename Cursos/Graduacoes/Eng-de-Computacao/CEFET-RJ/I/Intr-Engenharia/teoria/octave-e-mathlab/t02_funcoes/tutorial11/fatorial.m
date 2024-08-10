function [F] = fatorial(n)

if(n>1)
    F=fatorial(n-1)*n;
else    
    F=1;
end;

end


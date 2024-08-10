function [A]=numInt(f1,f2,a,b,N,Metodo,Display)
  
  A = 0;
  dx = (b-a)/N;
  x = a:dx:b;
  
  for i=1:N
    if(Metodo==0) % retangular
      A = A + abs(f1(x(i))-f2(x(i)))*dx;
    elseif(Metodo==1) % trapezoidal      
      Bl = abs(f1(x(i))-f2(x(i)));
      Br = abs(f1(x(i+1))-f2(x(i+1)));      
      A = A + (Br+Bl)*dx/2;
    end    
  end
  
  if(Display)
      s = a:0.01:b;
      plot(s,f1(s),'k');
      hold on; grid on;
      plot(s,f2(s),'k');
      xlim([a b]);      
      set(gca,'FontSize',18);
      for i=1:N 
          if(Metodo==0)
            Y = [min(f1(x(i)),f2(x(i))) max(f1(x(i)),f2(x(i))) ...
                max(f1(x(i)),f2(x(i))) min(f1(x(i)),f2(x(i)))];
          elseif(Metodo==1)
            Y = [min(f1(x(i)),f2(x(i))) max(f1(x(i)),f2(x(i))) ...
                max(f1(x(i+1)),f2(x(i+1))) min(f1(x(i+1)),f2(x(i+1)))];              
          end
          X = [x(i) x(i) x(i+1) x(i+1)];
          fill(X,Y,'b');
      end  
  end;  

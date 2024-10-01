function Q3e(A,N)  
  close all;
  detA = zeros(N,1);
  for k=1:N
    detA(k) = det(Q3d(A,k));  
  end
  plot(detA,'-*');
  grid on;
  set(gca,'FontSize',18);
  xlabel('k');
  ylabel('det(A)');
  hold on;
  D = det(expm(A));
  line([0 N],[D D],'Color','r','LineStyle','--');
end  
  
  

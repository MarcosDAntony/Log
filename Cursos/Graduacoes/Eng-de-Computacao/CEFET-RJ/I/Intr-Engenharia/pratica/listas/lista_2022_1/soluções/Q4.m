function N = Q4(DMA1,DMA2)
  N = abs(datenum(DMA1.ano,DMA1.mes,DMA1.dia)-datenum(DMA2.ano,DMA2.mes,DMA2.dia))
end  
  
  
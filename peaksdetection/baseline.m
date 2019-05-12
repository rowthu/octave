%baseline extraction for a given function
function bf=baseline(f,delta)
 bf=[] ;
 len=length(f);
 for k=1:len, 
      val=min(f(max(1,k-delta):min(len,k+delta))); 
      bf=[bf val];
 end;
endfunction;      

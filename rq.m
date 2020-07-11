function [x]=rq(a,b)
    avgy=mean(b(:,4));
    n=sum((a-avgy).^2);
    dn=sum((b(:,4)-avgy).^2);
    x=dn\n;
    
end

DA=zeros(100,661);
for i=1:100
    k=1;
    for j=1:661
        if A(i,j)~=0
            DA(i,k)=j;
            k=k+1;
        end
    end
end

JD=zeros(100,100);
for i=1:100
    num_i=0;
    for k=1:661
        if DA(i,k)~=0
            num_i=num_i+1;
        else
            break;
        end     
    end     
    for j=1:100
        Intersection=jaccard_Intersection(DA,i,j);
        num_j=0;
        for k=1:661
            if DA(j,k)~=0
                num_j=num_j+1;
            else
                break;
            end     
        end
        JD(i,j)=Intersection/(num_i+num_j-Intersection);
    end
end


MA=zeros(661,100);
for i=1:661  
    k=1;
    for j=1:100  
        if A(j,i)~=0
            MA(i,k)=j;
            k=k+1;
        end
    end
end

JC=zeros(661,661);
for i=1:661
    num_i=0;
    for k=1:100
        if MA(i,k)~=0
            num_i=num_i+1;
        else
            break;
        end     
    end     
    for j=1:661
        Intersection=jaccard_Intersection(MA,i,j);
        num_j=0;
        for k=1:100
            if MA(j,k)~=0
                num_j=num_j+1;
            else
                break;
            end     
        end
        JC(i,j)=Intersection/(num_i+num_j-Intersection);
    end
end


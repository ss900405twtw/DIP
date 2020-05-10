function ans = countobj(filename)
    I =readraw(filename);
    I = I/255;
    B=strel('square',3);
    A=I;
    %Find a non-zero element's position.
    p=find(A==1);
    p=p(1);
    Label=zeros([size(A,1) size(A,2)]);
    N=0;

    while(~isempty(p))
        N=N+1;%Label for each component
        p=p(1);
    X=false([size(A,1) size(A,2)]);
    X(p)=1;

    Y=A&dilation(X);
    while(~isequal(X,Y))
        X=Y;
        Y=A&dilation(X);
    end
    
Pos=find(Y==1);

    A(Pos)=0;
    %Label the components
    Label(Pos)=N;

    p=find(A==1);

    end
    
    ans =N;
end
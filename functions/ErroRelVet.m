function Erel = ErroRelVet(u,v)
%Entrada:
%u,v,vetores
%Saida:
%Erel, erro relativo VETORIAL
if norm(v) == 0
    Erel=norm(u);
else
    Erel=norm(u-v)/norm(v);
end
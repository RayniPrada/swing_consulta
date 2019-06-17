padre_de(gregoria,avelina).
padre_de(gregoria,lia).
padre_de(gregoria,octavio).
padre_de(primitivo,avelina).
padre_de(primitivo,lia).
padre_de(primitivo,octavio).
padre_de(avelina,rayni).
padre_de(avelina,eddy).
padre_de(avelina,naeg).
padre_de(lia,brenda).
padre_de(lia,meruin).

hermano_de(avelina,lia):-padre_de(gregoria,lia).
hermano_de(avelina,octavio):-padre_de(gregoria,octavio).
hermano_de(lia,octavio):-padre_de(gregoria,avelina).
hermano_de(lia,avelina):-padre_de(gregoria,lia).
hermano_de(octavio,lia):-padre_de(gregoria,lia).
hermano_de(octavio,avelina):-padre_de(gregoria,avelina).

hermano_de(avelina,lia):-padre_de(primitivo,lia).
hermano_de(avelina,octavio):-padre_de(primitivo,octavio).
hermano_de(lia,octavio):-padre_de(primitivo,avelina).
hermano_de(lia,avelina):-padre_de(primitivo,lia).
hermano_de(octavio,lia):-padre_de(primitivo,lia).
hermano_de(octavio,avelina):-padre_de(primitivo,avelina).



abuelo_de(gregoria,rayni):-padre_de(avelina,rayni);padre_de(gregoria,avelina).
abuelo_de(gregoria,eddy):-padre_de(avelina,eddy);padre_de(gregoria,avelina).
abuelo_de(gregoria,naeg):-padre_de(avelina,naeg);padre_de(gregoria,avelina).
abuelo_de(gregoria,brenda):-hijo_de(lia,brenda);hijo_de(gregoria,lia).
abuelo_de(gregoria,meruin):-hijo_de(lia,meruin);hijo_de(gregoria,lia).


abuelo_de(primitivo,rayni):-padre_de(avelina,rayni);padre_de(primitivo,avelina).
abuelo_de(primitivo,eddy):-padre_de(avelina,eddy);padre_de(primitivo,avelina).
abuelo_de(primitivo,naeg):-padre_de(avelina,naeg);padre_de(primitivo,avelina).
abuelo_de(primitivo,brenda):-hijo_de(lia,brenda);hijo_de(primitivo,lia).
abuelo_de(primitivo,meruin):-hijo_de(lia,meruin);hijo_de(primitivo,lia).


tio_de(octavio,rayni):-hijo_de(avelina,rayni);hermano_de(avelina,octavio).
tio_de(octavio,eddy):-hijo_de(avelina,eddy);hermano_de(avelina,octavio).
tio_de(octavio,naeg):-hijo_de(avelina,naeg);hermano_de(avelina,octavio).
tio_de(octavio,brenda):-hijo_de(lia,brenda);hermano_de(lia,octavio).
tio_de(octavio,meruin):-hijo_de(lia,meruin);hermano_de(lia,octavio).

tio_de(lia,rayni):-hijo_de(avelina,rayni);hermano_de(avelina,octavio).
tio_de(lia,eddy):-hijo_de(avelina,eddy);hermano_de(avelina,octavio).
tio_de(lia,naeg):-hijo_de(avelina,naeg);hermano_de(avelina,octavio).

tio_de(avelina,brenda):-hijo_de(lia,brenda);hermano_de(lia,avelina).
tio_de(avelina,meruin):-hijo_de(lia,meruin);hermano_de(lia,avelina).




primo_de(eddy,brenda):-padre_

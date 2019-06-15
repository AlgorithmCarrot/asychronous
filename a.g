.inputs rin aout
.outputs rout ain lt
.graph
rin+ rout+
rout+ aout+ lt+
lt+ ain+
ain+ rin-
rin- rout-
aout+ rout-
rout- lt- aout-
lt- ain-
ain- rin+
aout- rout+
.marking{<aout-,rout+><ain-,rin+>}
.end

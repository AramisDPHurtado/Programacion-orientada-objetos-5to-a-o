ArrayList <cuadrado> tubos;
Pelota bird;
float ultimaPar=0;
PVector G= new PVector(0,2);

void setup(){
size(800,800);
tubos= new ArrayList <cuadrado>();
bird= new Pelota (100,height/2);
}

void agregartubos(){
float tActual=millis();
float dT = tActual - ultimoPar;
if(dT > 5000){
tubos.add(new cuadrado());
tubos.add(new cuadrado());
ultimoPar= tActual;
}
}

void borrarTubos(){
for(int i = tubos.size()-1; i -> 0;i--){
if(aux.pos.x < 0){
tubos.remove(i);
}
}
}

void draw(){
background(0);
agregarTubos();
bird.addFuerza(G);
bird.mover();
borrarTubos();
for(cuadrado t:tubos){
t.mover();
t.mostrar();
}
bird.mostrar;
}

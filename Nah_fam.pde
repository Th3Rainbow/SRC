int deaths[] = new int[0];
int cases[] = new int[0];
String states[] = new String[0];


void setup(){
  size(700, 700);
  smooth(10);
}

void draw(){
Table table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");
for(int i = 0; i < table.getRowCount(); i++){
  TableRow row = table.getRow(i);
  
  int Death = row.getInt("deaths");
  int Case = row.getInt("cases");
  String State = row.getString("state");
  fill(0);
  textSize(10);
  text(State, 10, i * 12);
  
  cases = append(cases, Case);
  deaths = append(deaths, Death);
  states = append(states, State);
  
  
  
  println(states[i], cases[i], deaths[i]);
  }
  
}

package model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class ManyCheckCoordinat {
  private ArrayList<CheckCoordinat> results;
  private SimpleDateFormat time;
  public ManyCheckCoordinat(){
    results=new ArrayList<CheckCoordinat>();
    time =new SimpleDateFormat("HH:mm:ss");
  }

  public void addResult(CheckCoordinat checkCoordinat){
    results.add(checkCoordinat);

  }

  public SimpleDateFormat getTime() {
    return time;
  }

  public void setResults(ArrayList<CheckCoordinat> results) {
    this.results = results;
  }

  public void setTime(SimpleDateFormat time) {
    this.time = time;
  }

  public ArrayList<CheckCoordinat> getResults() {
    return results;
  }
}

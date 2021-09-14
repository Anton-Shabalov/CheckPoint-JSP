package model;

import java.util.Date;

public class CheckCoordinat {
  private double x,y,r;
  private boolean result;
  private Date startTime;
  private Date endTime;
  private long timework;


  public CheckCoordinat(double x, double y, double r, boolean result, Date startTime) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.result = result;
    this.startTime=startTime;

  }

  public void setX(double x) {
    this.x = x;
  }

  public void setY(double y) {
    this.y = y;
  }

  public void setR(double r) {
    this.r = r;
  }

  public void setResult(boolean result) {
    this.result = result;
  }

  public void setStartTime(Date startTime) {
    this.startTime = startTime;
  }

  public void setEndTime(Date endTime) {
    this.endTime = endTime;
  }

  public Date getStartTime() {
    return startTime;
  }

  public Date getEndTime() {
    return endTime;
  }

  public double getX() {
    return x;
  }

  public double getY() {
    return y;
  }

  public double getR() {
    return r;
  }

  public long getTimework() {
    return timework;
  }

  public boolean isResult() {
    return result;
  }
  public void setTimework(){
    timework=endTime.getTime()-startTime.getTime();
  }
}


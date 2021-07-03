float Order() {
  text("Typing .. " + typing, width/2 - 150, height - 100 - 26);
  text("Saved .. " + saved, width/2 - 150, height - 100 + 26);
  if (mouseX < width/2 + 50/2 && mouseX > width/2 - 50/2 && mouseY < height - 100 + 50/2 && mouseY > height - 100 - 50/2 && mousePressed && buffer > 20 && saved != "") {
    float res = float(saved);
    buffer = 0;
    typing = "";
    saved = "";
    return res;
  }
  return -1.123f;
}

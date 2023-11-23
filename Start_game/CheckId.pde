void CheckID() {
  id.idDrawing = true;
  if (OnIdHover() && id.checkingId == false) {

    if (mouseDownId) {
      id.checkingId = true;
      mouseDownId = false;
    }
  }
  if (isCheckingId && id.checkingId) {

    if (mouseDownId) {
      id.checkingId = false;
      mouseDownId = false;
    }
  }
}

void CheckID() {
  id.idDrawing = true;
  if (isOnId && id.checkingId == false) {

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

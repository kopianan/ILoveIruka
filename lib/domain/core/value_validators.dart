String validateInputTextField(int minLength, String value) {
  if (value.length < minLength)
    return 'Minimal Characters : $minLength';
  else
    return null;
}

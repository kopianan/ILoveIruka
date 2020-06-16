import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

Flushbar showFlushbarError({@required String errMessage}) {
  return FlushbarHelper.createError(message: errMessage);
}

Flushbar showFlushbarLoading({@required String loading}) {
  return Flushbar(
    message: loading,
    showProgressIndicator: true,
    isDismissible: true,
  );
}

dismissFlushbar(Flushbar flushbar) {
  if (flushbar != null) {
  flushbar.dismiss();
  }
}

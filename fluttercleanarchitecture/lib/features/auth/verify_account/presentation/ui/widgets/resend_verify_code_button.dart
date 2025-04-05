import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/common/extension/string_hardcoded.dart';
import 'package:fluttercleanarchitecture/common/style/dimens.dart';

class ResendOTPButton extends ConsumerStatefulWidget {
  final VoidCallback onResend;
  const ResendOTPButton({super.key, required this.onResend});

  @override
  ConsumerState<ResendOTPButton> createState() => _ResendOTPButtonState();
}

class _ResendOTPButtonState extends ConsumerState<ResendOTPButton> {
  static const int initialSeconds = 180;
  late int _secondsRemaining;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    setState(() {
      _secondsRemaining = initialSeconds;
    });

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining == 0) {
        timer.cancel();
      } else {
        setState(() {
          _secondsRemaining--;
        });
      }
    });
  }

  String _formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEnabled = _secondsRemaining == 0;

    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed:
            isEnabled
                ? () {
                  widget.onResend();
                  _startCountdown();
                }
                : null,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: kMedium),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kSmall),
          ),
        ),
        child: Text(
          isEnabled
              ? 'Resend Code'.hardcoded
              : 'Resend in ${_formatTime(_secondsRemaining)}',
        ),
      ),
    );
  }
}

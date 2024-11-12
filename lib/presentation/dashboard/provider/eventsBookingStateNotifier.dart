import 'package:celebrazioni/presentation/dashboard/model/eventBookingModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'eventsBookingStateNotifier.g.dart';

@riverpod
class EventBookingStateNotifier extends _$EventBookingStateNotifier {
  final DateTime currentTime = DateTime.now();

  @override
  EventBookingModel build() {
    return EventBookingModel(
      emailController: TextEditingController(text: ''),
      eventType: '',
      date: _formatDate(currentTime),
      time: _formatTime(currentTime),
      amountOfGuestsController: TextEditingController(text: ''),
      venueController: TextEditingController(text: ''),
      eventTitleController: TextEditingController(text: ''),
      isLoading: false,
    );
  }


  static String _formatDate(DateTime date) {
    // Format: dd-MM-yyyy
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String _formatTime(DateTime dateTime) {
    // Format: hh:mm a (e.g., 02:30 PM)
    return DateFormat('hh:mm a').format(dateTime);
  }

  void updateDate(DateTime newDate) {
    state = state.copyWith(date: _formatDate(newDate));
  }

  void updateTime(DateTime newTime) {
    state = state.copyWith(time: _formatTime(newTime));
  }

  void updateEventType(String? eventType) {
    state = state.copyWith(eventType: eventType);
  }
}

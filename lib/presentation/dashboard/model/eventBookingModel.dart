// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EventBookingModel {
  TextEditingController? emailController;
  String? eventType;
  String? date;
  String? time;
  TextEditingController? amountOfGuestsController;
  bool? isLoading;
  TextEditingController? venueController;
  TextEditingController? eventTitleController;

  EventBookingModel(
      {required this.emailController,
      required this.eventType,
      required this.date,
      required this.time,
      required this.amountOfGuestsController,
      required this.venueController,
      required this.eventTitleController,
      required this.isLoading});

  EventBookingModel copyWith({
    TextEditingController? email,
    String? eventType,
    String? date,
    String? time,
    TextEditingController? amountOfGuests,
    TextEditingController? venue,
    TextEditingController? eventTitle,
    bool? isLoading,
  }) {
    return EventBookingModel(
      emailController: email ?? this.emailController,
      date: date ?? this.date,
      eventType: eventType ?? this.eventType,
      time: time ?? this.time,
      amountOfGuestsController: amountOfGuests ?? this.amountOfGuestsController,
      venueController: venue ?? this.venueController,
      eventTitleController: eventTitle ?? this.eventTitleController,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

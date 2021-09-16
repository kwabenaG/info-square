// handles all the events from the club Members

import 'package:info_square/models/club.dart';

class Event {
  final String eventName;
  final DateTime eventTime;
  final String location;
  final List<Club> clubEventAssociate;

  Event(this.location, this.eventName, this.eventTime, this.clubEventAssociate);
}

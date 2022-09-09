import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(CalendarPickerIntegration());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalendarPickerIntegration(),
    );
  }
}

class CalendarPickerIntegration extends StatefulWidget {
  @override
  CalendarPickerIntegrationState createState() =>
      CalendarPickerIntegrationState();
}

class CalendarPickerIntegrationState extends State<CalendarPickerIntegration> {
  final CalendarController _calendarController = CalendarController();
  final DateRangePickerController _dateRangePickerController =
      DateRangePickerController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Card(
                  child: SizedBox(
                    height: 100,
                    child: SfDateRangePicker(
                      controller: _dateRangePickerController,
                      showNavigationArrow: true,
                      allowViewNavigation: false,
                      monthViewSettings: DateRangePickerMonthViewSettings(
                          numberOfWeeksInView: 1),
                      onSelectionChanged: selectionChanged,
                    ),
                  ),
                ),
                Expanded(
                  child: SfCalendar(
                    headerHeight: 0,
                    controller: _calendarController,
                    viewHeaderHeight: 0,
                    dataSource: _getCalendarDataSource(),
                    onViewChanged: viewChanged,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void selectionChanged(DateRangePickerSelectionChangedArgs args) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _calendarController.displayDate = args.value;
    });
  }

  _AppointmentDataSource _getCalendarDataSource() {
    List<Appointment> appointments = <Appointment>[];
    DateTime today = DateTime.now();
    appointments.add(Appointment(
      startTime: DateTime(today.year, today.month, today.day, 12, 0, 0),
      endTime: DateTime(today.year, today.month, today.day, 14, 0, 0),
      subject: 'Uber car rentals assistant',
      color: Colors.grey,
    ));
    appointments.add(Appointment(
      startTime: DateTime(today.year, today.month, today.day, 15, 0, 0),
      endTime: DateTime(today.year, today.month, today.day, 16, 0, 0),
      subject: 'Airbnb care taker',
      color: Colors.blue,
    ));
    appointments.add(Appointment(
      startTime: DateTime(today.year, today.month, today.day, 18, 0, 0),
      endTime: DateTime(today.year, today.month, today.day, 23, 30, 0),
      subject: 'Lime scooters  gathering',
      color: Colors.lightBlueAccent,
    ));

    return _AppointmentDataSource(appointments);
  }

  void viewChanged(ViewChangedDetails viewChangedDetails) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _dateRangePickerController.selectedDate =
          viewChangedDetails.visibleDates[0];
      _dateRangePickerController.displayDate =
          viewChangedDetails.visibleDates[0];
    });
  }
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}

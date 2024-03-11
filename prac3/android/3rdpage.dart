import 'package:flutter/material.dart';

void main() {
  runApp(TravelPlanner());
}

class TravelPlanner extends StatefulWidget {
  @override
  _TravelPlannerState createState() => _TravelPlannerState();
}

class _TravelPlannerState extends State<TravelPlanner> {
  int numberOfTravelers = 1;
  int numberOfAdults = 1;
  List<String> placesToVisit = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel Planner'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Select Number of Travelers'),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        numberOfTravelers = numberOfTravelers > 1 ? numberOfTravelers - 1 : 1;
                      });
                    },
                  ),
                  Text('$numberOfTravelers'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        numberOfTravelers++;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text('Select Number of Adults'),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        numberOfAdults = numberOfAdults > 1 ? numberOfAdults - 1 : 1;
                      });
                    },
                  ),
                  Text('$numberOfAdults'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        numberOfAdults++;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text('Enter Places to Visit'),
              TextField(
                onChanged: (value) {
                  setState(() {
                    placesToVisit = value.split(',');
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter places separated by commas',
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Process the travel plan
                  print('Number of Travelers: $numberOfTravelers');
                  print('Number of Adults: $numberOfAdults');
                  print('Places to Visit: $placesToVisit');
                },
                child: Text('Plan Travel'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

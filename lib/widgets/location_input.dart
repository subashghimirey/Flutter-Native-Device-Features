// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class LocationInput extends StatefulWidget {
//   const LocationInput({super.key});

//   @override
//   State<LocationInput> createState() {
//     return _LocationInputState();
//   }
// }

// class _LocationInputState extends State<LocationInput> {
//   void getCurrentLocation() async {
    

//     await Geolocator.checkPermission();
//     await Geolocator.requestPermission();
   
  

//     Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

//     print(position.latitude);
//     print(position.longitude);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 250,
//           width: double.infinity,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//               border: Border.all(
//                   width: 1,
//                   color:
//                       Theme.of(context).colorScheme.primary.withOpacity(0.2))),
//           child: const Text(
//             "No Location chosen",
//             style: TextStyle(color: Colors.white, fontSize: 16),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             TextButton.icon(
//                 onPressed: getCurrentLocation,
//                 icon: const Icon(Icons.location_on),
//                 label: const Text("Get Current Location")),
//             TextButton.icon(
//                 onPressed: () {},
//                 icon: const Icon(Icons.map),
//                 label: const Text(
//                   "Choose location on map",
//                 ))
//           ],
//         ),
//       ],
//     );
//   }
// }

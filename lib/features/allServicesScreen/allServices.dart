import 'package:flutter/material.dart';
import 'package:ncaghana/providers/serviesNamesPovider.dart';
import 'package:ncaghana/widgets/servicesContainer.dart';
import 'package:provider/provider.dart';

class AllServices extends StatefulWidget {
  const AllServices({Key? key}) : super(key: key);

  @override
  _AllServicesState createState() => _AllServicesState();
}

class _AllServicesState extends State<AllServices> {
  @override
  Widget build(BuildContext context) {
    var services = context.watch<ServicesNamesProvider>().services;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'All Services (${services.length})',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                //height: 600,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: services.length,
                  itemBuilder: ((context, index) {
                    //creating an object of the current index to be displayed
                    //now we can use the this object and call the property
                    //of corresponding index
                    final servicesCurrentIndex = services[index];
                    //creating an object for the Services Data List.
                    //This will collect all data from the Services Data Model page
                    //ServicesDataModel ServicesData = servicesList[index];
                    //returning the ServicesContainer which requires properties
                    //this widget also provides the design of the services containers
                    return ServicesContainer(
                      //the data is being called from the ServiceDataModel.dar
                      //where we have created a list/array of services with their
                      //corresponding properties
                      serviceName: servicesCurrentIndex.serviceName,
                      image: servicesCurrentIndex.image,
                      color: servicesCurrentIndex.color,
                      route: servicesCurrentIndex.screenNavigation,

                      // serviceName: services[index].serviceName,
                      // image: services[index].image,
                      // color: services[index].color,
                      // route: services[index].screenNavigation,
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

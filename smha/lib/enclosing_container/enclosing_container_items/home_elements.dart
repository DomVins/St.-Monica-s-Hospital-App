import 'package:flutter/material.dart';
import 'package:smha/enclosing_container/other_pages/appointment.dart';

class HomeElements extends StatefulWidget {
  const HomeElements({Key? key}) : super(key: key);

  @override
  State<HomeElements> createState() => _HomeElementsState();
}

class _HomeElementsState extends State<HomeElements> {
  List<Staff> staffs = [
    Staff('Dr. Vincent Dominic', 'images/doctors/1.png'),
    Staff('Dr. Mary J', 'images/doctors/2.jpeg'),
    Staff('Dr. Jesse A', 'images/doctors/3.jpeg'),
    Staff('Dr. Joan S', 'images/doctors/4.jpeg'),
    Staff('Dr. Mike P', 'images/doctors/1.png'),
    Staff('Dr. Martha N', 'images/doctors/2.jpeg'),
    Staff('Dr. Anabel Q', 'images/doctors/5.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Container(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Medical Tips',
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Center(
          child: Container(
              margin: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 230, 230),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: Offset(0, 0))
                ],
              ),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Image.asset(
                    "images/tips/1.jpeg",
                    fit: BoxFit.cover,
                  ))
              /*  child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                child: ImageSlideshow(
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.white,
                  children: [
                    Image.asset(
                      'assets/i1.JPG',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/i2.JPG',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/i3.JPG',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/i4.JPG',
                      fit: BoxFit.cover,
                    ),
                   
                  ],
                  autoPlayInterval: 6000,
                  isLoop: true,
                ),
              ) */
              ),
        ),
        const SizedBox(
          height: 50,
        ),
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DoctorsAppointment())),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 4,
                    offset: Offset(0, 1.5))
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Book Doctor's Appointment",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_forward_rounded, size: 18, color: Colors.white)
              ],
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'About Hospital',
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Center(
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: MediaQuery.of(context).size.width * 0.85,
            child: const Text(
                "St. Monica's Hospital is a Hospital of the Catholic Diocese of Gboko ",
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 11, 36, 11),
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5)),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Our Staffs',
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Center(child: _buildStaffsWidget(staffs)),
        Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 15),
            child: const Text(
              'Our Medical Facilities',
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.1),
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilities("images/facilities/1.png"),
                  facilities("images/facilities/2.jpeg")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilities("images/facilities/7.jpeg"),
                  facilities("images/facilities/3.jpeg")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilities("images/facilities/5.jpeg"),
                  facilities("images/facilities/6.png")
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }

  Widget facilities(String image) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width * 0.40,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 230, 230),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
              color: Colors.black38, blurRadius: 1.5, offset: Offset(0, 0))
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildStaffsWidget(List<Staff> staffs) => Container(
        margin: const EdgeInsets.only(top: 15),
        child: SizedBox(
          height: 200,
          child: ListView(
              padding: const EdgeInsets.only(left: 40),
              scrollDirection: Axis.horizontal,
              children: getStaffsList(staffs)),
        ),
      );
  List<Widget> getStaffsList(List<Staff> staffs) {
    List<Widget> courseCards = [];
    for (int i = 0; i < staffs.length; i++) {
      courseCards.add(getStaffCard(staffs[i].name, staffs[i].imageUrl));
    }
    return courseCards;
  }

  Widget getStaffCard(String name, String imageUrl) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 20, bottom: 15),
        width: 140,
        height: 200,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 230, 230, 230),
            blurRadius: 1.5,
          ),
        ], borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Stack(children: [
          ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: const EdgeInsets.only(left: 8, right: 8),
                height: 45,
                width: 140,
                decoration: const BoxDecoration(
                    //color: Color(0xff0f17ad),
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(15))),
                child: Center(
                  child: Text(name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w700)),
                )),
          )
        ]),
      ),
    );
  }
}

class Staff {
  String name;
  String imageUrl;
  Staff(this.name, this.imageUrl);
}

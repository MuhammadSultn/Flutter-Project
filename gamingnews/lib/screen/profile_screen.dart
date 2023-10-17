import 'package:flutter/material.dart';
import 'package:gamingnews/widgets/bottom_navbar.dart';

class Profile_screen extends StatelessWidget {
  const Profile_screen({Key? key}) : super(key: key);

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavbar(index: 2),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Blakang
            Container(
              width: double.infinity,
              height: 200,
              child: Image.network(
                "https://images.unsplash.com/photo-1689443111130-6e9c7dfd8f9e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
                fit: BoxFit.cover,
              ),
            ),
            // Depan
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 120,
                ),
                buildProfileImage(),
                buildContent(),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black45),
                    child: Text(
                      "Edit Profile",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.settings,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Settings",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.payment,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Billing Details",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.verified_user,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "User Management",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.logout,
                              size: 30,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Log Out",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContent() => const Column(
        children: [
          SizedBox(height: 8),
          Text(
            "Muhammad Sulthon.k",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "210605110033",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      );

  Widget buildProfileImage() => const CircleAvatar(
        radius: 150 / 2,
        // backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            "https://static1.personality-database.com/profile_images/2b55458dd0734202af1771f8b2de16af.png",
            scale: 6),
      );
}

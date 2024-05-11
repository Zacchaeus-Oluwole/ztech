class ContentUtil {
  final int id;
  final String title;
  final List<String> description;
  final String link;
  final String linktype;

  ContentUtil({
    required this.id,
    required this.title, 
    required this.description,
    required this.link,
    required this.linktype,

    }
  );
  
}

class ContentUtils {
  final String projecttype;
  final List<ContentUtil> project;

  ContentUtils({
    required this.projecttype,
    required this.project,

    }
  );
  
}


List<ContentUtils> contentUtil = [
  // ================================================= FLUTTER ====================================================
  ContentUtils(
    projecttype: 'flutter',
    project: [
      ContentUtil(
        id: 1,
        title: "My Portfolio", 
        description: [
          "Interactive User Interface: Dive into a seamless and engaging browsing experience designed to showcase my skills, services, projects, and articles with intuitive navigation.",
          "Animated Text Kit Animation: Elevating the user experience to new heights, I seamlessly integrated the Animated Text Kit package. With captivating animations, text comes alive, engaging visitors and leaving a lasting impression.",
          "With features like ownership and borrowing, Rust mitigates memory safety vulnerabilities, fortifying IoT systems against cyber threats and ensuring data integrity.",
          "Email Launching Functionality: Seamlessly connect with me via email with just a click! Integrated with url_launcher, sending inquiries or feedback is quick and effortless."
        ], 
        link: 'https://ztech.vercel.app/', 
        linktype: 'link',
      ),
      ContentUtil(
        id: 2,
        title: "Smart Pills Meds App: Simplifying Medication Management with Flutter", 
        description: [
          "Intuitive Scheduling: Easily input morning, afternoon, and night pills with respective administration times.",
          "Real-Time Notifications: Receive instant alerts for medication intake, displaying specific pills and dosage instructions.",
          "Background Processing: Continuous monitoring of medication schedules ensures timely reminders, even when the app is not active.",
          "Data Persistence: Securely store medication schedules offline using SQFlite for uninterrupted access."
        ],
        link: 'https://www.youtube.com/watch?v=tjG1LaZ2v4I', 
        linktype: 'youtube',
      ),
      ContentUtil(
        id: 3,
        title: "Book Breeze", 
        description: [
          "Book Breeze is a Flutter app engineered to provide users with a seamless and immersive literary experience. Leveraging advanced techniques and integration of key Flutter packages such as CustomPainter, Simple_animations, shared_preferences, and sqflite, this app delivers robust functionality and performance.",
          "CustomPainter Integration: The CustomPainter class is utilized to create custom UI elements, enhancing the visual appeal of the app. Through custom painting operations, intricate and dynamic visuals are achieved, contributing to a captivating user experience.",
          "Simple_animations Implementation: Simple_animations package is leveraged to create smooth and engaging animations within the app. By defining animation controllers and tweens, various UI elements come to life with fluid motion, adding a layer of interactivity and dynamism.",
          "sqflite Integration: sqflite package is employed for local database management, enabling efficient storage."
        ],
        link: 'https://www.youtube.com/watch?v=WYqvQgA3jYs', 
        linktype: 'youtube',
      ),

      ContentUtil(
        id: 4, 
        title: "Voice controlled door lock system using android mobile phone app", 
        description: [
          "Fingerprint Authentication: Integration of fingerprint authentication via Flutter package ensures robust security measures, allowing authorized users to unlock the door seamlessly with their registered fingerprints.",
          "Speech-to-Text Conversion: The implementation of speech-to-text functionality enables users to issue voice commands to unlock the door. By converting spoken words into text input, this feature enhances accessibility and user experience.",
          "HTTP Integration: Utilizing Flutter's HTTP package, the system communicates with a remote server to control door locking mechanisms. This integration ensures real-time synchronization and enables remote access control functionalities.",
          "Seamless Mobile Interface: The Android mobile app provides a user-friendly interface for managing door access controls. ",
          "Enhanced Security Measures: By combining fingerprint authentication, speech-to-text conversion, and secure HTTP communication, the door lock system offers multiple layers of security to prevent unauthorized access attempts and safeguard sensitive areas effectively."
        ], 
        link: "https://www.youtube.com/watch?v=XE-YZJPhajk", 
        linktype: "youtube"
      ),
      ContentUtil(
        id: 5, 
        title: "Android Controlled Telemetry Surveillance Robotic Car App", 
        description: [
          "Live Video Feed Display: Utilizing WebView, the app streams live video footage captured by the robotic vehicle's onboard camera. This feature enables users to remotely monitor the vehicle's surroundings in real-time, enhancing surveillance capabilities and situational awareness.",
          "WiFi Connectivity: The app integrates with the WiFi package to establish a stable connection between the user's Android device and the robotic car. By enabling seamless communication over WiFi networks, users can remotely control the vehicle and receive telemetry data without physical proximity constraints.",
          "Dynamic IP Address Retrieval: With the ability to fetch connected IP addresses, the app simplifies the process of establishing connections between the Android device and the robotic car. This feature enhances user convenience and ensures smooth communication between the app and the vehicle.",
          "Remote Control Functionality: Leveraging HTTP requests, users can control the movement of the robotic car with precision. The app provides intuitive controls for commanding the vehicle to move forward, backward, turn right, turn left, or stop, enabling seamless navigation and maneuverability.",
          "Enhanced Surveillance and Mobility: By combining live video feed display, WiFi connectivity, and remote control functionality, the app empowers users to remotely monitor and control their robotic vehicles with ease. Whether for surveillance, exploration, or recreational purposes, this app enhances the mobility and versatility of robotic vehicles."
        ], 
        link: "https://www.youtube.com/watch?v=0MBHPE7tFbk", 
        linktype: "youtube"
      ),
      ContentUtil(
        id: 6,
        title: "Full Stack Mobile Blog App Tutorial: Part 2 - Building the Mobile Application", 
        description: [
          "Integration with Backend API: Utilizing the HTTP package, the mobile app seamlessly communicates with the backend API to fetch and display blog content. This integration ensures real-time updates and synchronization between the mobile application and the server.",
          "Dynamic Content Rendering: The mobile app dynamically renders blog posts fetched from the backend API, providing users with an immersive reading experience. Rich media content, including images and videos, are seamlessly integrated into the app's user interface."
        ],
        link: 'https://www.youtube.com/watch?v=mADsOlLTcog&t=349s', 
        linktype: 'youtube',
      ),
      ContentUtil(
        id: 7,
        title: "Farmers weather app", 
        description: [
          "Farm Location Tracking: Utilizing the geolocator package, the app accurately determines the user's current location when they are present at the farm. Farmers can enter the farm name, and the app automatically stores the location in the database for future reference.",
          "Real-Time Weather Updates: Integrating with the Weatherbit API, the Farmers Weather App retrieves up-to-date weather conditions for the specified farm location. This feature enables farmers to stay informed about temperature, precipitation, wind speed, and other crucial weather parameters essential for crop management and agricultural planning.",
          "Database Storage: Employing SQFlite for local data storage, the app ensures that farm locations and name is securely stored on the device",
          "Leveraging the google_maps_flutter package, the app provides farmers with a visual representation of their farm area on Google Maps. Users can view the geographical layout of their farms and surrounding areas, facilitating better spatial understanding and decision-making."
        ],
        link: 'https://www.youtube.com/watch?v=qRai0dZyyeM&t=28s', 
        linktype: 'youtube',
      ),
      ContentUtil(
        id: 8, 
        title: "Beautiful Wallet App UI", 
        description: [
          "Stunning Home Page: Presents balance summaries, transaction previews, and quick access buttons for effortless navigation.",
          "Intuitive Card Swiping: Allows smooth navigation through payment cards with responsive gestures and animations.",
          "Smooth Page Indicator: Guides users through app content with subtle visual feedback.",
          "Seamless Bottom Navigation: Provides easy access to essential features like transactions and settings."
        ], 
        link: "https://youtube.com/shorts/7S_IPHTBRkQ?si=xSo0Coo9iU-YMBX9",
        linktype: "youtube"
      ),
      ContentUtil(
        id: 9,
        title: "Admin Dashboard UI App using flutter web", 
        description: [
          "The Admin Dashboard UI App built using Flutter Web represents a powerful tool for efficient management and oversight.",
          "Leveraging key packages including get, data_table_2, and charts_flutter_new, this application offers a comprehensive suite of features tailored for desktop and mobile devices.",
          "With overview tables, client management, delivery tracking, and robust authentication, this dashboard empowers administrators to streamline operations and make informed decisions."
        ], 
        link: "https://github.com/Zacchaeus-Oluwole/flutter_web_dashboard", 
        linktype: "github"
      )
    ],
  ),
  // =============================================== RUST ======================================================
  ContentUtils(
    projecttype: 'rust',
    project: [
      ContentUtil(
        id: 1,
        title: "Shopping API with JWT Authentication, User Registration, Email Verification, and PostgreSQL Integration", 
        description: [
          "The Rust Shopping API, built with Axum, offers secure and efficient e-commerce solutions. Featuring JWT authentication, user registration, email verification, and PostgreSQL integration, developers can create reliable shopping experiences.",
          "Axum Framework: Leveraging Axum's lightweight and asynchronous architecture, the API ensures optimal performance and scalability for e-commerce applications.",
          "JWT Authentication: Secure user endpoints with JSON Web Token (JWT) authentication, ensuring data protection and secure communication between clients and the server.",
          "User Registration: Enable user registration functionality to store user data securely in PostgreSQL, facilitating personalized shopping experiences and order management.",
          "Email Verification: Implement email verification for new user registrations, enhancing security and preventing fraudulent accounts.",
          "PostgreSQL Integration: Seamlessly integrate with PostgreSQL for efficient data storage and retrieval, ensuring reliable and performant database operations."
        ], 
        link: 'https://github.com/Zacchaeus-Oluwole/rust_shopping_api', 
        linktype: 'github',
      ),
      ContentUtil(
        id: 2,
        title: "CRUD API with Axum and PostgreSQL", 
        description: [
          "The CRUD API developed in Rust using the Axum framework and PostgreSQL database offers a robust solution for managing data operations. With seamless integration between Axum and PostgreSQL, developers can perform Create, Read, Update, and Delete operations on the Profile model, ensuring efficient data management and retrieval."
        ],
        link: 'https://github.com/Zacchaeus-Oluwole/RUST-PROJECTS/tree/main/backend/rust_crud_api', 
        linktype: 'github',
      )
    ],
  ),
  // ================================================== IoT =======================================================
  ContentUtils(
    projecttype: 'iot',
    project: [
      ContentUtil(
        id: 1,
        title: "Android Controlled Telemetry Surveillance Robotic Car", 
        description: [
          "Hardware Components: The system utilizes an ESP32-CAM microcontroller board as the embedded system for the robotic car. The ESP32-CAM is equipped with a camera module for capturing live video footage. Additionally, the robotic car is outfitted with motor drivers connected to specific pins on the ESP32-CAM, enabling precise control over the car's movement.",
          "Software Components: The system includes an Android application for remote control and monitoring. The Android app communicates with the ESP32-CAM board over a WiFi network. It utilizes HTTP requests to send commands to toggle specific pins on the ESP32-CAM, thereby controlling the movement of the robotic car in real-time.",
          "Functionality: The ESP32-CAM board receives commands from the Android app and translates them into motor movements, allowing users to control the robotic car's navigation remotely. Simultaneously, the ESP32-CAM continuously streams live video footage captured by its onboard camera to the Android app via the WiFi connection. This ensures that users can monitor the car's surroundings in real-time while controlling its movements.",
          "Enhanced Surveillance: The integration of live video streaming with remote control functionality enhances the surveillance capabilities of the robotic car. Users can remotely monitor their surroundings, enabling applications such as security patrols, environmental monitoring, or remote inspection tasks.",
          "Seamless Communication: The system employs dynamic IP address retrieval to simplify the setup process, ensuring smooth communication between the Android app and the ESP32-CAM board. This enables users to establish connections quickly and reliably, regardless of changes in network configurations.",
          "Versatility: The IoT system offers versatility in applications, including surveillance, exploration, and recreational purposes. Whether deployed for security monitoring, environmental research, or entertainment, the system provides users with a powerful tool for remotely controlling and monitoring robotic vehicles."
        ], 
        link: 'https://www.youtube.com/watch?v=0MBHPE7tFbk', 
        linktype: 'youtube',
      ),
      ContentUtil(
        id: 2,
        title: "Mastering IoT with Embedded Rust and Flutter: Building a Remote Servo Motor Control System with Rust", 
        description: [
          "This project integrates ESP32 microcontroller, Rust programming language for firmware development, and Flutter for creating a user-friendly interface to control a servo motor remotely. The system enables real-time manipulation of servo motor positions over WiFi, demonstrating the synergy between hardware, firmware, and user interface technologies in IoT applications."
        ],
        link: 'https://www.youtube.com/watch?v=8ORfuegRZZU&t=8s', 
        linktype: 'youtube',
      ),
    ],
  ),
  
];
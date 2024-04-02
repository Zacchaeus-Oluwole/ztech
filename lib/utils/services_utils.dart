class ServiceUtils {
  final String title;
  final String subtitle;

  ServiceUtils({
    required this.title, 
    required this.subtitle,
    }
  );
  
}


List<ServiceUtils> serviceUtil = [
  ServiceUtils(
    title: 'Flutter', 
    subtitle: 'I leverage Flutter, a leading framework, to build beautiful and performant cross platform applications for Mobile and Desktop devices using a single codebase. This translates to faster development cycles, cost-effectiveness, and a consistent user experience across platforms.',
  ),
  ServiceUtils(
    title: 'Rust-Web', 
    subtitle: 'I build secure and scalable backend services using Rust, a high-performance language known for its memory safety and speed.  For API development, I leverage Axum, a modern and ergonomic framework that allows me to create efficient and maintainable web applications.',
  ),
  ServiceUtils(
    title: 'Rust:Embedded Systems and IoT', 
    subtitle: 'I specialize in crafting reliable and performant embedded systems using Rust, a language renowned for its memory safety and low-level control. This empowers me to build Internet of Things (IoT) devices that are rock-solid and secure, resource-efficient and highly performant.',
  )
];
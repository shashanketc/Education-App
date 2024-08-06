import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TeachersPage extends StatelessWidget {
  const TeachersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teachers"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'lib/images/T-mg.webp',
              ),
            ),
            title: Text('Manjiri Gogate'),
            subtitle: Text('ECS Branch HOD'),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'lib/images/T-sb.webp',
              ),
            ),
            title: Text('Samita Bhandari'),
            subtitle: Text('Software Engineering'),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'lib/images/T-rm.webp',
              ),
            ),
            title: Text('Rashmi Maheshwari'),
            subtitle: Text('Digital Electronics'),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'lib/images/T-vk.webp',
              ),
            ),
            title: Text('Vinaykumar Singh'),
            subtitle: Text('Communication Engineering'),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Text('P'),
            ),
            title: Text('Poorva Waingankar'),
            subtitle: Text('Embedded System'),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'lib/images/T-rr.webp',
              ),
            ),
            title: Text('Rohini Rathod'),
            subtitle: Text('Machine Learning'),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'lib/images/T-al.webp',
              ),
            ),
            title: Text('Abhishek Laharia'),
            subtitle: Text('Data Warehouse and Mining'),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}

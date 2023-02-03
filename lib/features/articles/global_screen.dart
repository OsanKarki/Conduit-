import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GlobalScreen extends StatelessWidget {
  static const route = "firstPage";

  const GlobalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff367E36),
        title: const Center(
            child: Text(
          'Conduit',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        )),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color(0xff181A1B),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: const [
                  ArticleCard(),
                  Divider(
                    color: Color(0xff2A3442),
                    thickness: 1,
                  ),
                ],
              );
            },
            itemCount: 10,
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff2A3442),
        currentIndex: 1,
        unselectedItemColor: const Color(0xffC4BFB7),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.blur_circular),
            label: 'Global',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'My articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AuthorInfo(),
            LikeButton(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const ArticleInfo(),
        Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Read more...',
                style: TextStyle(fontSize: 12),
              ),
            )),
      ],
    );
  }
}

class ArticleInfo extends StatelessWidget {
  const ArticleInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Clean Code',
          style: TextStyle(
              color: Color(0xffC4BFB7),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          ('Discipline and practices that a programmer must follow while writing code'),
          style: TextStyle(
            color: Color(0xfffa8a095),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class LikeButton extends StatelessWidget {
  const LikeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: const Color(0xff367E36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/heart.svg'),
            const Padding(
              padding: EdgeInsets.only(left: 6),
              child: Text(
                '102',
                style: TextStyle(color: Color(0xffE8E6E3)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AuthorInfo extends StatelessWidget {
  const AuthorInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 50,
          // height: 50,
          // color: Colors.red,
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/media/FgYA_RAWQAEWCw3.jpg'),
              backgroundColor: Colors.transparent),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Osan',
              style: TextStyle(
                  color: Color(0xff367E36), fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              DateTime.now().toString(),
              style: const TextStyle(color: Color(0xffA8A095), fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}
// bottomNavigationBar: BottomNavigationBar(
// items: [
// BottomNavigationBarItem(
// icon: Image.asset('assets/shape.png')
//
// )
// ],
// ),

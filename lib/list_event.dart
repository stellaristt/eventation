import 'package:flutter/material.dart';

class ListEvent extends StatelessWidget {
  const ListEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Event'),
        centerTitle: true,
        elevation: 0.00,
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 10),
                ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return itemCard(context);
                  },
                  itemCount: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemCard(BuildContext context) {
    return InkWell(
      onTap: () => print('tap'),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://cdn.wallpapersafari.com/66/42/v0cIE7.jpg',
                    width: 75,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Party Music: Special Anniversary',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Oleh JogjaEvent',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Offline',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    const Divider(
                      height: 10,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.people_rounded, size: 14,color: Colors.grey,),
                            Text('120', style: Theme.of(context).textTheme.bodySmall,),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.calendar_today_rounded, size: 14,color: Colors.grey,),
                            Text('27 Oktober 2002', style: Theme.of(context).textTheme.bodySmall,),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.access_time_rounded, size: 14,color: Colors.grey,),
                            Text('19.00 WIB', style: Theme.of(context).textTheme.bodySmall,),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.pin_drop, size: 14, color: Colors.grey,),
                            Text('Sleman, Yogyakarta', style: Theme.of(context).textTheme.bodySmall,),
                          ],
                        ),
                        Row(
                          children: [
                            Text('3 hari lagi', style: Theme.of(context).textTheme.bodySmall,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
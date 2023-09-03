import 'package:flutter/material.dart';
import 'package:islami/Provider/ahadethProvider.dart';
import 'package:provider/provider.dart';
import '../hadethDetails.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(create: (BuildContext context) => AhadetProvider()..loadFile(),
      builder: (context,child){
      var ahadethProvider = Provider.of<AhadetProvider>(context);
        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/hadeth_img.png" ,),
              ),
              Divider(
                thickness: 2,
                color: Theme.of(context).colorScheme.surface,
              ),
              Text(
                'الأحاديث',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Divider(
                thickness: 2,
                color: Theme.of(context).colorScheme.surface,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Center(
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            HadethDetails.routeName,
                            arguments: ahadethProvider.allAhadethList[index],
                          );
                        },
                        child: Text(
                          ahadethProvider.allAhadethList[index].title,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                  itemCount: ahadethProvider.allAhadethList.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

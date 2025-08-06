import 'package:flutter/material.dart';
import 'package:meditation_app/pages/songboard.dart';
import '../widgets/meditation_card.dart';
import '../utils/utils.dart';
import '../utils/assets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double horizontalPadding = constraints.maxWidth < 600 ? 8 : 40;
          double verticalPadding = constraints.maxWidth < 600 ? 8 : 24;
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.deepPurple,
                        ),
                        onTap: () => Navigator.pop(context),
                      ),
                      const Text(
                        "Hey User!",
                        style: kLargeTextStyle,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 30),
                    child: Text(
                      "What's your mood today?",
                      style: kMeduimTextStyle,
                    ),
                  ),
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        int crossAxisCount = 2;
                        if (constraints.maxWidth > 900) {
                          crossAxisCount = 4;
                        } else if (constraints.maxWidth > 600) {
                          crossAxisCount = 3;
                        }
                        return GridView.count(
                          crossAxisCount: crossAxisCount,
                          mainAxisSpacing: constraints.maxWidth < 600 ? 10 : 20,
                          crossAxisSpacing: constraints.maxWidth < 600 ? 10 : 30,
                          childAspectRatio: constraints.maxWidth < 600 ? 0.95 : 1.1,
                          children: [
                            MeditationCard(
                              title: kMeditateTitle,
                              description: kMeditateSubtitle,
                              image: kMeditateImageSource,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SongBoard(
                                      musicName: kMeditateTitle,
                                      imageSource: kMeditateImageSource,
                                      musicSource: kMeditateMusicSource,
                                    ),
                                  ),
                                );
                              },
                            ),
                            MeditationCard(
                              title: kRelaxTitle,
                              description: kRelaxSubtitle,
                              image: kRelaxImageSource,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SongBoard(
                                      musicName: kRelaxTitle,
                                      imageSource: kRelaxImageSource,
                                      musicSource: kRelaxMusicSource,
                                    ),
                                  ),
                                );
                              },
                            ),
                            MeditationCard(
                              title: kBrainTitle,
                              description: kBrainSubtitle,
                              image: kBrainImageSource,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SongBoard(
                                      musicName: kBrainTitle,
                                      imageSource: kBrainImageSource,
                                      musicSource: kBrainMusicSource,
                                    ),
                                  ),
                                );
                              },
                            ),
                            MeditationCard(
                              title: kStudyTitle,
                              description: kStudySubtitle,
                              image: kStudyImageSource,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SongBoard(
                                      musicName: kStudyTitle,
                                      imageSource: kStudyImageSource,
                                      musicSource: kStudyMusicSource,
                                    ),
                                  ),
                                );
                              },
                            ),
                            MeditationCard(
                              title: kSleepTitle,
                              description: kSleepSubtitle,
                              image: kSleepImageSource,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SongBoard(
                                      musicName: kSleepTitle,
                                      imageSource: kSleepImageSource,
                                      musicSource: kSleepMusicSource,
                                    ),
                                  ),
                                );
                              },
                            ),
                            MeditationCard(
                              title: kFocusTitle,
                              description: kFocusSubtitle,
                              image: kFocusImageSource,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SongBoard(
                                      musicName: kFocusTitle,
                                      imageSource: kFocusImageSource,
                                      musicSource: kFocusMusicSource,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

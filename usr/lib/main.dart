import 'package:flutter/material.dart';

void main() {
  runApp(const ExodusApp());
}

class ExodusApp extends StatelessWidget {
  const ExodusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ವಿಮೋಚನಕಾಂಡ 18',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
        fontFamily: 'NotoSansKannada', // Assuming a standard sans-serif font for Kannada
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ExodusHomeScreen(),
      },
    );
  }
}

class ExodusHomeScreen extends StatelessWidget {
  const ExodusHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ವಿಮೋಚನಕಾಂಡ 18: ಅರ್ಥ ಮತ್ತು ಸಾರಾಂಶ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIntroSection(context),
            const SizedBox(height: 24),
            _buildSectionCard(
              context,
              title: '1. ಇತ್ರೋವನ ಭೇಟಿ ಮತ್ತು ಸಾಕ್ಷಿ ಹಂಚಿಕೆ',
              content: 'ಮೋಶೆಯ ಮಾವನಾದ ಇತ್ರೋವನು ಇಸ್ರಾಯೇಲ್ಯರನ್ನು ದೇವರು ಐಗುಪ್ತದಿಂದ ಹೇಗೆ ಬಿಡಿಸಿದನು ಎಂಬುದನ್ನು ಕೇಳಿ ಮೋಶೆಯನ್ನು ಭೇಟಿಯಾಗಲು ಬರುತ್ತಾನೆ. ಮೋಶೆಯು ಯೆಹೋವನು ಮಾಡಿದ ಅದ್ಭುತಗಳನ್ನು ಮತ್ತು ಮಹೋಪಕಾರಗಳನ್ನು ವಿವರಿಸುತ್ತಾನೆ. ಇದು ನಾವು ದೇವರ ಉಪಕಾರಗಳನ್ನು ಇತರರೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಬೇಕೆಂಬುದನ್ನು ಕಲಿಸುತ್ತದೆ.',
              icon: Icons.group,
            ),
            const SizedBox(height: 16),
            _buildSectionCard(
              context,
              title: '2. ದೇವರ ಸ್ತುತಿ ಮತ್ತು ಆರಾಧನೆ',
              content: 'ದೇವರ ಅದ್ಭುತಗಳನ್ನು ಕೇಳಿದ ಇತ್ರೋವನು ಸಂತೋಷಪಟ್ಟು, "ಯೆಹೋವನಿಗೆ ಸ್ತೋತ್ರವಾಗಲಿ" ಎಂದು ಹೇಳುತ್ತಾನೆ. ಅವನು ದೇವರಿಗೆ ಯಜ್ಞಗಳನ್ನು ಅರ್ಪಿಸುತ್ತಾನೆ. ಇದು ನಮ್ಮ ಜೀವಿತದಲ್ಲಿ ದೇವರ ಕಾರ್ಯಗಳನ್ನು ನೋಡಿದಾಗ ನಾವು ಆತನನ್ನು ಸ್ತುತಿಸಬೇಕು ಎಂಬುದನ್ನು ತೋರಿಸುತ್ತದೆ.',
              icon: Icons.brightness_high,
            ),
            const SizedBox(height: 16),
            _buildSectionCard(
              context,
              title: '3. ಇತ್ರೋವನ ಆಡಳಿತಾತ್ಮಕ ಸಲಹೆ',
              content: 'ಮೋಶೆಯು ಬೆಳಗಿನಿಂದ ಸಂಜೆಯವರೆಗೆ ಒಂಟಿಯಾಗಿ ಜನರ ನ್ಯಾಯತೀರಿಸುವುದನ್ನು ಇತ್ರೋವನು ನೋಡುತ್ತಾನೆ. ಇದು ಮೋಶೆಗೂ ಮತ್ತು ಜನರಿಗೂ ಬಳಲಿಕೆಯನ್ನು ತರುತ್ತದೆ ಎಂದು ಅರಿತು, ಇತ್ರೋವನು ಜವಾಬ್ದಾರಿಯನ್ನು ಹಂಚಿಕೊಳ್ಳಲು ಸಲಹೆ ನೀಡುತ್ತಾನೆ. ನಾಯಕರನ್ನು ನೇಮಿಸಿ ಅಧಿಕಾರವನ್ನು ವಿಕೇಂದ್ರೀಕರಿಸಲು ಸೂಚಿಸುತ್ತಾನೆ.',
              icon: Icons.account_balance,
            ),
            const SizedBox(height: 16),
            _buildSectionCard(
              context,
              title: '4. ಜವಾಬ್ದಾರಿ ಹಂಚಿಕೆ (Delegation)',
              content: 'ದೇವರ ಭಯವುಳ್ಳ, ಸತ್ಯವಂತರಾದ ಮತ್ತು ದುರ್ಲಾಭವನ್ನು ದ್ವೇಷಿಸುವವರನ್ನು ಸಾವಿರ, ನೂರು, ಐವತ್ತು ಮತ್ತು ಹತ್ತು ಜನರಿಗೆ ನಾಯಕರನ್ನಾಗಿ ನೇಮಿಸಲಾಗುತ್ತದೆ. ಸಣ್ಣ ವಿಷಯಗಳನ್ನು ಅವರು ತೀರಿಸುತ್ತಾರೆ, ದೊಡ್ಡ ವಿಷಯಗಳನ್ನು ಮಾತ್ರ ಮೋಶೆಯ ಬಳಿಗೆ ತರುತ್ತಾರೆ. ಇದು ಉತ್ತಮ ನಾಯಕತ್ವ ಮತ್ತು ತಂಡದ ಕೆಲಸದ (Teamwork) ಪ್ರಾಮುಖ್ಯತೆಯನ್ನು ಒತ್ತಿಹೇಳುತ್ತದೆ.',
              icon: Icons.handshake,
            ),
            const SizedBox(height: 24),
            _buildConclusionSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ಪೀಠಿಕೆ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'ವಿಮೋಚನಕಾಂಡ 18ನೇ ಅಧ್ಯಾಯವು ಬೈಬಲಿನಲ್ಲಿ ಒಂದು ಪ್ರಮುಖ ಘಟ್ಟವಾಗಿದೆ. ಇದು ಕೇವಲ ಒಂದು ಕುಟುಂಬದ ಪುನರ್ಮಿಲನವಲ್ಲ, ಬದಲಾಗಿ ನಾಯಕತ್ವ, ಜವಾಬ್ದಾರಿ ಹಂಚಿಕೆ ಮತ್ತು ದೇವರ ಕಾರ್ಯಗಳಿಗಾಗಿ ಆತನನ್ನು ಮಹಿಮೆಪಡಿಸುವ ಉತ್ತಮ ಪಾಠಗಳನ್ನು ಒಳಗೊಂಡಿದೆ.',
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required String content, required IconData icon}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Theme.of(context).colorScheme.onSecondaryContainer),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConclusionSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).colorScheme.tertiary, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ಮುಕ್ತಾಯ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onTertiaryContainer,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'ಇದು ಒಬ್ಬ ಮನುಷ್ಯನು ಎಲ್ಲಾ ಕಾರ್ಯಗಳನ್ನು ಏಕಾಂಗಿಯಾಗಿ ಮಾಡಬಾರದು ಮತ್ತು ಜ್ಞಾನಯುಕ್ತ ಸಲಹೆಗಳನ್ನು ಇತರರಿಂದ ಸ್ವೀಕರಿಸಬೇಕು ಎಂಬುದಕ್ಕೆ ಉತ್ತಮ ಉದಾಹರಣೆಯಾಗಿದೆ. ಆಧ್ಯಾತ್ಮಿಕ ಹಾಗೂ ಆಡಳಿತಾತ್ಮಕ ಸಮತೋಲನವನ್ನು ಈ ಅಧ್ಯಾಯವು ಕಲಿಸುತ್ತದೆ.',
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Theme.of(context).colorScheme.onTertiaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}

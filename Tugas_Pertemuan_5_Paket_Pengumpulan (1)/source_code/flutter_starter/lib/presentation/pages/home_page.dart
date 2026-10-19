import 'package:flutter/material.dart';
import '../../data/repositories/agenda_repository.dart';
import '../viewmodels/home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = HomeViewModel(repository: AgendaRepository());
    viewModel.addListener(_refresh);
    viewModel.loadAgenda();
  }

  void _refresh() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    viewModel.removeListener(_refresh);
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Starter — MVVM')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Dashboard', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Starter project untuk struktur aplikasi yang terpisah dan mudah dikembangkan.'),
            const SizedBox(height: 20),
            if (viewModel.isLoading)
              const Center(child: CircularProgressIndicator())
            else if (viewModel.errorMessage != null)
              Text(viewModel.errorMessage!)
            else
              Expanded(
                child: ListView.separated(
                  itemCount: viewModel.agenda.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final item = viewModel.agenda[index];
                    return Card(
                      child: ListTile(
                        leading: const CircleAvatar(child: Icon(Icons.event_note)),
                        title: Text(item.title),
                        subtitle: Text(item.description),
                        trailing: Text(item.dateLabel),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

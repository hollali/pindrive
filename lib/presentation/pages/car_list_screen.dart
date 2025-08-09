import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pindrive/presentation/bloc/car_bloc.dart';
import 'package:pindrive/presentation/bloc/car_state.dart';
import 'package:pindrive/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CarsLoaded) {
            if (state.cars.isEmpty) {
              return const Center(
                child: Text(
                  'No cars available at the moment.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              );
            }
            return ListView.builder(
              padding: const EdgeInsets.all(12), // ✅ Added padding
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              },
            );
          } else if (state is CarsError) {
            return Center(
              child: Text(
                'Error: ${state.message}',
                style: const TextStyle(fontSize: 16, color: Colors.red),
              ),
            );
          }
          return const SizedBox(); // ✅ Empty state placeholder
        },
      ),
    );
  }
}

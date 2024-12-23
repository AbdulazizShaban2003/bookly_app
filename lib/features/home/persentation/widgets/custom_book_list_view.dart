import 'package:bookly/features/home/domain/feature_book_cubit/feature_book_cubit.dart';
import 'package:bookly/features/home/persentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
        if(state is FeatureBookSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.25,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CustomBookImage();
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 15,),
                  itemCount: 10),
            ),
          );
        }
        else if(state is FeatureBookFailure){
          return Text(state.errorMassage);
        }
        else if (state is FeatureBookLoading){
          return CircularProgressIndicator();
        }
        else{
          return SizedBox();
        }
  },
);
  }
}


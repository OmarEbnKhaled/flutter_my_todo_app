import 'package:core/widgets/loading_widget.dart';
import 'package:dependencies/dependencies.dart' as dependencies;
import 'package:flutter/material.dart';

import '../bloc/sign_in_bloc/sign_in_bloc.dart';
import '../widgets/sign_in_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final SignInBloc signInBloc =  dependencies.Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dependencies.BlocProvider(
        create: (context) => signInBloc,
        child: Center(child: SingleChildScrollView(child: _buildBody())),
      ),
    );
  }

  Widget _buildBody() {
    return dependencies.BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          dependencies.Modular.to.pushNamed('/lists/');
        }
      },
      builder: (context, state) {
        if (state is SignInLoadingState) {
          return const LoadingWidget();
        } else if (state is SignInFailureState) {
          return const SignInWidget();
        }
        return const SignInWidget();
      },
    );
  }
}

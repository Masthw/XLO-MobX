import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:xlo_mobx/components/custom_drawer/custom_drawer.dart';
import 'package:xlo_mobx/screens/create/components/category_field.dart';
import 'package:xlo_mobx/screens/create/components/cep_field.dart';
import 'package:xlo_mobx/screens/create/components/hide_phone_field.dart';
import 'package:xlo_mobx/screens/create/components/images_field.dart';
import 'package:xlo_mobx/stores/create_store.dart';

class CreateScreen extends StatelessWidget {
  CreateScreen({super.key});

  final CreateStore createStore = CreateStore();

  @override
  Widget build(BuildContext context) {
    const labelStyle = TextStyle(
      fontWeight: FontWeight.w800,
      color: Colors.grey,
      fontSize: 18,
    );

    const contentPadding = EdgeInsets.fromLTRB(16, 10, 12, 10);

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Criar Anúncio'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.symmetric(horizontal: 32),
            elevation: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ImagesField(
                  createStore: createStore,
                ),
                Observer(
                  builder: (_) {
                    return TextFormField(
                      onChanged: createStore.setTitle,
                      decoration: InputDecoration(
                          labelText: 'Título *',
                          labelStyle: labelStyle,
                          contentPadding: contentPadding,
                          errorText: createStore.titleError),
                    );
                  },
                ),
                Observer(
                  builder: (_) {
                    return TextFormField(
                      onChanged: createStore.setDescription,
                      decoration: InputDecoration(
                        labelText: 'Descrição *',
                        labelStyle: labelStyle,
                        contentPadding: contentPadding,
                        errorText: createStore.descriptionError,
                      ),
                      maxLines: null,
                    );
                  },
                ),
                CategoryField(createStore),
                CepField(createStore),
                Observer(builder: (_) {
                  return TextFormField(
                    onChanged: createStore.setPrice,
                    decoration: InputDecoration(
                      labelText: 'Preço *',
                      labelStyle: labelStyle,
                      contentPadding: contentPadding,
                      errorText: createStore.priceError,
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      RealInputFormatter(moeda: true),
                    ],
                  );
                }),
                HidePhoneField(createStore),
                Observer(builder: (_) {
                  return SizedBox(
                    height: 50,
                    child: GestureDetector(
                      onTap: createStore.invalidSendPressed,
                      child: ElevatedButton(
                        onPressed: createStore.sendPressed,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            disabledBackgroundColor:
                                Colors.orange.withAlpha(120),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: const LinearBorder()),
                        child: const Text(
                          'Enviar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

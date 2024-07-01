import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceModal extends StatelessWidget {
  final Function(File) onImageSelected;

  const ImageSourceModal(this.onImageSelected, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return BottomSheet(
        onClosing: () {},
        builder: (_) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => getFromCamera(context),
              child: const Text('Câmera'),
            ),
            ElevatedButton(
              onPressed: () => getFromGallery(context),
              child: const Text('Galeria'),
            )
          ],
        ),
      );
    } else {
      return CupertinoActionSheet(
        title: const Text('Selecionar foto para o anúncio'),
        message: const Text('Escolha a origem da foto'),
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancelar',
            style: TextStyle(color: Colors.red),
          ),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () => getFromCamera(context),
            child: const Text('Câmera'),
          ),
          CupertinoActionSheetAction(
            onPressed: () => getFromGallery(context),
            child: const Text('Galeria'),
          )
        ],
      );
    }
  }

  Future<void> getFromCamera(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final croppedFile = await _cropImage(pickedFile.path);
      if (croppedFile != null) {
        onImageSelected(File(croppedFile.path));
      }
    }
  }

  Future<void> getFromGallery(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final croppedFile = await _cropImage(pickedFile.path);
      if (croppedFile != null) {
        onImageSelected(File(croppedFile.path));
      }
    }
  }

  Future<CroppedFile?> _cropImage(String sourcePath) async {
    return await ImageCropper().cropImage(
      sourcePath: sourcePath,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Editar Imagem',
          toolbarColor: Colors.purple,
          toolbarWidgetColor: Colors.white,
        ),
        IOSUiSettings(
          title: 'Editar Imagem',
          cancelButtonTitle: 'Cancelar',
          doneButtonTitle: 'Concluir',
        ),
      ],
    );
  }
}

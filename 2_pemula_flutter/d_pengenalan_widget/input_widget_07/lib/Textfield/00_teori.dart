/*

TextField
  - menerima input teks dari keyboard

  - Mendapatkan nilai dari TextField dengan parameter 
    onChanged, 
    onSubmitted, 
    dan TextEditingController

  - parameter onChanged = fungsi yang dipanggil setiap terjadi perubahan inputan 
    pada TextField. fungsi ini dapat mengubah nilai variabel state dengan memanggil fungsi
    setState()

  String _name = '';
 
  TextField(
    onChanged: (String value) {
      setState(() {
        _name = value;
      });
    },
  )

  - Parameter onSubmitted = jika tidak ingin mengambil nilai setiap perubahan tetapi hanya 
    ketika seluruh input sudah selesai di-submit

    String _name = '';
 
    TextField(
      onSubmitted: (String value) {
        setState(() {
          _name = value;
        });
      },
    )

  - TextEditingController = membuat variabel TextEditingController lalu menambahkannya ke 
    widget TextField

  TextEditingController _controller = TextEditingController();
 
  TextField(
    controller: _controller,
  ),

  - ketika menggunakan controller, pastikan untuk menghapus controller ketika halaman atau
    widget sudah tidak digunakan. Bertujuan supaya tidak menimbulkan kebocoran memory leak
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

sumber = https://api.flutter.dev/flutter/material/TextField-class.html
https://docs.flutter.dev/ui/widgets/material#Input%20and%20selections
*/

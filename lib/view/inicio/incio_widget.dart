import 'package:flutter/material.dart';
import 'package:ipersonal/cores/cores_config.dart';

class InicioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CoresConfig cores = new CoresConfig();
    String foto1 =
        "https://scontent-gru2-2.xx.fbcdn.net/v/t31.0-8/21731538_1407269439328117_2750328387061033204_o.jpg?_nc_cat=110&ccb=2&_nc_sid=174925&_nc_eui2=AeFk9x_EUUWGirfJJ2RCczVLg4dL_uz5wjaDh0v-7PnCNroQgg_IVeQe0xfE320BSUZEBnL7wt_Objk-JyfrHorf&_nc_ohc=j-M8q0itlGwAX9O1DG-&_nc_ht=scontent-gru2-2.xx&oh=6a2c7bfa1f8e8de44158affb86f280e3&oe=5FD44A00";

    String foto2 =
        "https://scontent-gru2-1.xx.fbcdn.net/v/t1.0-9/125309660_957293168127521_8874014209670310933_o.jpg?_nc_cat=107&ccb=2&_nc_sid=8bfeb9&_nc_eui2=AeHuVafxDsNye-thX-UY5oR4Vkt2MYx6jNVWS3YxjHqM1WluztJ32uPJANTAry9zgET-V7ttp7OZdC1wbPYDCMJU&_nc_ohc=XBKgXV6wf1AAX87IqFf&_nc_ht=scontent-gru2-1.xx&oh=590c3256740a05d284c6343cead1b429&oe=5FD44D4E";
    String foto3 =
        "https://scontent-gru2-2.xx.fbcdn.net/v/t1.0-9/124800308_1843913342415831_433323477934227882_n.jpg?_nc_cat=102&ccb=2&_nc_sid=84a396&_nc_eui2=AeEUuQzwLncLmhDuRv5V6JdFi5CjWpUoUjmLkKNalShSOVQKuyqIoemCScai3OHiDYzAvvPr76vWRfO_SClWbski&_nc_ohc=Du_M8D2ZpEAAX9UEjb3&_nc_ht=scontent-gru2-2.xx&oh=5ef83d93d231ed649ce8f19c9310e1b7&oe=5FD3C6C2";
    String foto4 =
        "https://scontent-gru1-1.cdninstagram.com/v/t51.2885-15/e35/125189695_409778620038774_8697047451730821323_n.jpg?_nc_ht=scontent-gru1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=Fnft29FQmAIAX_UwDv5&tp=18&oh=91d2a01863c1ff5a55a9735f6cb32412&oe=5FD74581";
    //"https://images.pexels.com/photos/3770317/pexels-photo-3770317.jpeg?cs=srgb&dl=pexels-becca-correia-3770317.jpg&fm=jpg";

    String foto(int index) {
      if (index == 1) {
        return foto1;
      } else if (index == 2) {
        return foto2;
      } else if (index == 3) {
        return foto3;
      } else if (index == 4) {
        return foto4;
      } else {
        return "https://scontent-gru1-1.xx.fbcdn.net/v/t1.0-9/125323069_3359386644116377_879718545932578566_n.jpg?_nc_cat=104&ccb=2&_nc_sid=730e14&_nc_eui2=AeEP5o84Y-pgRsVwQxoIdDDg1GUs2yWfDJTUZSzbJZ8MlCxQRKZkjVdg6fy2OvtN3zyDMimfph6Tb2n1hBF_7gRn&_nc_ohc=u3ilBoEcoh4AX90Koko&_nc_ht=scontent-gru1-1.xx&oh=2cb2b5679fa771b8eb32620a1f758f76&oe=5FD66906";
      }
    }

    return Scaffold(
      appBar: PreferredSize(
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Rua São Vicente, 140",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_drop_down),
                        onPressed: () {},
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.attach_money),
                        onPressed: () {},
                        alignment: Alignment.centerRight,
                      ),
                      Text(
                        "Saldo",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(50)),
      backgroundColor: cores.corFundoPadrao,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            padding: EdgeInsets.only(
                left: constraints.maxWidth * 0.03,
                right: constraints.maxWidth * 0.03),
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: RaisedButton(
                          color: cores.corPadrao,
                          onPressed: () {},
                          child: Text(
                            "Personais",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: constraints.maxWidth * 0.05),
                    ),
                    Expanded(
                      child: Container(
                        child: RaisedButton(
                          color: cores.corPadrao,
                          onPressed: () {},
                          child: Text(
                            "Nutricionistas",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: constraints.maxHeight * 0.025),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: constraints.maxHeight * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: cores.corPadrao)),
                        child: TextFormField(
                          cursorColor: cores.corPadrao,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: cores.corPadrao,
                            ),
                            labelText: "Pesquisar",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: constraints.maxHeight * 0.025)),
                Expanded(
                  child: GridView.count(
                    // Cria um grid com duas colunas
                    crossAxisCount: 1,
                    // Gera 50 Widgets que exibem o seu índice
                    children: List.generate(
                      15,
                      (index) {
                        return LayoutBuilder(
                          builder: (context, caixaSize) {
                            return Container(
                              width: caixaSize.maxWidth,
                              height: caixaSize.maxHeight,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(color: Colors.white),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[300],
                                      offset: Offset(2.5, 2.5),
                                      blurRadius: 2.0,
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.all(5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Image.network(
                                      foto(index + 1),
                                      height: caixaSize.maxHeight * 0.5,
                                      width: caixaSize.maxWidth * 0.3,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ],
                                ),
                                /* ListTile(
                                title: Text(
                                  'Prof ${index + 1}',
                                ),
                                subtitle: Text("Demais informações"),
                                leading: Image.network(
                                    "https://images.pexels.com/photos/1499327/pexels-photo-1499327.jpeg?cs=srgb&dl=pexels-emily-garland-1499327.jpg&fm=jpg"),
                              ), */
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

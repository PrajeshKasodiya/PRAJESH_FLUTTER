class RBI {
  void ROI() {
    print("RBI Rate of interest");
  }
}

class SBI extends RBI {
  void ROI() {
    super.ROI();
    print("SBI Rate of interest");
  }

  void SBI_RULES() {
    print("SBI_RULES");
  }
}

class HDFC extends RBI {
  void ROI() {
    print("HDFC Rate of interest");
  }

  void HDFC_RULES() {
    print("HDFC_RULES");
  }
}

void main() {
  var obj1 = new SBI();
  var obj = new HDFC();
  obj1.ROI();
  obj.ROI();
  obj1.SBI_RULES();
  obj.HDFC_RULES();
}

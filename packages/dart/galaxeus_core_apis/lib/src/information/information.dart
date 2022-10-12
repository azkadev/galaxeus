part of galaxeus_core_apis;

class AppInformation {
  AppInformation();

  static List<Faqs> forUser() {
    return [
      Faqs({
        "@type": "faqs",
        "from": {"@type": "accountTypeAnonymous"},
        "to": {"@type": "accountTypeAnonymous"},
        "question": "hello world",
        "answer": "hello world"
      }),
    ];
  }

  static List<Features> features() {
    return [
      Features({
        "@type": "features",
        "content": {
          "@type": "contentPhoto",
          "photo": {
            "@type": "photoFromUrl",
            "url": "https://www.youtube.com/watch?v=bQowlkLQzkg"
          },
          "text": {"@type": "contentCaption", "caption": "Hello world"}
        }
      }),
      Features({
        "@type": "features",
        "content": {
          "@type": "contentText",
          "text": {"@type": "contentCaption", "caption": "Hello world features"}
        }
      }),
    ];
  }

  static List<Terms> terms() {
    return [
      Terms({
        "@type": "terms",
        "title": "Terms OF Service",
        "sub_title": "",
        "description":
            "the followings document outlines of use of website before any of services",
      }),
      Terms({
        "@type": "terms",
        "title": "Description OF Service",
        "sub_title":
            "We develop a photo community provide service to create online portofolios and license photos through distributors. We will develop more features and services in the future",
        "description":
            "the followings document outlines of use of website before any of services",
      }),
      Terms({
        "@type": "terms",
        "title": "Acceptance OF Service",
        "sub_title": "By using, you agree to all the term below",
        "description":
            "the followings document outlines of use of website before any of services"
      }),
    ];
  }

  static List<Faqs> faqs() {
    return [
      Faqs({
        "@type": "faqs",
        "from": {"@type": "accountTypeAnonymous"},
        "to": {"@type": "accountTypeAnonymous"},
        "question": "Apakah api Galaxeus Gratis?",
        "answer": "Iya gratis"
      }),
      Faqs({
        "@type": "faqs",
        "from": {"@type": "accountTypeAnonymous"},
        "to": {"@type": "accountTypeAnonymous"},
        "question": "Berapa jumlah max saldo uang di wallet galaxeus?",
        "answer": "Tidak ada jumlah max saldo"
      }),
      Faqs({
        "@type": "faqs",
        "from": {"@type": "accountTypeAnonymous"},
        "to": {"@type": "accountTypeAnonymous"},
        "question":
            "Kenapa galaxeus tidak memerlukan identitas ktp / npwp dll?",
        "answer":
            "Karena kami belum bisa bikin engine ai image recognition, jadi untuk sementara waktu kami tidak memakai identitas ktp"
      }),
      Faqs({
        "@type": "faqs",
        "from": {"@type": "accountTypeAnonymous"},
        "to": {"@type": "accountTypeAnonymous"},
        "question":
            "Saya berjualan produk digital, apakah saya bisa jualan di galaxeus tanpa harus mengirim?",
        "answer":
            "Iya anda bisa berjualan digital tanpa harus mengirim di ekspedisi"
      }),
      Faqs({
        "@type": "faqs",
        "from": {"@type": "accountTypeAnonymous"},
        "to": {"@type": "accountTypeAnonymous"},
        "question": "Kenapa harus membayar untuk register acccount?",
        "answer":
            "Untuk membuat wallet sekaligus mempercepat usaha kami, sebagai gantinya anda akan mendapatkan gratis services kami ( Bot / Userbot / dll )"
      }),
      Faqs({
        "@type": "faqs",
        "from": {"@type": "accountTypeAnonymous"},
        "to": {"@type": "accountTypeAnonymous"},
        "question":
            "Saya memiliki usaha di berbagai social media, apakah api galaxeus bisa di integrasikan di semua platform yang mendukung api?",
        "answer":
            "Ya api galaxeus bisa di integrasikan ke berbagai platform dan berbagai protocol seperti ( http, websocket, socket )"
      }),
    ];
  }
}

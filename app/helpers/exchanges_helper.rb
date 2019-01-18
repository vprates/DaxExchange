module ExchangesHelper
  def currency_list
    [
      ['FAVORITOS',
        [['REAL BRASIL','BRL'], ['EURO','EUR'], ['DOLAR DOS EUA','USD']]
      ],
      ['CRIPTOMOEDAS',
        [['BITCOIN', 'BTC']]
      ],
      ['OUTROS',
        [
          ['DOLAR AUSTRALIANO','AUD'], ['LEV BULGARIA','BGN'], ['DOLAR CANADENSE','CAD'], ['FRANCO SUICO','CHF'],
          ['RENMINBI CHINES','CNY'], ['COROA TCHECA','CZK'], ['COROA DINAMARQUESA','DKK'], ['LIBRA ESTERLINA','GBP'],
          ['DOLAR HONG KONG','HKD'], ['KUNA CROATA','HRK'], ['FORINT HÚNGARO','HUF'], ['RUPIA INDONÉSIA]','IDR'],
          ['SHEKEL ISRAEL','ILS'], ['RUPIA INDIA','INR'], ['IENE JAPÃO','JPY'], ['WON COREIA SUL','KRW'],
          ['PESO MEXINO','MXN'],['RINGGIT MALAIO','MYR'], ['COROA NORUEGUESA','NOK'], ['DOLAR NEOZELANDES','NZD'], 
          ['PESO FILIPINO','PHP'], ['ZLOTI POLONÊS','PLN'], ['LEU ROMENO','RON'], ['RUBLO RUSSO','RUB'], ['COROA SUECA','SEK'],
          ['DOLAR CINGAPURA','SGD'], ['BATH TAILANDIA','THB'], ['LIRA TURCA','TRY'], ['RAND SUL AFRICANO','ZAR']
        ]
      ]
    ]
  end
end

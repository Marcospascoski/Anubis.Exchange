module Admin
  class Ability
    include CanCan::Ability

    def initialize(user)
      return unless user.admin?

      can :read, Order
      can :read, Trade
      can :read, Proof
      can :update, Proof
      can :manage, Document
      can :manage, Member
      can :manage, Ticket
      can :manage, IdDocument
      can :manage, TwoFactor

      can :menu, Deposit
      can :manage, ::Deposits::Bank
      can :manage, ::Deposits::Satoshi
      can :manage, ::Deposits::Gravio
      can :manage, ::Deposits::Ltc
      can :manage, ::Deposits::Ether
      can :manage, ::Deposits::Touristcoin
      # can :manage, ::Deposits::Poseidon
      # can :manage, ::Deposits::Profithunter
      # can :manage, ::Deposits::Xgoldcoin
      # can :manage, ::Deposits::Deviant
      # can :manage, ::Deposits::Phoboscoin
      # can :manage, ::Deposits::Dinero
      # can :manage, ::Deposits::Advance
      # can :manage, ::Deposits::Dv7coin
      # can :manage, ::Deposits::Shekel
      # can :manage, ::Deposits::Argo
      # can :manage, ::Deposits::Escrow
      # can :manage, ::Deposits::Neetcoin
      # can :manage, ::Deposits::Xylo
      # can :manage, ::Deposits::Steepcoin
      # can :manage, ::Deposits::Bitcoingreen
      # can :manage, ::Deposits::Craftr
      # can :manage, ::Deposits::Enviromint
      # can :manage, ::Deposits::Snowgem
      # can :manage, ::Deposits::Newyorkcoin
      # can :manage, ::Deposits::Zeroonecoin
      # can :manage, ::Deposits::Bitcoinz
      # can :manage, ::Deposits::Yenten
      # can :manage, ::Deposits::Yicoin
      # can :manage, ::Deposits::Tulipcoin
      # can :manage, ::Deposits::Pawcoin
      # can :manage, ::Deposits::Stronghand
      # can :manage, ::Deposits::Lemanum
      # can :manage, ::Deposits::Keyco
      # can :manage, ::Deposits::Absolute
      # can :manage, ::Deposits::Suppocoin
      # can :manage, ::Deposits::Linda
      # can :manage, ::Deposits::Highcoin
      # can :manage, ::Deposits::Blisscoin
      # can :manage, ::Deposits::Tokyo
      # can :manage, ::Deposits::Elleriumcoin
      # can :manage, ::Deposits::Zexcoin
      # can :manage, ::Deposits::Rulitecoin
      # can :manage, ::Deposits::Luckybit
      # can :manage, ::Deposits::Instacashcoin
      # can :manage, ::Deposits::Mambocoin
      # can :manage, ::Deposits::Phantomxcoin
      # can :manage, ::Deposits::Mixcoin
      # can :manage, ::Deposits::Kredscoin
      # can :manage, ::Deposits::Bankittcoin
      # can :manage, ::Deposits::Snxcoin
      # can :manage, ::Deposits::Girocoin
      # can :manage, ::Deposits::Onexcoin
      # can :manage, ::Deposits::Pushicoin
      # can :manage, ::Deposits::Virtuscoin
      # can :manage, ::Deposits::Zacacoin
      # can :manage, ::Deposits::Xhimeracoin
      # can :manage, ::Deposits::Xarucoin
      # can :manage, ::Deposits::Rupayacoin
      # can :manage, ::Deposits::Ferrumcoin
      # can :manage, ::Deposits::Peoplecoin
      # can :manage, ::Deposits::Muncoin
      # can :manage, ::Deposits::Millioncoin
      # can :manage, ::Deposits::Alphacoin
      # can :manage, ::Deposits::Zelcashcoin
      # can :manage, ::Deposits::Amerocoin
      # can :manage, ::Deposits::Brofistcoin
      # can :manage, ::Deposits::Friendshipcoin
      # can :manage, ::Deposits::Salencoin
      # can :manage, ::Deposits::Unifiedsocietycoin
      # can :manage, ::Deposits::Bitspacecoin
      # can :manage, ::Deposits::Eotcoin
      # can :manage, ::Deposits::Apolloncoin
      # can :manage, ::Deposits::Miacoin
      # can :manage, ::Deposits::Krakencoin
      # can :manage, ::Deposits::Archimedcoin
      # can :manage, ::Deposits::Olympiccoin
      # can :manage, ::Deposits::Onzcoin
      # can :manage, ::Deposits::Agenacoin
      # can :manage, ::Deposits::Corezcoin
      # can :manage, ::Deposits::Enixtcoin
      # can :manage, ::Deposits::Stannumcoin
      # can :manage, ::Deposits::Quazcoin
      # can :manage, ::Deposits::Scrivcoin
      # can :manage, ::Deposits::Ethfcoin
      # can :manage, ::Deposits::Arepacoin
      # can :manage, ::Deposits::Sub1xcoin
      # can :manage, ::Deposits::Cheesecoin
      # can :manage, ::Deposits::Jiyocoin
      # can :manage, ::Deposits::Pyrocoin
      # can :manage, ::Deposits::Rovercoin
      # can :manage, ::Deposits::Citruscoin
      # can :manage, ::Deposits::Xeoncoin
      # can :manage, ::Deposits::Edollarcoin
      # can :manage, ::Deposits::Curiumcoin
      # can :manage, ::Deposits::Needlecoin
      # can :manage, ::Deposits::Zaliascoin
      # can :manage, ::Deposits::Protoncoin
      # can :manage, ::Deposits::Kraitcoin
      # can :manage, ::Deposits::Alphanodecoin
      # can :manage, ::Deposits::Bcpcoin
      # can :manage, ::Deposits::Xumacoin
      # can :manage, ::Deposits::Idapaycoin
      # can :manage, ::Deposits::Unifycoin
      # can :manage, ::Deposits::Andcoin
      # can :manage, ::Deposits::Thevigcoin
      # can :manage, ::Deposits::Pepegoldcoin
      # can :manage, ::Deposits::Vizzotopcoin
      # can :manage, ::Deposits::Monsterbitcoin
      # can :manage, ::Deposits::Lunexcoin
      # can :manage, ::Deposits::Prufuscoin
      # can :manage, ::Deposits::Wantcoin
      # can :manage, ::Deposits::Mmocoin
      # can :manage, ::Deposits::Carebitcoin
      # can :manage, ::Deposits::Xt3chcoin
      # can :manage, ::Deposits::Btcfcoin
      # can :manage, ::Deposits::Zcorecoin
      # can :manage, ::Deposits::Solariumcoin
      # can :manage, ::Deposits::Aevocoin
      # can :manage, ::Deposits::Platopaycoin
      # can :manage, ::Deposits::Yobacoin
      # can :manage, ::Deposits::Nibexcoin
      # can :manage, ::Deposits::Elliotcoin
      # can :manage, ::Deposits::Kingstoncoin
      # can :manage, ::Deposits::Akencoin
      # can :manage, ::Deposits::Akromacoin
      # can :manage, ::Deposits::Ravencoin
      # can :manage, ::Deposits::Posqcoin
      # can :manage, ::Deposits::Radiuscoin
      # can :manage, ::Deposits::Discountcoin
      # can :manage, ::Deposits::Variuscoin
      # can :manage, ::Deposits::Cyphercoin
      # can :manage, ::Deposits::Blooddonationcoin
      # can :manage, ::Deposits::Innoketcoin
      # can :manage, ::Deposits::Bitsolocoin
      # can :manage, ::Deposits::Bffcoin
      # can :manage, ::Deposits::Tobacoin
      # can :manage, ::Deposits::Alpenschillingcoin
      # can :manage, ::Deposits::Relariumcoin
      # can :manage, ::Deposits::Vizehcoin
      # can :manage, ::Deposits::Rampantcoin
      # can :manage, ::Deposits::Cubiscoin
      # can :manage, ::Deposits::Examinationcoin
      # can :manage, ::Deposits::Strayacoin
      # can :manage, ::Deposits::Slashcoin
      # can :manage, ::Deposits::Adirondackcoin
      # can :manage, ::Deposits::Hightemperaturecoin
      # can :manage, ::Deposits::Frozencoin
      # can :manage, ::Deposits::Elbruscoin
      # can :manage, ::Deposits::Xerumcashcoin
      # can :manage, ::Deposits::Kickerroomcoin
      # can :manage, ::Deposits::Allcoingurucoin
      # can :manage, ::Deposits::Versuscoin
      # can :manage, ::Deposits::Heracoin
      # can :manage, ::Deposits::Blazariumcoin
      # can :manage, ::Deposits::Itisnetworkcoin
      # can :manage, ::Deposits::Hppcoin
      # can :manage, ::Deposits::Designcoin
      # can :manage, ::Deposits::Demoscoin
      # can :manage, ::Deposits::Jagaricoinr
      #deposit

      can :menu, Withdraw
      can :manage, ::Withdraws::Bank
      can :manage, ::Withdraws::Satoshi
      can :manage, ::Withdraws::Gravio
      can :manage, ::Withdraws::Doge
      can :manage, ::Withdraws::Ltc
      can :manage, ::Withdraws::Ether
      can :manage, ::Withdraws::Touristcoin
      # can :manage, ::Withdraws::Poseidon
      # can :manage, ::Withdraws::Profithunter
      # can :manage, ::Withdraws::Xgoldcoin
      # can :manage, ::Withdraws::Deviant
      # can :manage, ::Withdraws::Phoboscoin
      # can :manage, ::Withdraws::Dinero
      # can :manage, ::Withdraws::Advance
      # can :manage, ::Withdraws::Dv7coin
      # can :manage, ::Withdraws::Shekel
      # can :manage, ::Withdraws::Argo
      # can :manage, ::Withdraws::Escrow
      # can :manage, ::Withdraws::Neetcoin
      # can :manage, ::Withdraws::Xylo
      # can :manage, ::Withdraws::Steepcoin
      # can :manage, ::Withdraws::Bitcoingreen
      # can :manage, ::Withdraws::Craftr
      # can :manage, ::Withdraws::Enviromint
      # can :manage, ::Withdraws::Snowgem
      # can :manage, ::Withdraws::Newyorkcoin
      # can :manage, ::Withdraws::Zeroonecoin
      # can :manage, ::Withdraws::Bitcoinz
      # can :manage, ::Withdraws::Yenten
      # can :manage, ::Withdraws::Yicoin
      # can :manage, ::Withdraws::Tulipcoin
      # can :manage, ::Withdraws::Pawcoin
      # can :manage, ::Withdraws::Stronghand
      # can :manage, ::Withdraws::Lemanum
      # can :manage, ::Withdraws::Keyco
      # can :manage, ::Withdraws::Absolute
      # can :manage, ::Withdraws::Suppocoin
      # can :manage, ::Withdraws::Linda
      # can :manage, ::Withdraws::Highcoin
      # can :manage, ::Withdraws::Blisscoin
      # can :manage, ::Withdraws::Tokyo
      # can :manage, ::Withdraws::Elleriumcoin
      # can :manage, ::Withdraws::Zexcoin
      # can :manage, ::Withdraws::Rulitecoin
      # can :manage, ::Withdraws::Luckybit
      # can :manage, ::Withdraws::Instacashcoin
      # can :manage, ::Withdraws::Mambocoin
      # can :manage, ::Withdraws::Phantomxcoin
      # can :manage, ::Withdraws::Mixcoin
      # can :manage, ::Withdraws::Kredscoin
      # can :manage, ::Withdraws::Bankittcoin
      # can :manage, ::Withdraws::Snxcoin
      # can :manage, ::Withdraws::Girocoin
      # can :manage, ::Withdraws::Onexcoin
      # can :manage, ::Withdraws::Pushicoin
      # can :manage, ::Withdraws::Virtuscoin
      # can :manage, ::Withdraws::Zacacoin
      # can :manage, ::Withdraws::Xhimeracoin
      # can :manage, ::Withdraws::Xarucoin
      # can :manage, ::Withdraws::Rupayacoin
      # can :manage, ::Withdraws::Ferrumcoin
      # can :manage, ::Withdraws::Peoplecoin
      # can :manage, ::Withdraws::Muncoin
      # can :manage, ::Withdraws::Millioncoin
      # can :manage, ::Withdraws::Alphacoin
      # can :manage, ::Withdraws::Zelcashcoin
      # can :manage, ::Withdraws::Amerocoin
      # can :manage, ::Withdraws::Brofistcoin
      # can :manage, ::Withdraws::Friendshipcoin
      # can :manage, ::Withdraws::Salencoin
      # can :manage, ::Withdraws::Unifiedsocietycoin
      # can :manage, ::Withdraws::Bitspacecoin
      # can :manage, ::Withdraws::Eotcoin
      # can :manage, ::Withdraws::Apolloncoin
      # can :manage, ::Withdraws::Miacoin
      # can :manage, ::Withdraws::Krakencoin
      # can :manage, ::Withdraws::Archimedcoin
      # can :manage, ::Withdraws::Olympiccoin
      # can :manage, ::Withdraws::Onzcoin
      # can :manage, ::Withdraws::Agenacoin
      # can :manage, ::Withdraws::Corezcoin
      # can :manage, ::Withdraws::Enixtcoin
      # can :manage, ::Withdraws::Stannumcoin
      # can :manage, ::Withdraws::Quazcoin
      # can :manage, ::Withdraws::Scrivcoin
      # can :manage, ::Withdraws::Ethfcoin
      # can :manage, ::Withdraws::Arepacoin
      # can :manage, ::Withdraws::Sub1xcoin
      # can :manage, ::Withdraws::Cheesecoin
      # can :manage, ::Withdraws::Jiyocoin
      # can :manage, ::Withdraws::Pyrocoin
      # can :manage, ::Withdraws::Rovercoin
      # can :manage, ::Withdraws::Citruscoin
      # can :manage, ::Withdraws::Xeoncoin
      # can :manage, ::Withdraws::Edollarcoin
      # can :manage, ::Withdraws::Curiumcoin
      # can :manage, ::Withdraws::Needlecoin
      # can :manage, ::Withdraws::Zaliascoin
      # can :manage, ::Withdraws::Protoncoin
      # can :manage, ::Withdraws::Kraitcoin
      # can :manage, ::Withdraws::Alphanodecoin
      # can :manage, ::Withdraws::Bcpcoin
      # can :manage, ::Withdraws::Xumacoin
      # can :manage, ::Withdraws::Idapaycoin
      # can :manage, ::Withdraws::Unifycoin
      # can :manage, ::Withdraws::Andcoin
      # can :manage, ::Withdraws::Thevigcoin
      # can :manage, ::Withdraws::Pepegoldcoin
      # can :manage, ::Withdraws::Vizzotopcoin
      # can :manage, ::Withdraws::Monsterbitcoin
      # can :manage, ::Withdraws::Lunexcoin
      # can :manage, ::Withdraws::Prufuscoin
      # can :manage, ::Withdraws::Wantcoin
      # can :manage, ::Withdraws::Mmocoin
      # can :manage, ::Withdraws::Carebitcoin
      # can :manage, ::Withdraws::Xt3chcoin
      # can :manage, ::Withdraws::Btcfcoin
      # can :manage, ::Withdraws::Zcorecoin
      # can :manage, ::Withdraws::Solariumcoin
      # can :manage, ::Withdraws::Aevocoin
      # can :manage, ::Withdraws::Platopaycoin
      # can :manage, ::Withdraws::Yobacoin
      # can :manage, ::Withdraws::Nibexcoin
      # can :manage, ::Withdraws::Elliotcoin
      # can :manage, ::Withdraws::Kingstoncoin
      # can :manage, ::Withdraws::Akencoin
      # can :manage, ::Withdraws::Akromacoin
      # can :manage, ::Withdraws::Ravencoin
      # can :manage, ::Withdraws::Posqcoin
      # can :manage, ::Withdraws::Radiuscoin
      # can :manage, ::Withdraws::Discountcoin
      # can :manage, ::Withdraws::Variuscoin
      # can :manage, ::Withdraws::Cyphercoin
      # can :manage, ::Withdraws::Blooddonationcoin
      # can :manage, ::Withdraws::Innoketcoin
      # can :manage, ::Withdraws::Bitsolocoin
      # can :manage, ::Withdraws::Bffcoin
      # can :manage, ::Withdraws::Tobacoin
      # can :manage, ::Withdraws::Alpenschillingcoin
      # can :manage, ::Withdraws::Relariumcoin
      # can :manage, ::Withdraws::Vizehcoin
      # can :manage, ::Withdraws::Rampantcoin
      # can :manage, ::Withdraws::Cubiscoin
      # can :manage, ::Withdraws::Examinationcoin
      # can :manage, ::Withdraws::Strayacoin
      # can :manage, ::Withdraws::Slashcoin
      # can :manage, ::Withdraws::Adirondackcoin
      # can :manage, ::Withdraws::Hightemperaturecoin
      # can :manage, ::Withdraws::Frozencoin
      # can :manage, ::Withdraws::Elbruscoin
      # can :manage, ::Withdraws::Xerumcashcoin
      # can :manage, ::Withdraws::Kickerroomcoin
      # can :manage, ::Withdraws::Allcoingurucoin
      # can :manage, ::Withdraws::Versuscoin
      # can :manage, ::Withdraws::Heracoin
      # can :manage, ::Withdraws::Blazariumcoin
      # can :manage, ::Withdraws::Itisnetworkcoin
      # can :manage, ::Withdraws::Hppcoin
      # can :manage, ::Withdraws::Designcoin
      # can :manage, ::Withdraws::Demoscoin
      # can :manage, ::Withdraws::Jagaricoinr
      #withdraw

    end
  end
end

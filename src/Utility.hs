{-# LANGUAGE OverloadedStrings #-}

module Utility
    ( walletPubKeyHash
    , wallet
    , companyPkh
    , companyPkhReal
    , mp
    , mpReal
    , mpMainnet ) where

import           Plutus.V1.Ledger.Crypto (PubKeyHash)
import           Wallet.Emulator.Wallet (Wallet, knownWallet, walletPubKeyHash)

import           Prelude hiding ((.))

import Market.Types  (MarketParams(..))

wallet :: Integer -> Wallet
wallet = knownWallet

companyPkh :: PubKeyHash
companyPkh = walletPubKeyHash $ wallet 1


mp :: MarketParams
mp = MarketParams companyPkh



companyPkhReal :: PubKeyHash
companyPkhReal = "90e8e3e451b99d57aa2f6c516c0fbb453b1501d88e2dbfa5c73570ef"


mpReal :: MarketParams
mpReal = MarketParams companyPkhReal




companyPkhMainnet :: PubKeyHash
companyPkhMainnet = "90e8e3e451b99d57aa2f6c516c0fbb453b1501d88e2dbfa5c73570ef"


mpMainnet :: MarketParams
mpMainnet = MarketParams companyPkhMainnet
use dojo::prelude::*;
use starknet::{ContractAddress, get_block_timestamp};

//  Constants 
const ENTRY_FEE: u128 = // 100 LORDS 
const H_o_S_PERCENTAGE: u8 = 20;
const DIVIDEND_POOL_PERCENTAGE: u8 = 30;
const RUG_POOL_PERCENTAGE: u8 = 50;
const AIRDROP_INTERVAL: u64 = 86400; // 24 hours in seconds

//  Components 
#[derive(Component, Copy, Drop, Serde, SerdeLen)]
struct GameState {
    #[key]
    game_id: u32,
    player: ContractAddress,
    bet_amount: u128,
    is_completed: bool,
    won: bool,
    timestamp: u64,
}

#[derive(Component, Copy, Drop, Serde, SerdeLen)]
struct PlayerStats {
    #[key]
    player: ContractAddress,
    games_played: u32,
    games_won: u32,
    total_wagered: u128,
    last_airdrop_claim: u64,
}

{

    
}
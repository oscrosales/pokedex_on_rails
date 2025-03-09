# README

A Pokédex containing data on the original 151 Pokémon. Includes types and abilities introduced in later generations. Styled using Bulma CSS Framework and seeded with PokéAPI v2.

## Models

### Ability Model

- id (auto increment PK)
- name:string
- effect:text
- Has many to many with Pokemon

### Type Model

- id (auto increment PK)
- name:string
- Has many to many with Pokemon

### Pokemon Model

- id (auto increment PK)
- name:string
- height:integer
- weight:integer
- hp:integer
- attack:integer
- defense:integer
- spatk:integer
- spdef:integer
- speed:integer
- sprite:string
- Has many to many with Type
- Has many to many with Ability

### Species Model

- id (auto increment PK)
- name:string
- flavor_text:string
- genus:string
- pokemon_id

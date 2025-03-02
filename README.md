# README

A Pokédex containing data on the original 151 Pokémon.

## Models

### Ability Model

- id (auto increment PK)
- name:string
- effect:text
- Many to many with Pokemon

### Type Model

- id (auto increment PK)
- name:string
- Many to many with Pokemon

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
- species_id
- Many to many with Ability
- Many to many with Type

### Species Model

- id (auto increment PK)
- name:string
- flavor_text:string
- genus:string
- pokemon_id

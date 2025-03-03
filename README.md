# README

A Pokédex containing data on the original 151 Pokémon.

## Models

### Ability Model

- id (auto increment PK)
- name:string
- effect:text
- pokemon_id

### Type Model

- id (auto increment PK)
- name:string
- Part of a many to many with Pokemon

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
- Part of a many to many with Type
- Part of a many to many with Ability

### Species Model

- id (auto increment PK)
- name:string
- flavor_text:string
- genus:string
- pokemon_id

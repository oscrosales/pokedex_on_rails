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
- pokemon_id

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
- Has one species
- Has many types
- Has many abilities

### Species Model

- id (auto increment PK)
- name:string
- flavor_text:string
- genus:string
- pokemon_id

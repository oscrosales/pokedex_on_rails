# README

A Pokédex containing data on the original 151 Pokémon. Includes abilities introduced in Generation III.

## Models

### Ability Model

- id (auto increment PK)
- name:string
- effect:text

### Type Model

- id (auto increment PK)
- name:string

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
- Has many types
- Has many abilities

### Species Model

- id (auto increment PK)
- name:string
- flavor_text:string
- genus:string

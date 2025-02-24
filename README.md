# README
A Pokédex containing data on the original 151 Pokémon.

## Models
Ability Model
  - id (auto increment PK)
  - ability_id:integer
  - name:string
  - effect:text

Type Model
  - id (auto increment PK)
  - type_id:integer
  - name:string

Pokemon Model
  - id (auto increment PK)
  - pokemon_id:integer
  - name:string
  - description:text
  - order:integer
  - height:integer
  - weight:integer
  - hp:integer
  - attack:integer
  - defense:integer
  - spatk:integer
  - spdef:integer
  - speed:integer
  - type_id
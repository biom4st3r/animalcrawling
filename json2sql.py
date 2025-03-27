personalities = []
species = []

OUT = 'LoadVillager.sql'

OF = open(OUT,'w+')
for path in data:
  p = data[path].get('personality','UNK')
  s = data[path].get('species', 'UKN')
  name = data[path].get('name','UKN')
  if p not in personalities:
   personalities.append(p)
   OF.write(f'INSERT INTO Villagerpity (vp_type) VALUES (\'{p}\');')
  if s not in species:
   species.append(s)
   OF.write(f'INSERT INTO Villagerses (vs_spec) VALUES (\'{s}\');')
  OF.write(f'INSERT INTO Villager (v_name,vs_id,vp_id) VALUES (\'{name}\',(SELECT vs_id FROM Villagerses WHERE vs_spec = \'{s}\'),(SELECT vp_id FROM Villagerpity WHERE vp_type = \'{p}\'))')

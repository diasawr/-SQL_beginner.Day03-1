INSERT INTO person_order(id, person_id,menu_id,order_date)
VALUES((SELECT MAX(po.id) + 1 FROM person_order po),   (SELECT p.id FROM person p
                     WHERE p.name = 'Denis'), (SELECT m.id FROM menu m
                     WHERE m.pizza_name = 'sicilian pizza'), '2022-02-24' ),
         ((SELECT MAX(po.id) + 2 FROM person_order po),   (SELECT p.id FROM person p
                     WHERE p.name = 'Irina'), (SELECT m.id FROM menu m
                     WHERE m.pizza_name = 'sicilian pizza'), '2022-02-24' )

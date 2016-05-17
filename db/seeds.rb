# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Category.create! id: 1, name: "Accesorios"
Category.create! id: 2, name: "Alimentación"
Category.create! id: 3, name: "Bolsos"
Category.create! id: 4, name: "Calzado Hombre"
Category.create! id: 5, name: "Calzado Mujer"
Category.create! id: 6, name: "Iluminación"
Category.create! id: 7, name: "Mobiliario"
Category.create! id: 8, name: "Ropa Mujer"
Category.create! id: 9, name: "Ropa Hombre"

Cause.delete_all
Cause.create! id: 1, name: "Medio Ambiente", description: "Buscamos promover el cuidado del medio ambiente a través de la recuperación y reuso de materiales reciclables."
Cause.create! id: 2, name: "Generación Ingresos", description: "Apoyamos los emprendimientos enfocados en la generación de ingresos para grupos poblacionales en situación del vulnerabilidad, como víctimas de conflicto, madres cabeza de familia, poblaciones indígenas, entre otras."
Cause.create! id: 3, name: "Consumo Local", description: "Resaltamos la importancia del consumo local, por lo que visibilizamos los proyectos que promueven el mismo."

Manofacturer.delete_all
Manofacturer.create! id: 1, name: "Ecocalzer"
Manofacturer.create! id: 2, name: "Err3 Diseño"
Manofacturer.create! id: 3, name: "La Madriguera"
Manofacturer.create! id: 4, name: "ONA"
Manofacturer.create! id: 5, name: "SiembraViva"
Manofacturer.create! id: 6, name: "VerdeAzul"


Product.delete_all
Product.create! id: 1, name: "Acaí en polvo", model: "1", description: "Acaí en polvo, hecho por campesinos locales.", price: 10000.00, discount: 0, manofacturer_id: 5, category_id: 2, cause_id: 3, active: true
Product.create! id: 2, name: "Amaranto Orgánico", model: "1", description: "Amaranto Orgánico, hecho por campesinos locales.", price: 13000.00, discount: 0, manofacturer_id: 5, category_id: 2, cause_id: 3, active: true
Product.create! id: 3, name: "Ancheta Árabe", model: "1", description: "Ancheta que incluye pan áreabe y es producida por campesinos locales.", price: 25000.00, discount: 0, manofacturer_id: 5, category_id: 2, cause_id: 3, active: true
Product.create! id: 4, name: "Ancheta Italiana", model: "1", description: "Ancheta Italiana que incluye Pesto producida por campesinos locales.", price: 23000.00, discount: 0, manofacturer_id: 5, category_id: 2, cause_id: 3, active: true
Product.create! id: 5, name: "Kit Café", model: "1", description: "Kit que incluye café de alta calidad Pegamino y tasas.", price: 30000.00, discount: 0, manofacturer_id: 5, category_id: 2, cause_id: 3, active: true
Product.create! id: 6, name: "Kit Desayuno Liviano", model: "1", description: "Kit con almendras, yougurt y frutas frescas.", price: 30000.00, discount: 0, manofacturer_id: 5, category_id: 2, cause_id: 3, active: true
Product.create! id: 7, name: "Baletas Ecologicas", model: "1", description: "Baletas realizadas con fique, todas las tallas y diseños.", price: 100000.00, discount: 0, manofacturer_id: 1, category_id: 5, cause_id: 1, active: true
Product.create! id: 8, name: "Bolso Ecológico", model: "1", description: "Bolsos realizados con fique, diferentes diseños.", price: 80000.00, discount: 0, manofacturer_id: 1, category_id: 3, cause_id: 1, active: true
Product.create! id: 9, name: "Botas Ecológicas", model: "1", description: "Botas realizadas con fique, todas las tallas y diferentes diseños.", price: 130000.00, discount: 0, manofacturer_id: 1, category_id: 5, cause_id: 1, active: true
Product.create! id: 10, name: "Tacones Plataforma", model: "1", description: "Tacones Plataforma hechos con fique, todas las tallas y diferentes diseños.", price: 110.000, discount: 0, manofacturer_id: 1, category_id: 5, cause_id: 1, active: true
Product.create! id: 11, name: "Tennis Hombre", model: "1", description: "Tennis para hombre hechos con fique, todas las tallas y diferentes diseños.", price: 90000.00, discount: 0, manofacturer_id: 1, category_id: 4, cause_id: 1, active: true
Product.create! id: 12, name: "Lámpara LEDs", model: "1", description: "Lámpara hecha con botellas de vino recuperadas e iluminación LED", price: 50000.00, discount: 0, manofacturer_id: 2, category_id: 6, cause_id: 1, active: true
Product.create! id: 13, name: "Bolso Ecológico", model: "1", description: "Bolso realizado con material PET para refrigerar", price: 40000.00, discount: 0, manofacturer_id: 2, category_id: 3, cause_id: 1, active: true
Product.create! id: 14, name: "PortaCelular", model: "1", description: "PortaCelular hecho con residuos de madera.", price: 35000.00, discount: 0, manofacturer_id: 2, category_id: 1, cause_id: 1, active: true
Product.create! id: 15, name: "Reloj de Pared", model: "1", description: "Reloj de Pared realizado con residuos de disco de Acetato.", price: 65000.00, discount: 0, manofacturer_id: 2, category_id: 1, cause_id: 1, active: true
Product.create! id: 16, name: "Reloj de Pared", model: "2", description: "Reloj de Pared realizado con residuos de disco de Acetato.", price: 65000.00, discount: 0, manofacturer_id: 2, category_id: 1, cause_id: 1, active: true
Product.create! id: 17, name: "Reloj de Pared", model: "3", description: "Reloj de Pared realizado con residuos de disco de Acetato.", price: 65000.00, discount: 0, manofacturer_id: 2, category_id: 1, cause_id: 1, active: true
Product.create! id: 18, name: "Base de Cama", model: "1", description: "Base de Cama realizada con Estibas de Madera.", price: 300000.00, discount: 0, manofacturer_id: 3, category_id: 7, cause_id: 1, active: true
Product.create! id: 19, name: "Biblioteca", model: "1", description: "Biblioteca realizada con estibas de Madera.", price: 250000.00, discount: 0, manofacturer_id: 3, category_id: 7, cause_id: 1, active: true
Product.create! id: 20, name: "Comedor", model: "1", description: "Comedor realizado con estibas de Madera.", price: 500000.00, discount: 0, manofacturer_id: 3, category_id: 7, cause_id: 1, active: true
Product.create! id: 21, name: "Repisa", model: "1", description: "Repisa realizada con estibas de Madera.", price: 80000.00, discount: 0, manofacturer_id: 3, category_id: 7, cause_id: 1, active: true
Product.create! id: 22, name: "Arbol de Navidad", model: "1", description: "Arbol de Navidad realizado con estibas de madera.", price: 250000.00, discount: 0, manofacturer_id: 3, category_id: 7, cause_id: 1, active: true
Product.create! id: 23, name: "Mesa de Noche", model: "1", description: "Mesa de noche realizada con estibas de madera.", price: 180000.00, discount: 0, manofacturer_id: 3, category_id: 7, cause_id: 1, active: true
Product.create! id: 24, name: "Cuna para Bebés", model: "1", description: "Cuna realizada con estibas de madera.", price: 340000.00, discount: 0, manofacturer_id: 3, category_id: 7, cause_id: 1, active: true
Product.create! id: 25, name: "Chaqueta Zinc + Pantalón Clivia", model: "1", description: "Ropa realizada con elementos reciclajes y diseños exclusivos.", price: 200000.00, discount: 0, manofacturer_id: 4, category_id: 8, cause_id: 1, active: true
Product.create! id: 26, name: "Vestido", model: "1", description: "Vestido Rivka hecho con elementos reciclables.", price: 130000.00, discount: 0, manofacturer_id: 4, category_id: 8, cause_id: 1, active: true
Product.create! id: 27, name: "Vestido", model: "2", description: "Vestido Ebano hecho con elementos reciclables.", price: 130000.00, discount: 0, manofacturer_id: 4, category_id: 8, cause_id: 1, active: true
Product.create! id: 28, name: "Vestido", model: "3", description: "Vestido Alfiz hecho con elementos reciclables.", price: 130000.00, discount: 0, manofacturer_id: 4, category_id: 8, cause_id: 1, active: true
Product.create! id: 29, name: "Lámpara Visos", model: "1", description: "Lámpara elegante para tu habitación realizada con elementos reciclables.", price: 45000.00, discount: 0, manofacturer_id: 6, category_id: 2, cause_id: 2, active: true
Product.create! id: 30, name: "Lámpara Oficina", model: "1", description: "Lámpara elegante para tu oficina realizada con elementos reciclables.", price: 53000.00, discount: 0, manofacturer_id: 6, category_id: 2, cause_id: 2, active: true
Product.create! id: 31, name: "Bombillas Colgantes", model: "1", description: "Bombillas Colgantes exclusivo diseño y realizada con elementos reciclables.", price: 29000.00, discount: 0, manofacturer_id: 6, category_id: 2, cause_id: 2, active: true
Product.create! id: 32, name: "Lámpara Colgante", model: "1", description: "Lámpara conlgante con diseño exclusivo para tu hogar, realizada con elementos reciclables.", price: 34000.00, discount: 0, manofacturer_id: 6, category_id: 2, cause_id: 2, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

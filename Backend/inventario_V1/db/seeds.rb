5.times do
	# IdentiEquipo.create({  #nombre de los modelos.create ({...})
	# 	marca: Faker::Company.name,
	# 	modelo: Faker::Device.platform,
	# 	serie: Faker::Device.serial,
	# 	inventario: Faker::Device.build_number,
	# 	placa: Faker::Device.serial
	# 	})

	 Contrato.create({
	 	contrato: Faker::Commerce.product_name,
	 	fecha_contrato: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)
	 	})
	
	# Solicitude.create({
	# 	nombre_repor: Faker::Lorem.words,
	# 	area: Faker::Lorem.words,
	# 	ubicacion: Faker::Nation.capital_city,
	# 	fecha_soli: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)

	# 	})

	# RazonSoliServi.create({
	# 	razon_soli_servi: Faker::Lorem.sentence
	# 	})

	# RecibidoAreaEquipo.create({
	# 	recibido_por: Faker::Name.name,
	# 	fecha_recibido: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
	# 	persona_asign: Faker::Name.name 
	# 	})

	# DiagnosticoFalla.create ({
	# 	diagnostico: Faker::Lorem.sentence 


	# 	})

	# LaborEjecutada.create ({
	# 	labor: Faker::Lorem.sentence
	# 	})
	
	# EntregaEquipo.create ({
	# 	equi_opera: Faker::Boolean.boolean,
	# 	equi_fuera: Faker::Boolean.boolean,
	# 	entregado: Faker::Boolean.boolean,
	# 	mante_preve: Faker::Boolean.boolean,
	# 	mante_correc: Faker::Boolean.boolean,
	# 	calibracion: Faker::Boolean.boolean

	# 	})

	# RecoObser.create ({
	# 	recomen_observa: Faker::Lorem.sentence 
	# 	})

	# RepuesMateri.create ({
	# 	item: Faker::Book.title,
	# 	descripcion: Faker::Book.genre,
	# 	unidad: Faker::Number.between(1, 10),
	# 	cantidad: Faker::Number.between(1, 10)
	# 	})

end
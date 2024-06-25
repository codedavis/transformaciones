CREATE TABLE Pelicula(
			nombre Text NOT NULL,
			url Text NOT NULL,
			estado Boolean NOT NULL,
			id Integer NOT NULL,
	
	admin Integer NOT NULL,
	CONSTRAINT admin_fk FOREIGN KEY (admin)
	REFERENCES Admin (id),
	
	CONSTRAINT pelicula_pkey PRIMARY KEY (id)
);

CREATE TABLE Reserva(
			fecha Float NOT NULL,
			costo Float NOT NULL,
			id Integer NOT NULL,
	
	usuario Integer NOT NULL,
	CONSTRAINT usuario_fk FOREIGN KEY (usuario)
	REFERENCES Usuario (id),
	
	pelicula Integer NOT NULL,
	CONSTRAINT pelicula_fk FOREIGN KEY (pelicula)
	REFERENCES Pelicula (id),
	
	CONSTRAINT reserva_pkey PRIMARY KEY (id)
);

CREATE TABLE Usuario(
			identificacion Text NOT NULL,
			nombres Text NOT NULL,
			apellidos Text NOT NULL,
			id Integer NOT NULL,
	
	tipoidentificacion Integer NOT NULL,
	CONSTRAINT tipoidentificacion_fk FOREIGN KEY (tipoidentificacion)
	REFERENCES TipoIdentificacion (id),
	
	CONSTRAINT usuario_pkey PRIMARY KEY (id)
);

CREATE TABLE Pago(
			numero Text NOT NULL,
			fecha Date NOT NULL,
			monto Float NOT NULL,
			estado Text NOT NULL,
			id Integer NOT NULL,
	
	reserva Integer NOT NULL,
	CONSTRAINT reserva_fk FOREIGN KEY (reserva)
	REFERENCES Reserva (id),
	
	CONSTRAINT pago_pkey PRIMARY KEY (id)
);

CREATE TABLE TipoIdentificacion(
			codigo Text NOT NULL,
			nombre Text NOT NULL,
			descripcion Text NOT NULL,
			id Integer NOT NULL,
	
	
	CONSTRAINT tipoidentificacion_pkey PRIMARY KEY (id)
);

CREATE TABLE Admin(
			usuario Text NOT NULL,
			clave Text NOT NULL,
			id Integer NOT NULL,
	
	usuario Integer NOT NULL,
	CONSTRAINT usuario_fk FOREIGN KEY (usuario)
	REFERENCES Usuario (id),
	
	CONSTRAINT admin_pkey PRIMARY KEY (id)
);


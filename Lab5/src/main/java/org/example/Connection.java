package org.example;

import alice.tuprolog.Prolog;
import alice.tuprolog.SolveInfo;
import alice.tuprolog.Theory;

import java.io.InputStream;

public class Connection {
    private final Prolog engine = new Prolog();

    public Connection() throws Exception {
        InputStream in = getClass().getResourceAsStream("/calculo.pl");
        if (in == null) {
            throw new IllegalStateException("No se encontró el archivo calculo.pl en resources");
        }
        engine.setTheory(new Theory(in));
    }

    public String consultar(String expresion) throws Exception {
        SolveInfo info = engine.solve("calcular(" + expresion + ", R).");
        return info.isSuccess() ? info.getTerm("R").toString() : "Sin solución para esa expresión";
    }
}
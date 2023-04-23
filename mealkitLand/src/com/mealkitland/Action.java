package com.mealkitland;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

public interface Action {
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws SerialException,IOException;
}

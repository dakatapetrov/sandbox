/*
 * Finalize.java
 * 
 * Copyright 2012 Yordan Petrov <dakatapetrov@gmail.com>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */


class Fdemo {
	long x;
	
	Fdemo(long i) {
		x = i;
	}
	
	protected void finalize() {
		System.out.println("Finalizing " + x);
	}
	
	void generator (long i) {
		Fdemo o = new Fdemo(i);
	}
}

public class Finalize {
	
	public static void main (String args[]) {
		long count ;
		
		Fdemo ob = new Fdemo(0);
		
		for (count = (long) 1; count < (long) 1000000; count++) ob.generator(count);
	}
}


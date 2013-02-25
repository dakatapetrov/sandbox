/*
 * MetToInch.java
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


public class MetToInch {
	
	public static void main (String args[]) {
		double meters;
		int inches;
		int counter;
		
		counter = 0;
		for (inches = 1; inches <= 1200; inches++) {
			meters = inches / 39.27;
			System.out.println(inches + " inches is " + meters + 
				" meters.");
			
			counter++;
			if (counter == 12) {
				System.out.println();
				counter = 0;
			}
		}
	}
}


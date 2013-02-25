/*
 * SADouble.java
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


public class SADouble {
	
	public static void main (String args[]) {
		double a[] = {3.14, 5.37, 12.987, 1.001, 4.43, 7.9, 2.22,
			3.33, 0.7, 8.09}, sa = 0;
			
		for (int i = 0; i < a.length; i++)
			sa += a[i];
		sa /= a.length;
		
		System.out.println("Srednta aritmetichna stoinost e: " + sa);
	}
}


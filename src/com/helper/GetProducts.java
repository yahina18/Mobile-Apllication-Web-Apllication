package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.beans.ProductBean;

public class GetProducts {
	
	ProductBean[] product = null;
	public ProductBean[] getProduct(int start, int end)
	{ 
		try
		{
		Connection conn = new GetConnection().getConnection();
		String connstr = "select * from products limit "+start+","+end;
		PreparedStatement ps = conn.prepareStatement(connstr);
		ResultSet rs = ps.executeQuery();
		product = new ProductBean[3];
    
        int i = 0;
		while(rs.next() && i<=2)
		{
			product[i] = new ProductBean();
	        product[i].setCompany(rs.getString("company"));
	        product[i].setModel(rs.getString("model"));
	        product[i].setPrice(rs.getInt("price"));
	        product[i].setFeature(rs.getString("features"));
	        product[i].setImage(rs.getString("image"));
	        i++;
		}
	    }
		catch(Exception e)
		{
			System.out.println(e);
		}
		return product;
	}

}

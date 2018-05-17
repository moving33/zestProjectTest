package com.zest.web.dbTest;


import org.junit.Test;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class DbTest {
	
	
	@Test
	//Amazon DB 연결 테스트
	public void dbTest() throws Exception {
		
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		//BasicDataS
		
		dataSource.setUrl("아마존 URL 주소");
		dataSource.setDriverClassName(oracle.jdbc.driver.OracleDriver.class.getName());
		dataSource.setUsername("USERNAME");
		dataSource.setPassword("Passwd");
		
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();		
		
		Resource resource = new ClassPathResource("myBatis/myBatis-config.xml");
		factoryBean.setConfigLocation(resource);	
		factoryBean.setDataSource(dataSource);
		
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(factoryBean.getObject());
				
		int result = sqlSessionTemplate.selectOne("com.mybatis.test.selectCount");
		sqlSessionTemplate.close();
		System.out.println("결과 : "+result);		
	}
	
	
}

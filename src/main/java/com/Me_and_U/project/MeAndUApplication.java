package com.Me_and_U.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;

@SpringBootApplication
@PropertySources({
@PropertySource(value="file:c:/springWorkspace/configure.properties", ignoreResourceNotFound=true),
@PropertySource(value="file:/usr/local/project/properties/configure.properties", ignoreResourceNotFound=true)
})
@ComponentScan(basePackages = {"com.Me_and_U.project"})
@MapperScan(basePackages = {"com.Me_and_U.project"})
public class MeAndUApplication {

	public static void main(String[] args) {
		SpringApplication.run(MeAndUApplication.class, args);
	}

}

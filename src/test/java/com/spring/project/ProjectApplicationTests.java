package com.spring.project;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.stream.Stream;


class ProjectApplicationTests {

	@Test
	void contextLoads() {
		//21421
		String[] arr = {"1","2"};
		Stream<String> arr1 = Stream.of(arr);
		arr1.forEach(System.out::print);
		System.out.println();
		Arrays.stream(arr).forEach(System.out::print);
		System.out.println();

		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i]);
			System.out.print("\t");
		}
	}

}

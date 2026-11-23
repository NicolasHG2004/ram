all:
	$(MAKE) -C ../tinytapeout cocotb_openram
	find ../tinytapeout -maxdepth 3 -name "results.xml" -exec cp {} results.xml \;

clean:
	rm -f results.xml
	rm -rf ../tinytapeout/sim_build ../tinytapeout/build

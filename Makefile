RESUMENAME=sargis_yonan_resume
BUILD_SYSTEM=xelatex

all : resume copy open

resume : $(RESUMENAME).tex
	$(BUILD_SYSTEM) $(RESUMENAME).tex

open : $(RESUMENAME).pdf
	open $(RESUMENAME).pdf

copy : $(RESUMENAME).pdf
	cp $(RESUMENAME).pdf ../$(RESUMENAME).pdf

clean:
	rm $(RESUMENAME).aux $(RESUMENAME).log $(RESUMENAME).out $(RESUMENAME).pdf
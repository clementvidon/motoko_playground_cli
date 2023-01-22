COMPILER	:= \
	$$(dfx cache show)/moc \
	--package base $$(dfx cache show)/base \
	-r

SRC 		:= main.mo

run:
	$(COMPILER) $(SRC)

.SILENT:

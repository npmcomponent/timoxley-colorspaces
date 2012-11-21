
build: components colorspaces.js
	@component build --dev

components: component.json
	@component install --dev

colorspaces.js: colorspaces.coffee
	@coffee --compile colorspaces.coffee

clean:
	rm -fr build components colorspaces.js

.PHONY: clean

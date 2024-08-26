.PHONY: clean update update-tachyons

NPM := npm
NPM_BIN := ./node_modules/.bin
TACHYONS_SRC := ./node_modules/tachyons/css/tachyons.css
TACHYONS_DEST := _extensions/tachyons/tachyons.css
TACHYONS_LUA := _extensions/tachyons/tachyons.lua

all: $(TACHYONS_DEST)
update: clean update-tachyons all

# Install tachyons using npm and copy to destination
$(TACHYONS_DEST): $(TACHYONS_SRC)
	@mkdir -p $(dir $(TACHYONS_DEST))
	cp $< $@
	@echo "Patching tachyons.css for quarto"
	@cat tachyons-quarto-patch.css >> $@
	@VERSION=$$(node -p "JSON.parse(require('fs').readFileSync('package-lock.json')).packages['node_modules/tachyons'].version"); \
	  echo "Updating version in $(TACHYONS_LUA) to $${VERSION}"; \
	  sed -i.bak -e 's/version = "[^"]*"/version = "'$$VERSION'"/' $(TACHYONS_LUA) && rm $(TACHYONS_LUA).bak

$(TACHYONS_SRC):
	$(NPM) install tachyons

# Clean up installed packages and copied file
clean:
	rm -rf node_modules
	rm -f $(TACHYONS_DEST)

update-tachyons:
	$(NPM) update tachyons

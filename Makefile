# You need to follow ddd-microservice doc to setup private repos
GH_TOKEN?=

asset_manager_url=https://$(GH_TOKEN)@raw.githubusercontent.com/esgi-immo-scanner/ddd-microservices/main/internal/asset-manager/api/asset-manager.yml
bookmarks_url=https://$(GH_TOKEN)@raw.githubusercontent.com/esgi-immo-scanner/ddd-microservices/main/internal/bookmarks/api/bookmarks.yml
search_url=https://$(GH_TOKEN)@raw.githubusercontent.com/esgi-immo-scanner/ddd-microservices/main/internal/search/api/search.yml

%.api:
	curl -s $($*_url) > api/$*.yml
	@openapi-generator-cli generate -g dart \
		--additional-properties pubName=$* \
		--additional-properties pubAuthor=esgi-immo-scanner@gmail.com \
		--additional-properties pubLibrary=$*.api \
		-i api/$*.yml -o lib/api/$* \

.PHONY: test
test:
	@go test -v ./pkg/controller/vaultsecret

# .PHONY: e2e
# e2e:
# 	@operator-sdk

.PHONY: local
local:
	@operator-sdk up local \
		--namespace=testing \
		--operator-flags "--zap-devel"

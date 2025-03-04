devtools:
	@echo "Installing devtools"
	go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

fmt:
	gofumpt -l -w .

check:
	golangci-lint run --build-tags "${BUILD_TAG}" --timeout=20m0s
        
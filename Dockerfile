# escape=`

ARG BASE_IMAGE
ARG BUILD_IMAGE

FROM ${BUILD_IMAGE} AS prep

FROM ${BUILD_IMAGE} AS builder

ARG BUILD_CONFIGURATION

# Create an empty working directory
WORKDIR /build

# Copy remaining source code
COPY src/ ./src/

# Build website with file publish
WORKDIR /build/src/SitecoreBlazorUI
RUN dotnet restore
RUN dotnet publish -c Release -o c:\out\website\ 
FROM ${BASE_IMAGE}

WORKDIR C:\artifacts

# Copy final build artifacts
#COPY --from=builder C:\out\source .\website\
COPY --from=builder C:\out\website\wwwroot .\website\sitecore\shell\client\applications\sitecoreblazorui
COPY --from=builder c:\build\src\web.config.xdt .\transforms\
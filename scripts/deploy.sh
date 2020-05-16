source ./scripts/common/colors.sh
source ./scripts/common/confirm.sh

# CUSTOM_DOMAIN=coreykovalik.com
SURGE_DOMAIN=coreykovalik.surge.sh

function deploy() {
    echo -e "${COLORS_RED}Deleting dist/ ...${COLORS_END}"
    rm -rf dist/

    echo -e "${COLORS_LIGHT_CYAN}Created new, empty dist/${COLORS_END}"
    mkdir dist/

    echo -e "${COLORS_LIGHT_CYAN}Copying over src/ to dist/ ...${COLORS_END}"
    cp -R src/ dist/

    echo -e "${COLORS_GREEN}Deploying to: ${COLORS_WHITE} $1 ${COLORS_END}"
    bash ./scripts/surge.sh ./dist "$SURGE_DOMAIN"
}

if confirm "Are you sure you want to deploy?"; then
    deploy
else
    echo -e "${COLORS_YELLOW}Exiting...${COLORS_END}"
fi

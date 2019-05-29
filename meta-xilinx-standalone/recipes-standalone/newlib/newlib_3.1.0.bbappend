do_configure_prepend_microblaze() {
    # hack for microblaze, which needs xilinx.ld to literally do any linking (its hard coded in its LINK_SPEC)
    export CC="${CC} -L${S}/libgloss/microblaze"
}

do_configure_prepend(){
    export CC_FOR_TARGET="${CC}"
}

# Default recipe to display available commands
default:
    @just --list

# Snap Package build a tarball of the snap content for the
# different parts (rust, hooks)
_snap-package-content:
    tar -czf rust-content.tar.gz Cargo.lock Cargo.toml src/* > /dev/null
    tar -czf hook-content.tar.gz hooks/* > /dev/null

# Cleanup the built tarballs
_snap-package-cleanup:
    rm -rf rust-content.tar.gz hook-content.tar.gz

# Actually do the snapping. Implcitely it uses lxd
_snap:
   snapcraft

snap: _snap-package-content _snap _snap-package-cleanup

package=freetype
$(package)_version=2.6.3
$(package)_download_path=https://download.savannah.gnu.org/releases/freetype
$(package)_file_name=$(package)-$($(package)_version).tar.bz2
$(package)_sha256_hash=533a1ca5d6595793725bca7641d9461a0f00dd1732dded3e4281196f5dd21736

define $(package)_set_vars
  $(package)_config_opts=--without-zlib --without-png --disable-shared --enable-static --with-pic
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef

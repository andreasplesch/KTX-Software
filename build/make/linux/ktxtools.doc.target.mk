# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := ktxtools.doc
### Rules for action "buildKtxtoolsDoc":
quiet_cmd_ktxtools_gyp_ktxtools_doc_target_buildKtxtoolsDoc = ACTION Generating KTX Tools documentation with Doxygen $@
cmd_ktxtools_gyp_ktxtools_doc_target_buildKtxtoolsDoc = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p build/docs; ./runDoxygen -t build/docs/.ktxtoolsdoc_gentimestamp -o build/docs/html ktxtools.doxy

build/docs/.ktxtoolsdoc_gentimestamp: obj := $(abs_obj)
build/docs/.ktxtoolsdoc_gentimestamp: builddir := $(abs_builddir)
build/docs/.ktxtoolsdoc_gentimestamp: TOOLSET := $(TOOLSET)
build/docs/.ktxtoolsdoc_gentimestamp: $(srcdir)/ktxtools.doxy $(srcdir)/runDoxygen $(srcdir)/tools/toktx/toktx.cpp $(srcdir)/tools/ktx2ktx2/ktx2ktx2.cpp FORCE_DO_CMD
	$(call do_cmd,ktxtools_gyp_ktxtools_doc_target_buildKtxtoolsDoc)

all_deps += build/docs/.ktxtoolsdoc_gentimestamp
action_ktxtools_gyp_ktxtools_doc_target_buildKtxtoolsDoc_outputs := build/docs/.ktxtoolsdoc_gentimestamp


### Rules for final target.
# Build our special outputs first.
$(obj).target/ktxtools.doc.stamp: | $(action_ktxtools_gyp_ktxtools_doc_target_buildKtxtoolsDoc_outputs)

# Preserve order dependency of special output on deps.
$(action_ktxtools_gyp_ktxtools_doc_target_buildKtxtoolsDoc_outputs): | 

$(obj).target/ktxtools.doc.stamp: TOOLSET := $(TOOLSET)
$(obj).target/ktxtools.doc.stamp:  FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/ktxtools.doc.stamp
# Add target alias
.PHONY: ktxtools.doc
ktxtools.doc: $(obj).target/ktxtools.doc.stamp

# Add target alias to "all" target.
.PHONY: all
all: ktxtools.doc


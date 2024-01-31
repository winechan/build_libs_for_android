LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := -DANDROID -DWEBP_SWAP_16BIT_CSP

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/src/dec \
        $(LOCAL_PATH)/src/enc \
        $(LOCAL_PATH)/include

LOCAL_MODULE    := libwebp
LOCAL_SRC_FILES :=\
	src/dec/alpha.c \
	src/dec/buffer.c \
	src/dec/frame.c \
	src/dec/idec.c \
	src/dec/io.c \
	src/dec/quant.c \
	src/dec/tree.c \
	src/dec/vp8.c \
	src/dec/vp8l.c \
	src/dec/webp.c \
	src/demux/demux.c \
	src/dsp/alpha_processing.c \
	src/dsp/alpha_processing_sse2.c \
	src/dsp/cpu.c \
	src/dsp/cpu-features.c \
	src/dsp/dec.c \
	src/dsp/dec_clip_tables.c \
	src/dsp/dec_mips32.c \
	src/dsp/dec_neon.c \
	src/dsp/dec_sse2.c \
	src/dsp/enc.c \
	src/dsp/enc_avx2.c \
	src/dsp/enc_mips32.c \
	src/dsp/enc_neon.c \
	src/dsp/enc_sse2.c \
	src/dsp/lossless.c \
	src/dsp/lossless_mips32.c \
	src/dsp/lossless_neon.c \
	src/dsp/lossless_sse2.c \
	src/dsp/upsampling.c \
	src/dsp/upsampling_neon.c \
	src/dsp/upsampling_sse2.c \
	src/dsp/yuv.c \
	src/dsp/yuv_mips32.c \
	src/dsp/yuv_sse2.c \
	src/enc/alpha.c \
	src/enc/analysis.c \
	src/enc/backward_references.c \
	src/enc/config.c \
	src/enc/cost.c \
	src/enc/filter.c \
	src/enc/frame.c \
	src/enc/histogram.c \
	src/enc/iterator.c \
	src/enc/picture.c \
	src/enc/picture_csp.c \
	src/enc/picture_psnr.c \
	src/enc/picture_rescale.c \
	src/enc/picture_tools.c \
	src/enc/quant.c \
	src/enc/syntax.c \
	src/enc/token.c \
	src/enc/tree.c \
	src/enc/vp8l.c \
	src/enc/webpenc.c \
	src/utils/bit_reader.c \
	src/utils/bit_writer.c \
	src/utils/color_cache.c \
	src/utils/filters.c \
	src/utils/huffman.c \
	src/utils/huffman_encode.c \
	src/utils/quant_levels.c \
	src/utils/quant_levels_dec.c \
	src/utils/random.c \
	src/utils/rescaler.c \
	src/utils/thread.c \
	src/utils/utils.c

#LOCAL_SHARED_LIBRARIES := -lz
LOCAL_EXPORT_LDLIBS := -lz
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/.

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)


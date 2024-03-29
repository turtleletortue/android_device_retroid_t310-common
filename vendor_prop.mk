PRODUCT_PROPERTY_OVERRIDES += \
    ro.apex.updatable=true \
    init.userspace_reboot.is_supported=true \
    ro.vendor.ko.mount.point=/mnt/vendor \
    persist.vendor.eng.reset=1 \
    persist.vendor.cam.init.setting=1 \
    persist.vendor.cam.ba.blur.version=6 \
    persist.vendor.cam.fr.blur.version=1 \
    persist.vendor.cam.api.version=0 \
    persist.sys.cam.fast.blur=true \
    persist.vendor.cam.res.bokeh=RES_12M \
    persist.sys.3d.calibraion=1 \
    persist.sys.cam3.type=back_blur \
    persist.sys.cam3.multi.cam.id=2 \
    ro.vendor.camera.dualcamera_cali_enable=1 \
    ro.vendor.camera.dualcamera_cali_time=3 \
    persist.vendor.cam.multicam.cali.veri=1 \
    persist.vendor.cam.opticszoom.cali.mode=0 \
    persist.vendor.cam.3dnr.version=1 \
    persist.sys.cam.3dnr=true \
    persist.vendor.cam.facebeauty.corp=2 \
    persist.vendor.cam.cnr.mode=1 \
    persist.vendor.cam.hdr.cnr.mode=0 \
    persist.vendor.cam.ai.scence.enable=true \
    persist.vendor.cam.wt.enable=0 \
    persist.vendor.cam.faceid.version=1 \
    persist.sys.cam.manual.shutter=true \
    persist.sys.cam.manual.focus=true \
    persist.vendor.cam.ba.portrait.enable=0 \
    persist.vendor.cam.fr.portrait.enable=0 \
    persist.vendor.cam.ultra.wide.enable=0 \
    persist.vendor.cam.night.pro.enable=0 \
    persist.vendor.cam.dv.ba.eispro.enable=1 \
    persist.sys.cam.eois.dc.back=false \
    persist.sys.cam.eois.dc.front=false \
    persist.sys.cam.eois.dv.back=true \
    persist.sys.cam.eois.dv.front=false \
    ro.vendor.sf.lcd_width=54 \
    ro.vendor.sf.lcd_height=96 \
    ro.opengles.version=196610 \
    ro.vendor.audio_tunning.nr=1 \
    persist.vendor.faceid.livenessgrade=2 \
    vendor.cam.hw.framesync.on=0 \
    config.disable_cameraservice=true \
    persist.sys.pq.enabled=0 \
    persist.vendor.modem.log_dest=0 \
    persist.vendor.wcn.log_dest=0 \
    persist.vendor.sys.modemreset=0 \
    persist.vendor.sys.modem.save_dump=0 \
    ro.vendor.modem.dev=/proc/cptl/ \
    ro.vendor.modem.tty=/dev/stty_lte \
    ro.vendor.modem.eth=seth_lte \
    ro.vendor.modem.snd=1 \
    ro.vendor.radio.modemtype=l \
    ro.vendor.modem.diag=/dev/sdiag_lte \
    ro.vendor.modem.log=/dev/slog_lte \
    ro.vendor.modem.loop=/dev/spipe_lte0 \
    ro.vendor.modem.nv=/dev/spipe_lte1 \
    ro.vendor.modem.assert=/dev/spipe_lte2 \
    ro.vendor.modem.fixnv_size=0x100000 \
    ro.vendor.modem.runnv_size=0x120000 \
    persist.vendor.modem.nvp=l_ \
    persist.vendor.modem.l.enable=1 \
    persist.vendor.sys.isfirstboot=1 \
    ro.vendor.sp.log=/dev/slog_pm \
    ro.vendor.ag.log=/dev/audio_dsp_log \
    ro.vendor.ag.pcm=/dev/audio_dsp_pcm \
    ro.vendor.ag.mem=/dev/audio_dsp_mem \
    ro.vendor.keybox.id.value=SPRD \
    ro.crypto.dm_default_key.options_format.version=2 \
    persist.vendor.bsservice.enable=1 \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    drm.service.enabled=true \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24 \
    persist.sys.zram_enabled=1 \
    persist.sys.pwctl.enable=1 \
    persist.sys.pwctl.guru=1 \
    persist.sys.pwctl.appidle=1 \
    persist.sys.pwctl.bgclean=1 \
    persist.sys.pwctl.gps=0 \
    persist.sys.pwctl.wl=0 \
    persist.sys.pwctl.appidle.force=1 \
    persist.sys.pwctl.onlysave=0 \
    persist.sys.pwctl.appstats=0 \
    persist.sys.pwctl.gps.onlysave=0 \
    persist.sys.ss.predict=false \
    persist.sys.ss.hmm=false \
    persist.sys.ss.sr.enable=false \
    persist.sys.ss.enable=false \
    persist.sys.ss.scroll=false \
    persist.sys.ss.track=false \
    persist.sys.ss.scene=false \
    persist.sys.ss.habit=false \
    persist.sys.ss.uhc.enable=false \
    persist.sys.heartbeat.enable=1 \
    persist.sys.power.touch=1 \
    persist.vendor.sys.wcnreset=1 \
    persist.vendor.sys.wcnstate=0 \
    ro.vendor.gnsschip=marlin3lite \
    ro.vendor.wcn.gpschip=marlin3lite \
    ro.vendor.modem.gnss.diag=/dev/slog_gnss \
    ro.vendor.wcn.hardware.product=marlin3_lite \
    ro.vendor.wcn.hardware.etcpath=/vendor/etc \
    ro.bt.bdaddr_path=/data/vendor/bluetooth/btmac.txt \
    persist.bluetooth.a2dp_offload.cap=sbc \
    persist.bluetooth.a2dp_offload.switch=false \
    ro.bluetooth.a2dp_offload.supported=true \
    persist.bluetooth.a2dp_offload.disabled=true \
    ro.vendor.modem.wcn.enable=1 \
    ro.vendor.modem.wcn.diag=/dev/slog_wcn0 \
    ro.vendor.modem.wcn.id=1 \
    ro.vendor.modem.wcn.count=1 \
    ro.control_privapp_permissions=enforce \
    persist.sys.gms=true \
    persist.vendor.aprservice.enabled=0 \
    persist.sys.apr.enabled=0 \
    persist.sys.apr.timechanged=180 \
    persist.sys.apr.rlchanged=800 \
    persist.sys.apr.lifetime=0 \
    persist.sys.apr.reload=0 \
    persist.sys.apr.reportlevel=2 \
    persist.sys.apr.exceptionnode=0 \
    persist.sys.apr.intervaltime=1 \
    persist.sys.apr.testgroup=CSSLAB \
    persist.sys.apr.autoupload=1 \
    persist.vendor.eng.jeita=0 \
    ro.vendor.modem.support=0 \
    ro.incremental.enable=module:/vendor/lib/modules/incrementalfs.ko \
    ro.vendor.product.partitionpath=/dev/block/by-name/ \
    ro.frp.pst=/dev/block/by-name/persist \
    ro.sys.sdcardfs=true \
    persist.sys.sdcardfs=force_on \
    ro.storage.flash_type=2 \
    external_storage.projid.enabled=1 \
    external_storage.casefold.enabled=1 \
    external_storage.sdcardfs.enabled=1 \
    persist.sys.vilte.socket=ap \
    persist.vendor.nhmonitor=on \
    ro.rebootescrow.device=/dev/block/pmem0

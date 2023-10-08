load(":display_driver_build.bzl", "display_module_entry")

display_driver_modules = display_module_entry([":display_drivers_headers"])
module_entry = display_driver_modules.register

#---------- MSM-DRM MODULE -------------------------

module_entry(
      name = "msm_drm",
      config_option = "CONFIG_DRM_MSM",
      path = None,
      config_srcs = {
         "CONFIG_HDCP_QSEECOM": [
            "hdcp/msm_hdcp.c",
            "msm/dp/dp_hdcp2p2.c",
            "msm/sde_hdcp_1x.c",
            "msm/sde_hdcp_2x.c",
         ],
         "CONFIG_DRM_SDE_VM" : [
            "msm/sde/sde_vm_common.c",
            "msm/sde/sde_vm_primary.c",
            "msm/sde/sde_vm_trusted.c",
            "msm/sde/sde_vm_msgq.c",
         ],
         "CONFIG_DRM_MSM_DP" : [
            "msm/dp/dp_altmode.c",
            "msm/dp/dp_parser.c",
            "msm/dp/dp_power.c",
            "msm/dp/dp_catalog.c",
            "msm/dp/dp_catalog_v420.c",
            "msm/dp/dp_catalog_v200.c",
            "msm/dp/dp_aux.c",
            "msm/dp/dp_panel.c",
            "msm/dp/dp_link.c",
            "msm/dp/dp_ctrl.c",
            "msm/dp/dp_audio.c",
            "msm/dp/dp_debug.c",
            "msm/dp/dp_hpd.c",
            "msm/dp/dp_aux_bridge.c",
            "msm/dp/dp_bridge_hpd.c",
            "msm/dp/dp_mst_sim.c",
            "msm/dp/dp_mst_sim_helper.c",
            "msm/dp/dp_gpio_hpd.c",
            "msm/dp/dp_lphw_hpd.c",
            "msm/dp/dp_display.c",
            "msm/dp/dp_drm.c",
            "msm/dp/dp_pll.c",
            "msm/dp/dp_pll_5nm.c",
            "msm/dp/dp_pll_4nm.c",
         ],
         "CONFIG_DRM_MSM_DP_MST" : [
            "msm/dp/dp_mst_drm.c",
         ],
         "CONFIG_DRM_MSM_DP_USBPD_LEGACY" : [
            "msm/dp/dp_usbpd.c",
         ],
         "CONFIG_DRM_MSM_SDE" : [
            "msm/sde/sde_crtc.c",
            "msm/sde/sde_encoder.c",
            "msm/sde/sde_encoder_dce.c",
            "msm/sde/sde_encoder_phys_vid.c",
            "msm/sde/sde_encoder_phys_cmd.c",
            "msm/sde/sde_irq.c",
            "msm/sde/sde_core_irq.c",
            "msm/sde/sde_core_perf.c",
            "msm/sde/sde_rm.c",
            "msm/sde/sde_kms_utils.c",
            "msm/sde/sde_kms.c",
            "msm/sde/sde_plane.c",
            "msm/sde/sde_connector.c",
            "msm/sde/sde_color_processing.c",
            "msm/sde/sde_vbif.c",
            "msm/sde_dbg.c",
            "msm/sde_dbg_evtlog.c",
            "msm/sde_io_util.c",
            "msm/sde_vm_event.c",
            "msm/sde/sde_hw_reg_dma_v1_color_proc.c",
            "msm/sde/sde_hw_color_proc_v4.c",
            "msm/sde/sde_hw_ad4.c",
            "msm/sde/sde_hw_uidle.c",
            "msm/sde_edid_parser.c",
            "msm/sde/sde_hw_catalog.c",
            "msm/sde/sde_hw_cdm.c",
            "msm/sde/sde_hw_dspp.c",
            "msm/sde/sde_hw_intf.c",
            "msm/sde/sde_hw_lm.c",
            "msm/sde/sde_hw_ctl.c",
            "msm/sde/sde_hw_util.c",
            "msm/sde/sde_hw_sspp.c",
            "msm/sde/sde_hw_wb.c",
            "msm/sde/sde_hw_pingpong.c",
            "msm/sde/sde_hw_top.c",
            "msm/sde/sde_hw_interrupts.c",
            "msm/sde/sde_hw_vbif.c",
            "msm/sde/sde_formats.c",
            "msm/sde_power_handle.c",
            "msm/sde/sde_hw_color_processing_v1_7.c",
            "msm/sde/sde_reg_dma.c",
            "msm/sde/sde_hw_reg_dma_v1.c",
            "msm/sde/sde_hw_dsc.c",
            "msm/sde/sde_hw_dsc_1_2.c",
            "msm/sde/sde_hw_vdc.c",
            "msm/sde/sde_hw_ds.c",
            "msm/sde/sde_fence.c",
            "msm/sde/sde_hw_qdss.c",
            "msm/sde_dsc_helper.c",
            "msm/sde_vdc_helper.c",
            "msm/sde/sde_hw_dnsc_blur.c",
            "msm/sde/sde_hw_rc.c",
            "msm/sde/sde_motUtil.c",
         ],
         "CONFIG_DRM_SDE_WB" : [
            "msm/sde/sde_wb.c",
            "msm/sde/sde_encoder_phys_wb.c"
         ],
         "CONFIG_DRM_SDE_RSC" : [
            "msm/sde_rsc.c",
            "msm/sde_rsc_hw.c",
            "msm/sde_rsc_hw_v3.c",
         ],
         "CONFIG_DRM_MSM_DSI" : [
            "msm/dsi/dsi_phy.c",
            "msm/dsi/dsi_pwr.c",
            "msm/dsi/dsi_phy_hw_v3_0.c",
            "msm/dsi/dsi_phy_hw_v4_0.c",
            "msm/dsi/dsi_phy_hw_v5_0.c",
            "msm/dsi/dsi_phy_timing_calc.c",
            "msm/dsi/dsi_phy_timing_v3_0.c",
            "msm/dsi/dsi_phy_timing_v4_0.c",
            "msm/dsi/dsi_pll.c",
            "msm/dsi/dsi_pll_5nm.c",
            "msm/dsi/dsi_pll_4nm.c",
            "msm/dsi/dsi_pll_10nm.c",
            "msm/dsi/dsi_ctrl_hw_cmn.c",
            "msm/dsi/dsi_ctrl_hw_2_2.c",
            "msm/dsi/dsi_ctrl.c",
            "msm/dsi/dsi_catalog.c",
            "msm/dsi/dsi_drm.c",
            "msm/dsi/dsi_display.c",
            "msm/dsi/dsi_panel.c",
            "msm/dsi/dsi_clk_manager.c",
            "msm/dsi/dsi_display_test.c",
            "msm/dsi/dsi_display_mot_ext.c",
         ],
         "CONFIG_DSI_PARSER" : [
            "msm/dsi/dsi_parser.c",
         ],
         "CONFIG_THERMAL_OF" : [
            "msm/msm_cooling_device.c",
          ],
         "CONFIG_DRM_MSM" : [
            "msm/msm_atomic.c",
            "msm/msm_fb.c",
            "msm/msm_drv.c",
            "msm/msm_gem.c",
            "msm/msm_gem_prime.c",
            "msm/msm_gem_vma.c",
            "msm/msm_smmu.c",
            "msm/msm_prop.c",
         ],
         "CONFIG_MSM_SDE_ROTATOR":{
            True: [
               "rotator/sde_rotator_dev.c",
               "rotator/sde_rotator_core.c",
               "rotator/sde_rotator_base.c",
               "rotator/sde_rotator_formats.c",
               "rotator/sde_rotator_util.c",
               "rotator/sde_rotator_io_util.c",
               "rotator/sde_rotator_smmu.c",
               "rotator/sde_rotator_r1_wb.c",
               "rotator/sde_rotator_r1_pipe.c",
               "rotator/sde_rotator_r1_ctl.c",
               "rotator/sde_rotator_r1.c",
               "rotator/sde_rotator_r3.c"],
            "CONFIG_SYNC_FILE":["rotator/sde_rotator_sync.c"],
            "CONFIG_DEBUG_FS":["rotator/sde_rotator_debug.c",
                              "rotator/sde_rotator_r1_debug.c",
                              "rotator/sde_rotator_r3_debug.c"],
            },
      },
      config_deps = {
        "CONFIG_HDCP_QSEECOM" : [
            "//vendor/qcom/opensource/securemsm-kernel:%b_hdcp_qseecom_dlkm"
        ],
        "CONFIG_MSM_MMRM" : [
            "//vendor/qcom/opensource/mmrm-driver:%b_mmrm_driver"
        ],
        "CONFIG_QCOM_SPEC_SYNC" : [
            "//vendor/qcom/opensource/mm-drivers/sync_fence:%b_sync_fence"
        ],
        "CONFIG_QTI_HW_FENCE" : [
            "//vendor/qcom/opensource/mm-drivers/hw_fence:%b_msm_hw_fence"
        ],
        "CONFIG_MSM_EXT_DISPLAY" : [
            "//vendor/qcom/opensource/mm-drivers/msm_ext_display:%b_msm_ext_display"
        ],
       }
)

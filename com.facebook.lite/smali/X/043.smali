.class public abstract LX/043;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5913
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string v0, "simplejni"

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "rsyspollsjni"

    goto/16 :goto_8

    :sswitch_2
    const-string v0, "fb_sqlite_3370200"

    goto/16 :goto_3

    :sswitch_3
    const-string v0, "FBLiteDatabaseRedactor-jni"

    goto/16 :goto_a

    :sswitch_4
    const-string v0, "litersysjni"

    goto/16 :goto_8

    :sswitch_5
    const-string v0, "tls13_socket"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_mns"

    return-object v0

    :sswitch_6
    const-string v0, "sdkthreadidentifierjni"

    goto/16 :goto_a

    :sswitch_7
    const-string v0, "fbsystrace"

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "roi-align-ops-xplat"

    goto/16 :goto_9

    :sswitch_9
    const-string v0, "museumutils"

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "plthooks"

    goto/16 :goto_7

    :sswitch_b
    const-string v0, "livestreaming-rtmp-fblite"

    goto/16 :goto_4

    :sswitch_c
    const-string v0, "distract-common-funcs"

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "comfacebookmillmsystestcommondirectsqlnativeopsjni"

    goto/16 :goto_a

    :sswitch_e
    const-string v0, "jniperflogger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_s_blokscamera_msysinfra"

    return-object v0

    :sswitch_f
    const-string v0, "rsdevxcallagentjni"

    goto/16 :goto_8

    :sswitch_10
    const-string v0, "msysjniinfranosqlite"

    goto/16 :goto_3

    :sswitch_11
    const-string v0, "rsyscallcontextjni"

    goto/16 :goto_8

    :sswitch_12
    const-string v0, "hprofsanitizercommon"

    goto/16 :goto_5

    :sswitch_13
    const-string v0, "rstransportproxies"

    goto/16 :goto_8

    :sswitch_14
    const-string v0, "rsysaudiojni"

    goto/16 :goto_8

    :sswitch_15
    const-string v0, "profilo_mmapbuf"

    goto/16 :goto_7

    :sswitch_16
    const-string v0, "rsysmediastatsjni"

    goto/16 :goto_8

    :sswitch_17
    const-string v0, "rsysgroupexpansionjni"

    goto/16 :goto_8

    :sswitch_18
    const-string v0, "c++_streams"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "rsysoverlayconfigmanagerjni"

    goto/16 :goto_8

    :sswitch_1a
    const-string v0, "rsysturnallocationjni"

    goto/16 :goto_8

    :sswitch_1b
    const-string v0, "mailboxtracehandlerjni"

    goto/16 :goto_a

    :sswitch_1c
    const-string v0, "rsyscallinfojni"

    goto/16 :goto_8

    :sswitch_1d
    const-string v0, "LiteReceiveMetricIntegrationPluginjni"

    goto/16 :goto_a

    :sswitch_1e
    const-string v0, "breakpad-fatal-java-exception-description-handler-jni"

    goto/16 :goto_3

    :sswitch_1f
    const-string v0, "rsysaudiomixerholderjni"

    goto/16 :goto_8

    :sswitch_20
    const-string v0, "rsysvideojni"

    goto/16 :goto_8

    :sswitch_21
    const-string v0, "mailboxclientnotificationsjni"

    goto/16 :goto_a

    :sswitch_22
    const-string v0, "pytorch_jni_lite"

    goto/16 :goto_9

    :sswitch_23
    const-string v0, "LiteMsysDatabaseSchemaDeployer-jninovt"

    goto/16 :goto_a

    :sswitch_24
    const-string v0, "comfacebookmillmsyscommondirectsqlnativeopsjni"

    goto/16 :goto_a

    :sswitch_25
    const-string v0, "rsysdominantspeakerjni"

    goto/16 :goto_8

    :sswitch_26
    const-string v0, "mailboxencryptedbackupsjni"

    goto/16 :goto_a

    :sswitch_27
    const-string v0, "jni-mcpintegration-fblite_integrationPluginRegistry"

    goto/16 :goto_a

    :sswitch_28
    const-string v0, "mailboxlitecommonjni"

    goto/16 :goto_a

    :sswitch_29
    const-string v0, "mailboxmarkinboxseenjni"

    goto/16 :goto_a

    :sswitch_2a
    const-string v0, "rsysstatejni"

    goto/16 :goto_8

    :sswitch_2b
    const-string v0, "proxygen_lib_utils_logging"

    goto/16 :goto_a

    :sswitch_2c
    const-string v0, "msysjniinfra"

    goto/16 :goto_3

    :sswitch_2d
    const-string v0, "msysjniutils"

    goto/16 :goto_3

    :sswitch_2e
    const-string v0, "native_bridge"

    goto/16 :goto_6

    :sswitch_2f
    const-string v0, "mailboxsdktransportjni"

    goto/16 :goto_a

    :sswitch_30
    const-string v0, "fbjitdalvikutils"

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "rsyscamerajni"

    goto/16 :goto_8

    :sswitch_32
    const-string v0, "rsysstreamjni"

    goto/16 :goto_8

    :sswitch_33
    const-string v0, "rsysbasejni"

    goto/16 :goto_8

    :sswitch_34
    const-string v0, "rsysfileloggingjni"

    goto/16 :goto_8

    :sswitch_35
    const-string v0, "dalvikdistract"

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "rsysroomtypecallingjni"

    goto/16 :goto_8

    :sswitch_37
    const-string v0, "msssim"

    goto/16 :goto_5

    :sswitch_38
    const-string v0, "mediastreaming-sessionlog"

    goto/16 :goto_4

    :sswitch_39
    const-string v0, "mailboxtypingindicatorjni"

    goto/16 :goto_a

    :sswitch_3a
    const-string v0, "mnscertificateverifier"

    goto/16 :goto_3

    :sswitch_3b
    const-string v0, "mailboxrtccalleventsjni"

    goto/16 :goto_a

    :sswitch_3c
    const-string v0, "phaser"

    goto/16 :goto_7

    :sswitch_3d
    const-string v0, "profilo_mapping_logger"

    goto/16 :goto_7

    :sswitch_3e
    const-string v0, "profilo_atrace"

    goto/16 :goto_7

    :sswitch_3f
    const-string v0, "mailboxsearchjni"

    goto/16 :goto_a

    :sswitch_40
    const-string v0, "rsysendedjni"

    goto/16 :goto_8

    :sswitch_41
    const-string v0, "rsysvideorenderjni"

    goto/16 :goto_8

    :sswitch_42
    const-string v0, "third-party_libvpx_vpx_asm"

    goto/16 :goto_8

    :sswitch_43
    const-string v0, "openh264v211libdecoderAndroid"

    goto/16 :goto_8

    :sswitch_44
    const-string v0, "storer"

    goto/16 :goto_5

    :sswitch_45
    const-string v0, "profilo_config"

    goto/16 :goto_7

    :sswitch_46
    const-string v0, "profilo_configjni"

    goto/16 :goto_7

    :sswitch_47
    const-string v0, "mem_alloc_marker"

    goto/16 :goto_7

    :sswitch_48
    const-string v0, "hiddenapis2"

    goto/16 :goto_1

    :sswitch_49
    const-string v0, "profilo_mmapbuf_buffer_jni"

    goto/16 :goto_7

    :sswitch_4a
    const-string v0, "rsysdatachanneljni"

    goto/16 :goto_8

    :sswitch_4b
    const-string v0, "rsysturnallocationmsysjni"

    goto/16 :goto_8

    :sswitch_4c
    const-string v0, "webrtc"

    goto/16 :goto_8

    :sswitch_4d
    const-string v0, "MessengerEchoQueriesCQLTestHelpers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_s_msys_rtc"

    return-object v0

    :sswitch_4e
    const-string v0, "mailboxcutoverinternaljni"

    goto/16 :goto_a

    :sswitch_4f
    const-string v0, "xxhash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_s_mediastreaming_rtc"

    return-object v0

    :sswitch_50
    const-string v0, "rsyscallmanagercallclientjni"

    goto/16 :goto_8

    :sswitch_51
    const-string v0, "profilo_stack_unwinder"

    goto/16 :goto_7

    :sswitch_52
    const-string v0, "LiteMsysTableToCqlProcRegistration-jni"

    goto/16 :goto_a

    :sswitch_53
    const-string v0, "mediastreaming"

    goto/16 :goto_4

    :sswitch_54
    const-string v0, "profilo_signal_handler"

    goto/16 :goto_7

    :sswitch_55
    const-string v0, "threadutils-jni"

    goto/16 :goto_1

    :sswitch_56
    const-string v0, "mailboxanalyticsloggingjni"

    goto/16 :goto_a

    :sswitch_57
    const-string v0, "hprofsanitizer"

    goto/16 :goto_5

    :sswitch_58
    const-string v0, "profilo_logger"

    goto/16 :goto_7

    :sswitch_59
    const-string v0, "messengermcppluginregistryintegrationjni"

    goto/16 :goto_a

    :sswitch_5a
    const-string v0, "profilo_jmulti_buffer_logger"

    goto/16 :goto_7

    :sswitch_5b
    const-string v0, "image_quality_utils_lite"

    goto/16 :goto_5

    :sswitch_5c
    const-string v0, "profilo_stacktrace"

    goto/16 :goto_7

    :sswitch_5d
    const-string v0, "messengerqpfilterdispatcherjni"

    goto/16 :goto_a

    :sswitch_5e
    const-string v0, "mediastreaming-transport"

    goto/16 :goto_4

    :sswitch_5f
    const-string v0, "messengerplatformloggertamlistenerjni"

    goto/16 :goto_a

    :sswitch_60
    const-string v0, "LiteAdvancedCryptoTransportReinstallDataProviderPluginjni"

    goto/16 :goto_a

    :sswitch_61
    const-string v0, "mailboxpresencejni"

    goto/16 :goto_a

    :sswitch_62
    const-string v0, "audiograph-native"

    goto/16 :goto_6

    :sswitch_63
    const-string v0, "rsyscryptocontextfactoryjni"

    goto/16 :goto_8

    :sswitch_64
    const-string v0, "mailboxgifjni"

    goto/16 :goto_a

    :sswitch_65
    const-string v0, "mailboxreactionjni"

    goto/16 :goto_a

    :sswitch_66
    const-string v0, "fbacore-jni"

    goto/16 :goto_8

    :sswitch_67
    const-string v0, "LiteMsysDatabaseSchemaDeployer-acg"

    goto/16 :goto_a

    :sswitch_68
    const-string v0, "LiteMsysDatabaseSchemaDeployer-jni"

    goto/16 :goto_a

    :sswitch_69
    const-string v0, "LiteMsysDatabaseSchemaDeployernovt"

    goto/16 :goto_a

    :sswitch_6a
    const-string v0, "rsyscalljni"

    goto/16 :goto_8

    :sswitch_6b
    const-string v0, "rsdevxagentjni"

    goto/16 :goto_8

    :sswitch_6c
    const-string v0, "messengerplatformloggermplsyncmonitorjni"

    goto/16 :goto_a

    :sswitch_6d
    const-string v0, "profilo"

    goto/16 :goto_7

    :sswitch_6e
    const-string v0, "rsysvideoescalationjni"

    goto/16 :goto_8

    :sswitch_6f
    const-string v0, "fb_mozjpeg"

    goto/16 :goto_a

    :sswitch_70
    const-string v0, "millruntimejni"

    goto/16 :goto_a

    :sswitch_71
    const-string v0, "classid800"

    goto/16 :goto_7

    :sswitch_72
    const-string v0, "classid810"

    goto/16 :goto_7

    :sswitch_73
    const-string v0, "classid900"

    goto/16 :goto_7

    :sswitch_74
    const-string v0, "profiloextapi"

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "domaininfoutils_jni"

    goto/16 :goto_5

    :sswitch_76
    const-string v0, "profilo_jni_helpers"

    goto/16 :goto_7

    :sswitch_77
    const-string v0, "comfacebookmillmsyscorequeriescqlexportsdirectsqlnativeopsjni"

    goto/16 :goto_a

    :sswitch_78
    const-string v0, "messengerplatformloggerjni"

    goto/16 :goto_a

    :sswitch_79
    const-string v0, "rsystslogjni"

    goto/16 :goto_8

    :sswitch_7a
    const-string v0, "fbgloginit"

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "mailboxqpjni"

    goto/16 :goto_a

    :sswitch_7c
    const-string v0, "classid1000"

    goto/16 :goto_7

    :sswitch_7d
    const-string v0, "classid1100"

    goto/16 :goto_7

    :sswitch_7e
    const-string v0, "rsysdevicestatsjni"

    goto/16 :goto_8

    :sswitch_7f
    const-string v0, "profilo_local_symbols"

    goto/16 :goto_7

    :sswitch_80
    const-string v0, "mailboxglobaldeletejni"

    goto/16 :goto_a

    :sswitch_81
    const-string v0, "rsysaudiomodulejni"

    goto/16 :goto_8

    :sswitch_82
    const-string v0, "profilo_block_logger"

    goto/16 :goto_7

    :sswitch_83
    const-string v0, "comfacebookmillshimaddressabletransportsbasedirectsqlnativeopsjni"

    goto/16 :goto_a

    :sswitch_84
    const-string v0, "mailboxadvancedcryptotransportdiskmanagerjni"

    goto/16 :goto_a

    :sswitch_85
    const-string v0, "mailboxsdkjni"

    goto/16 :goto_a

    :sswitch_86
    const-string v0, "MsysTTRCPluginjni"

    goto/16 :goto_a

    :sswitch_87
    const-string v0, "asyncexecutor"

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "distract-common-museum-funcs-500"

    goto/16 :goto_1

    :sswitch_89
    const-string v0, "distract-common-museum-funcs-511"

    goto/16 :goto_1

    :sswitch_8a
    const-string v0, "distract-common-museum-funcs-601"

    goto/16 :goto_1

    :sswitch_8b
    const-string v0, "distract-common-museum-funcs-700"

    goto/16 :goto_1

    :sswitch_8c
    const-string v0, "distract-common-museum-funcs-712"

    goto/16 :goto_1

    :sswitch_8d
    const-string v0, "distract-common-museum-funcs-800"

    goto/16 :goto_1

    :sswitch_8e
    const-string v0, "distract-common-museum-funcs-810"

    goto/16 :goto_1

    :sswitch_8f
    const-string v0, "mailboxtamjni"

    goto/16 :goto_a

    :sswitch_90
    const-string v0, "rsysoutgoingcallconfigjni"

    goto/16 :goto_8

    :sswitch_91
    const-string v0, "MEMMobileConfigPlatformFbLitePluginjni"

    goto/16 :goto_a

    :sswitch_92
    const-string v0, "rsyslogjni"

    goto/16 :goto_8

    :sswitch_93
    const-string v0, "mediastreaming-config"

    goto/16 :goto_4

    :sswitch_94
    const-string v0, "fmt"

    goto/16 :goto_0

    :sswitch_95
    const-string v0, "MsysExperimentCachePluginjni"

    goto/16 :goto_a

    :sswitch_96
    const-string v0, "glog"

    goto/16 :goto_0

    :sswitch_97
    const-string v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_s_blokscamera_rtc"

    return-object v0

    :sswitch_98
    const-string v0, "ssim"

    goto/16 :goto_5

    :sswitch_99
    const-string v0, "sslx"

    goto/16 :goto_2

    :sswitch_9a
    const-string v0, "LiteMsysDatabaseSchemaDeployer"

    goto/16 :goto_a

    :sswitch_9b
    const-string v0, "MCIAppExperimentsPluginjni"

    goto/16 :goto_a

    :sswitch_9c
    const-string v0, "MsysIsDialtoneProviderPluginjni"

    goto/16 :goto_a

    :sswitch_9d
    const-string v0, "actoverunity"

    goto/16 :goto_a

    :sswitch_9e
    const-string v0, "maskrcnn-ops-xplat"

    goto/16 :goto_9

    :sswitch_9f
    const-string v0, "rsysvideoeffectjni"

    goto/16 :goto_8

    :sswitch_a0
    const-string v0, "millimmutablecursorjni"

    goto/16 :goto_a

    :sswitch_a1
    const-string v0, "pytorch_vision_jni"

    goto/16 :goto_9

    :sswitch_a2
    const-string v0, "mailboxcommunityjni"

    goto/16 :goto_a

    :sswitch_a3
    const-string v0, "messengerplatformloggerttrclistenerjni"

    goto/16 :goto_a

    :sswitch_a4
    const-string v0, "fizzwrapper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_fizz"

    return-object v0

    :sswitch_a5
    const-string v0, "openh264v211libencoderAndroid"

    goto/16 :goto_8

    :sswitch_a6
    const-string v0, "distract"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_s_blokscamera_boost"

    return-object v0

    :sswitch_a7
    const-string v0, "mailboxproactivewarningsnoncorejni"

    goto/16 :goto_a

    :sswitch_a8
    const-string v0, "comfacebookmillinstagramsecuremessagesharedfragmentutilsdirectsqlnativeopsjni"

    goto/16 :goto_a

    :sswitch_a9
    const-string v0, "mailboxmsyslitejni"

    goto/16 :goto_a

    :sswitch_aa
    const-string v0, "mailboxfblitesdkjni"

    goto/16 :goto_a

    :sswitch_ab
    const-string v0, "jniexecutors"

    goto/16 :goto_a

    :sswitch_ac
    const-string v0, "mailboxreportingsdkjni"

    goto/16 :goto_a

    :sswitch_ad
    const-string v0, "profiloprofilerunwindc500"

    goto/16 :goto_7

    :sswitch_ae
    const-string v0, "profiloprofilerunwindc510"

    goto/16 :goto_7

    :sswitch_af
    const-string v0, "profiloprofilerunwindc600"

    goto/16 :goto_7

    :sswitch_b0
    const-string v0, "profiloprofilerunwindc700"

    goto/16 :goto_7

    :sswitch_b1
    const-string v0, "profiloprofilerunwindc710"

    goto/16 :goto_7

    :sswitch_b2
    const-string v0, "profiloprofilerunwindc711"

    goto/16 :goto_7

    :sswitch_b3
    const-string v0, "profiloprofilerunwindc712"

    goto/16 :goto_7

    :sswitch_b4
    const-string v0, "profiloprofilerunwindc800"

    goto/16 :goto_7

    :sswitch_b5
    const-string v0, "profiloprofilerunwindc810"

    goto/16 :goto_7

    :sswitch_b6
    const-string v0, "profiloprofilerunwindc900"

    goto/16 :goto_7

    :sswitch_b7
    const-string v0, "rsyscallmanagerjni"

    goto/16 :goto_8

    :sswitch_b8
    const-string v0, "rsysvideosubscriptionsjni"

    goto/16 :goto_8

    :sswitch_b9
    const-string v0, "mailboxmessagingprivacysettingsjni"

    goto/16 :goto_a

    :sswitch_ba
    const-string v0, "minscompiler-jni"

    goto/16 :goto_5

    :sswitch_bb
    const-string v0, "android-reachability-announcer"

    goto/16 :goto_4

    :sswitch_bc
    const-string v0, "mailboxsyncstatesjni"

    goto/16 :goto_a

    :sswitch_bd
    const-string v0, "mailboxmplwaisyncmonitorjni"

    goto/16 :goto_a

    :sswitch_be
    const-string v0, "mailboxchannelhealthjni"

    goto/16 :goto_a

    :sswitch_bf
    const-string v0, "mailboxfbtransportjni"

    goto/16 :goto_a

    :sswitch_c0
    const-string v0, "double-conversion"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_shared_fizz_ms_profilo"

    return-object v0

    :sswitch_c1
    const-string v0, "rsyscryptojni"

    goto/16 :goto_8

    :sswitch_c2
    const-string v0, "profilo_apiimpl"

    goto/16 :goto_7

    :sswitch_c3
    const-string v0, "fbbacktrace"

    goto/16 :goto_7

    :sswitch_c4
    const-string v0, "profilo_multi_buffer_logger"

    goto/16 :goto_7

    :sswitch_c5
    const-string v0, "mailboxstickerpackjni"

    goto/16 :goto_a

    :sswitch_c6
    const-string v0, "artsmartgc"

    goto :goto_1

    :sswitch_c7
    const-string v0, "LiteExperimentsMobileConfigPluginjni"

    goto/16 :goto_a

    :sswitch_c8
    const-string v0, "rsysmediajni"

    goto/16 :goto_8

    :sswitch_c9
    const-string v0, "mailboxreachabilitysettingsjni"

    goto/16 :goto_a

    :sswitch_ca
    const-string v0, "mailboxmemmediautilsjni"

    goto/16 :goto_a

    :sswitch_cb
    const-string v0, "LiteMsysDasmConfigCreator-jni"

    goto/16 :goto_a

    :sswitch_cc
    const-string v0, "classid"

    goto/16 :goto_7

    :sswitch_cd
    const-string v0, "fbandroid_libraries_profilo_cpp_providers"

    goto/16 :goto_7

    :sswitch_ce
    const-string v0, "mailboxe2eexmareceiverfetchjni"

    goto/16 :goto_a

    :sswitch_cf
    const-string v0, "comfacebookmillmessengerencryptedmessagingmobileconfigcqlutilsdirectsqlnativeopsjni"

    goto/16 :goto_a

    :sswitch_d0
    const-string v0, "imagepipeline"

    goto/16 :goto_5

    :sswitch_d1
    const-string v0, "reliablemedia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged"

    return-object v0

    :sswitch_d2
    const-string v0, "storer-jni"

    goto/16 :goto_5

    :sswitch_d3
    const-string v0, "mailboxcorejni"

    goto/16 :goto_a

    :sswitch_d4
    const-string v0, "c++_demangle"

    goto/16 :goto_7

    :sswitch_d5
    const-string v0, "millcommonjni"

    goto/16 :goto_a

    :sswitch_d6
    const-string v0, "mcpdynamic-mcpdynamic"

    goto/16 :goto_a

    :sswitch_d7
    const-string v0, "dalviksmartgc"

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_boost"

    return-object v0

    :sswitch_d8
    const-string v0, "cryptox"

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_s_fizz_msys"

    return-object v0

    :sswitch_d9
    const-string v0, "rsysmessagequeuejni"

    goto/16 :goto_8

    :sswitch_da
    const-string v0, "mediastreaming_jni"

    goto :goto_4

    :sswitch_db
    const-string v0, "mailboxmessagerequestjni"

    goto/16 :goto_a

    :sswitch_dc
    const-string v0, "VideoJni"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_heroplayer"

    return-object v0

    :sswitch_dd
    const-string v0, "msystracemetadataproviderjni"

    goto/16 :goto_a

    :sswitch_de
    const-string v0, "mailboxsecureauthplatformvestajni"

    goto/16 :goto_a

    :sswitch_df
    const-string v0, "msysjni"

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_msysinfra"

    return-object v0

    :sswitch_e0
    const-string v0, "mqttnonbridgednetworksessionplugin"

    goto/16 :goto_a

    :sswitch_e1
    const-string v0, "rsyscallintentjni"

    goto :goto_8

    :sswitch_e2
    const-string v0, "mailboxstickerstorejni"

    goto/16 :goto_a

    :sswitch_e3
    const-string v0, "profilo_dalvik_tracer"

    goto :goto_7

    :sswitch_e4
    const-string v0, "mailboxmediareceiverfetchjni"

    goto/16 :goto_a

    :sswitch_e5
    const-string v0, "rsysaudioeventsjni"

    goto :goto_8

    :sswitch_e6
    const-string v0, "rsystransportjni"

    goto :goto_8

    :sswitch_e7
    const-string v0, "profilo_util"

    goto :goto_7

    :sswitch_e8
    const-string v0, "ctaudioprocessor-native"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_mediastreaming"

    return-object v0

    :sswitch_e9
    const-string v0, "profilo_stacktrace_artcompat"

    goto :goto_7

    :sswitch_ea
    const-string v0, "xanalyticsadapter-jni"

    goto :goto_8

    :sswitch_eb
    const-string v0, "jniuserflow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_s_mediastreaming_msys_rtc"

    return-object v0

    :sswitch_ec
    const-string v0, "mailboxthreadmembersjni"

    goto :goto_a

    :sswitch_ed
    const-string v0, "mobilenetwork_jni"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_mnshttp"

    return-object v0

    :sswitch_ee
    const-string v0, "advancedcryptotransport_jni"

    goto :goto_a

    :sswitch_ef
    const-string v0, "batch-box-cox-ops-xplat"

    goto :goto_9

    :sswitch_f0
    const-string v0, "flexlayout"

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_1"

    return-object v0

    :sswitch_f1
    const-string v0, "profilo_mmapbuf_buffer"

    goto :goto_7

    :sswitch_f2
    const-string v0, "comfacebookmillthreadmetadatadataclassdatabasefunctionsdirectsqlnativeopsjni"

    goto :goto_a

    :sswitch_f3
    const-string v0, "mailboxadvancedcryptotransportjni"

    goto :goto_a

    :sswitch_f4
    const-string v0, "mailboxmessagerequestssdkjni"

    goto :goto_a

    :sswitch_f5
    const-string v0, "musiceffect-native"

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_blokscamera"

    return-object v0

    :sswitch_f6
    const-string v0, "msysohai-jni"

    goto :goto_a

    :sswitch_f7
    const-string v0, "profilo_threadmetadata"

    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_profilo"

    return-object v0

    :sswitch_f8
    const-string v0, "rsysexecutionjni"

    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_rtc"

    return-object v0

    :sswitch_f9
    const-string v0, "evloopmanager_jni"

    goto :goto_a

    :sswitch_fa
    const-string v0, "mailboxcutoverjni"

    goto :goto_a

    :sswitch_fb
    const-string v0, "mailboxproactivewarningsjni"

    goto :goto_a

    :sswitch_fc
    const-string v0, "xplat_caffe2_android_pytorch_jni_common"

    :goto_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_pytorch"

    return-object v0

    :sswitch_fd
    const-string v0, "jnilwqpl"

    goto :goto_a

    :sswitch_fe
    const-string v0, "mailboxadvancedcryptostagingjni"

    goto :goto_a

    :sswitch_ff
    const-string v0, "mailboxexperimentjni"

    goto :goto_a

    :sswitch_100
    const-string v0, "FBLiteFileManagerExceptionLoggerPluginjni"

    goto :goto_a

    :sswitch_101
    const-string v0, "mailboxshimjni"

    :goto_a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_everything_merged_msys"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e9f4b4d -> :sswitch_0
        -0x7de93754 -> :sswitch_1
        -0x79fe5d77 -> :sswitch_2
        -0x79216ddf -> :sswitch_3
        -0x78e97fc4 -> :sswitch_4
        -0x771a8a6b -> :sswitch_5
        -0x7622d5e8 -> :sswitch_6
        -0x72bc04ac -> :sswitch_7
        -0x724021fd -> :sswitch_8
        -0x709a3e21 -> :sswitch_9
        -0x707b8748 -> :sswitch_a
        -0x7049d385 -> :sswitch_b
        -0x6e7c2f4c -> :sswitch_c
        -0x6a5d6a91 -> :sswitch_d
        -0x69e218e2 -> :sswitch_e
        -0x68c2065e -> :sswitch_f
        -0x67944168 -> :sswitch_10
        -0x670e89b1 -> :sswitch_11
        -0x663c7d8d -> :sswitch_12
        -0x64ca837c -> :sswitch_13
        -0x648851d6 -> :sswitch_14
        -0x630e6c48 -> :sswitch_15
        -0x61a1c2b1 -> :sswitch_16
        -0x5ffa4536 -> :sswitch_17
        -0x5f55f249 -> :sswitch_18
        -0x5f165191 -> :sswitch_19
        -0x5df68653 -> :sswitch_1a
        -0x5db12014 -> :sswitch_1b
        -0x5cd62fe2 -> :sswitch_1c
        -0x5bae83fd -> :sswitch_1d
        -0x5b480f36 -> :sswitch_1e
        -0x5aef9b15 -> :sswitch_1f
        -0x5a12c89b -> :sswitch_20
        -0x59d2bac4 -> :sswitch_21
        -0x589e4fcc -> :sswitch_22
        -0x578e13ab -> :sswitch_23
        -0x5736543f -> :sswitch_24
        -0x56b1cdbf -> :sswitch_25
        -0x55c2515c -> :sswitch_26
        -0x53ea3fc6 -> :sswitch_27
        -0x53e9eb48 -> :sswitch_28
        -0x535111fb -> :sswitch_29
        -0x50217871 -> :sswitch_2a
        -0x4de1ab46 -> :sswitch_2b
        -0x4dd9df75 -> :sswitch_2c
        -0x4d2e0094 -> :sswitch_2d
        -0x4d1ea74f -> :sswitch_2e
        -0x4ca76a1e -> :sswitch_2f
        -0x4c51ba51 -> :sswitch_30
        -0x4c25b85b -> :sswitch_31
        -0x4a936696 -> :sswitch_32
        -0x4a7e1e47 -> :sswitch_33
        -0x49a18fc3 -> :sswitch_34
        -0x4968bd51 -> :sswitch_35
        -0x492a8eef -> :sswitch_36
        -0x3f7531d6 -> :sswitch_37
        -0x3f0fb6e3 -> :sswitch_38
        -0x3ecd821f -> :sswitch_39
        -0x3e96e6c5 -> :sswitch_3a
        -0x3b92acbf -> :sswitch_3b
        -0x3af9d9a9 -> :sswitch_3c
        -0x3a2421d3 -> :sswitch_3d
        -0x384a4670 -> :sswitch_3e
        -0x37ed8937 -> :sswitch_3f
        -0x378c9b3a -> :sswitch_40
        -0x362149f1 -> :sswitch_41
        -0x35dd5f0d -> :sswitch_42
        -0x35d409de -> :sswitch_43
        -0x352bdc4f -> :sswitch_44
        -0x3528c8b2 -> :sswitch_45
        -0x35118669 -> :sswitch_46
        -0x32c18152 -> :sswitch_47
        -0x323139b1 -> :sswitch_48
        -0x316a01f3 -> :sswitch_49
        -0x30debb39 -> :sswitch_4a
        -0x2f82dd93 -> :sswitch_4b
        -0x2f31c173 -> :sswitch_4c
        -0x2d6662dd -> :sswitch_4d
        -0x2d33145a -> :sswitch_4e
        -0x2c6eaff2 -> :sswitch_4f
        -0x2c40bfb8 -> :sswitch_50
        -0x2b6b7d8f -> :sswitch_51
        -0x2af17976 -> :sswitch_52
        -0x2aa9b702 -> :sswitch_53
        -0x2a7bd341 -> :sswitch_54
        -0x293f8241 -> :sswitch_55
        -0x27654148 -> :sswitch_56
        -0x274ca178 -> :sswitch_57
        -0x25d05664 -> :sswitch_58
        -0x24802518 -> :sswitch_59
        -0x2457e7b5 -> :sswitch_5a
        -0x24305fe0 -> :sswitch_5b
        -0x242fae37 -> :sswitch_5c
        -0x2320168c -> :sswitch_5d
        -0x214e82e6 -> :sswitch_5e
        -0x2126be19 -> :sswitch_5f
        -0x1f9258b9 -> :sswitch_60
        -0x1d0da86a -> :sswitch_61
        -0x1a30efb4 -> :sswitch_62
        -0x18a398d2 -> :sswitch_63
        -0x18a208eb -> :sswitch_64
        -0x18811c58 -> :sswitch_65
        -0x16bf9164 -> :sswitch_66
        -0x16446c0a -> :sswitch_67
        -0x164448ea -> :sswitch_68
        -0x1626a903 -> :sswitch_69
        -0x15f758f4 -> :sswitch_6a
        -0x154140bc -> :sswitch_6b
        -0x1458d287 -> :sswitch_6c
        -0x1271764d -> :sswitch_6d
        -0x124fe750 -> :sswitch_6e
        -0x11a08d03 -> :sswitch_6f
        -0x10fab217 -> :sswitch_70
        -0x10c88d3b -> :sswitch_71
        -0x10c88d1c -> :sswitch_72
        -0x10c8897a -> :sswitch_73
        -0xf161834 -> :sswitch_74
        -0xdb8dc1b -> :sswitch_75
        -0xd8358a1 -> :sswitch_76
        -0xd61feb6 -> :sswitch_77
        -0xd252db1 -> :sswitch_78
        -0xaa6c4c5 -> :sswitch_79
        -0x8899b37 -> :sswitch_7a
        -0x87d530e -> :sswitch_7b
        -0x84c488e -> :sswitch_7c
        -0x84c44cd -> :sswitch_7d
        -0x734f329 -> :sswitch_7e
        -0x645f085 -> :sswitch_7f
        -0x60c715d -> :sswitch_80
        -0x5c55782 -> :sswitch_81
        -0x5431f72 -> :sswitch_82
        -0x4ae1b7e -> :sswitch_83
        -0x4a44559 -> :sswitch_84
        -0x46c1121 -> :sswitch_85
        -0x3ef657f -> :sswitch_86
        -0x3a940b1 -> :sswitch_87
        -0x3a46949 -> :sswitch_88
        -0x3a46929 -> :sswitch_89
        -0x3a46587 -> :sswitch_8a
        -0x3a461c7 -> :sswitch_8b
        -0x3a461a6 -> :sswitch_8c
        -0x3a45e06 -> :sswitch_8d
        -0x3a45de7 -> :sswitch_8e
        -0x2e09647 -> :sswitch_8f
        -0x197fda2 -> :sswitch_90
        -0x11da2e4 -> :sswitch_91
        -0x11aed44 -> :sswitch_92
        -0x54d50f -> :sswitch_93
        0x18c8d -> :sswitch_94
        0x8eb0d -> :sswitch_95
        0x30757d -> :sswitch_96
        0x34283f -> :sswitch_97
        0x360384 -> :sswitch_98
        0x3603ec -> :sswitch_99
        0x192b5be -> :sswitch_9a
        0x22dc0ea -> :sswitch_9b
        0x2bc7a55 -> :sswitch_9c
        0x3810acf -> :sswitch_9d
        0x3de8b9c -> :sswitch_9e
        0x4adf834 -> :sswitch_9f
        0x7720e69 -> :sswitch_a0
        0x8f73afa -> :sswitch_a1
        0xa8011d0 -> :sswitch_a2
        0xb620cca -> :sswitch_a3
        0xe446bf0 -> :sswitch_a4
        0xea4fa4a -> :sswitch_a5
        0x11391586 -> :sswitch_a6
        0x15e147cf -> :sswitch_a7
        0x185c5e94 -> :sswitch_a8
        0x18994fc3 -> :sswitch_a9
        0x18cc1fc9 -> :sswitch_aa
        0x1aebcffb -> :sswitch_ab
        0x1c1b21a5 -> :sswitch_ac
        0x1c46deef -> :sswitch_ad
        0x1c46df0e -> :sswitch_ae
        0x1c46e2b0 -> :sswitch_af
        0x1c46e671 -> :sswitch_b0
        0x1c46e690 -> :sswitch_b1
        0x1c46e691 -> :sswitch_b2
        0x1c46e692 -> :sswitch_b3
        0x1c46ea32 -> :sswitch_b4
        0x1c46ea51 -> :sswitch_b5
        0x1c46edf3 -> :sswitch_b6
        0x1d587391 -> :sswitch_b7
        0x20afe12f -> :sswitch_b8
        0x20f1c4ea -> :sswitch_b9
        0x21873058 -> :sswitch_ba
        0x21ec6c51 -> :sswitch_bb
        0x231fd5f4 -> :sswitch_bc
        0x23f2ec30 -> :sswitch_bd
        0x241442da -> :sswitch_be
        0x26e0f84c -> :sswitch_bf
        0x27225892 -> :sswitch_c0
        0x2780e489 -> :sswitch_c1
        0x27b30cae -> :sswitch_c2
        0x27f86b82 -> :sswitch_c3
        0x2841e55d -> :sswitch_c4
        0x2a2c1cc3 -> :sswitch_c5
        0x2b4ef4a2 -> :sswitch_c6
        0x2b5257e6 -> :sswitch_c7
        0x2b9bb75c -> :sswitch_c8
        0x2bf904b7 -> :sswitch_c9
        0x2ed72a37 -> :sswitch_ca
        0x2fd23e7d -> :sswitch_cb
        0x32e13893 -> :sswitch_cc
        0x33427c48 -> :sswitch_cd
        0x34ac6b85 -> :sswitch_ce
        0x35fb3648 -> :sswitch_cf
        0x3767c8fd -> :sswitch_d0
        0x37d515da -> :sswitch_d1
        0x37def389 -> :sswitch_d2
        0x3babd872 -> :sswitch_d3
        0x3c2dc803 -> :sswitch_d4
        0x3c8e613e -> :sswitch_d5
        0x3d500acd -> :sswitch_d6
        0x3dfc5e1c -> :sswitch_d7
        0x3e6f27d7 -> :sswitch_d8
        0x3e9a5b80 -> :sswitch_d9
        0x3f1a64e4 -> :sswitch_da
        0x47aec3c9 -> :sswitch_db
        0x487add4a -> :sswitch_dc
        0x4b22c760 -> :sswitch_dd
        0x4dd5d5ba -> :sswitch_de
        0x51238865 -> :sswitch_df
        0x5381758d -> :sswitch_e0
        0x53b831b0 -> :sswitch_e1
        0x54ebe02d -> :sswitch_e2
        0x577d2517 -> :sswitch_e3
        0x5899c54a -> :sswitch_e4
        0x58aad2b1 -> :sswitch_e5
        0x598fa877 -> :sswitch_e6
        0x5a04370e -> :sswitch_e7
        0x5a9789b7 -> :sswitch_e8
        0x5af67caf -> :sswitch_e9
        0x5bcc9d59 -> :sswitch_ea
        0x5e78361e -> :sswitch_eb
        0x625bba2a -> :sswitch_ec
        0x653f7432 -> :sswitch_ed
        0x6778270c -> :sswitch_ee
        0x678b5576 -> :sswitch_ef
        0x67bf5c63 -> :sswitch_f0
        0x67d6dea7 -> :sswitch_f1
        0x68797401 -> :sswitch_f2
        0x6a147273 -> :sswitch_f3
        0x6c31d182 -> :sswitch_f4
        0x6cd641ce -> :sswitch_f5
        0x6e625ad9 -> :sswitch_f6
        0x6ea5c745 -> :sswitch_f7
        0x6ea95a28 -> :sswitch_f8
        0x6ee0821e -> :sswitch_f9
        0x71354583 -> :sswitch_fa
        0x71f5e8cf -> :sswitch_fb
        0x72ad335d -> :sswitch_fc
        0x77809c3d -> :sswitch_fd
        0x779999e1 -> :sswitch_fe
        0x79601e54 -> :sswitch_ff
        0x798af35a -> :sswitch_100
        0x7da26f98 -> :sswitch_101
    .end sparse-switch
.end method

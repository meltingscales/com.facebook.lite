package X;

import com.facebook.common.dextricks.classtracing.logger.ClassTracingLoggerFbLite;

/* renamed from: X.02x  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC007202x {
    public static String A00(Integer num) {
        switch (num.intValue()) {
            case 1:
                return "all_app_mem_info";
            case 2:
                return "portal_app";
            case 3:
                return "analytics";
            case ClassTracingLoggerFbLite.ENCODED_CLASS_NAMES_LENGTH /* 4 */:
                return "anr_data";
            case 5:
                return "application_thread_process_state";
            case 6:
                return "app_config_info";
            case 7:
                return "app_exit_info";
            case 8:
                return "app_info";
            case 9:
                return "app_state";
            case 10:
                return "black_box";
            case 11:
                return "bluetooth_traffic";
            case 12:
                return "composer_sessions";
            case 13:
                return "core_dump";
            case 14:
                return "custom";
            case 15:
                return "device_info";
            case 16:
                return "disk_info";
            case 17:
                return "extra_device_info";
            case 18:
                return "fury_traces";
            case 19:
                return "global_app_state";
            case 20:
                return "global_props";
            case 21:
                return "granular_exposures";
            case 22:
                return "lacrima_files";
            case 23:
                return "lmk_info";
            case 24:
                return "lmkd_info";
            case 25:
                return "logcat";
            case 26:
                return "logcat_intercept";
            case 27:
                return "mem_class_info";
            case 28:
                return "memory";
            case 29:
                return "memory_timeline";
            case 30:
                return "mobile_config";
            case 31:
                return "msys_crash_reporter";
            case 32:
                return "nightwatch";
            case 33:
                return "oom_score";
            case 34:
                return "private_dirty_memory";
            case 35:
                return "qpl";
            case 36:
                return "runtime_permissions";
            case 37:
                return "attachment";
            case 38:
                return "systems_health_report";
            case 39:
                return "simple_memory";
            case 40:
                return "stack_traces";
            case 41:
                return "system_boot";
            case 42:
                return "system_health_stats";
            case 43:
                return "test_collector";
            case 44:
                return "time_info";
            case 45:
                return "user_info";
            case 46:
                return "watermark";
            case 47:
                return "component_version";
            case 48:
                return "parcelable";
            case 49:
                return "stall";
            case 50:
                return "litho_message";
            case 51:
                return "wearable_info";
            case 52:
                return "anr_timer";
            case 53:
                return "ota_resources_version";
            case 54:
                return "state_post_crash";
            case 55:
                return "lmk_importance";
            case 56:
                return "memory_and_importance";
            case 57:
                return "foreground_stats";
            case 58:
                return "custom_app_data";
            case 59:
                return "faults";
            case 60:
                return "lifecycle_history";
            case 61:
                return "night_watch_resources";
            case 62:
                return "app_timeout";
            case 63:
                return "native_libraries";
            case 64:
                return "native_library_update";
            case 65:
                return "battery_info";
            case 66:
                return "memory_trim";
            case 67:
                return "native_memory";
            case 68:
                return "persistent_looper_history";
            case 69:
                return "anr_message_queue";
            case 70:
                return "jest_e2e";
            case 71:
                return "touch_event";
            case 72:
                return "app_start";
            case 73:
                return "thread_local_stats";
            case 74:
                return "allocator_type";
            case 75:
                return "gpu_info";
            default:
                return "add_mem_info";
        }
    }
}

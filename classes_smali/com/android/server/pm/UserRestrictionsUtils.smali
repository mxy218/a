.class public Lcom/android/server/pm/UserRestrictionsUtils;
.super Ljava/lang/Object;
.source "UserRestrictionsUtils.java"


# static fields
.field private static final DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMMUTABLE_BY_OWNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"

.field public static final USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 61

    .line 76
    const-string/jumbo v0, "no_config_wifi"

    const-string/jumbo v1, "no_config_locale"

    const-string/jumbo v2, "no_modify_accounts"

    const-string/jumbo v3, "no_install_apps"

    const-string/jumbo v4, "no_uninstall_apps"

    const-string/jumbo v5, "no_share_location"

    const-string/jumbo v6, "no_install_unknown_sources"

    const-string/jumbo v7, "no_install_unknown_sources_globally"

    const-string/jumbo v8, "no_config_bluetooth"

    const-string/jumbo v9, "no_bluetooth"

    const-string/jumbo v10, "no_bluetooth_sharing"

    const-string/jumbo v11, "no_usb_file_transfer"

    const-string/jumbo v12, "no_config_credentials"

    const-string/jumbo v13, "no_remove_user"

    const-string/jumbo v14, "no_remove_managed_profile"

    const-string/jumbo v15, "no_debugging_features"

    const-string/jumbo v16, "no_config_vpn"

    const-string/jumbo v17, "no_config_date_time"

    const-string/jumbo v18, "no_config_tethering"

    const-string/jumbo v19, "no_network_reset"

    const-string/jumbo v20, "no_factory_reset"

    const-string/jumbo v21, "no_add_user"

    const-string/jumbo v22, "no_add_managed_profile"

    const-string v23, "ensure_verify_apps"

    const-string/jumbo v24, "no_config_cell_broadcasts"

    const-string/jumbo v25, "no_config_mobile_networks"

    const-string/jumbo v26, "no_control_apps"

    const-string/jumbo v27, "no_physical_media"

    const-string/jumbo v28, "no_unmute_microphone"

    const-string/jumbo v29, "no_adjust_volume"

    const-string/jumbo v30, "no_outgoing_calls"

    const-string/jumbo v31, "no_sms"

    const-string/jumbo v32, "no_fun"

    const-string/jumbo v33, "no_create_windows"

    const-string/jumbo v34, "no_system_error_dialogs"

    const-string/jumbo v35, "no_cross_profile_copy_paste"

    const-string/jumbo v36, "no_outgoing_beam"

    const-string/jumbo v37, "no_wallpaper"

    const-string/jumbo v38, "no_safe_boot"

    const-string v39, "allow_parent_profile_app_linking"

    const-string/jumbo v40, "no_record_audio"

    const-string/jumbo v41, "no_camera"

    const-string/jumbo v42, "no_run_in_background"

    const-string/jumbo v43, "no_data_roaming"

    const-string/jumbo v44, "no_set_user_icon"

    const-string/jumbo v45, "no_set_wallpaper"

    const-string/jumbo v46, "no_oem_unlock"

    const-string v47, "disallow_unmute_device"

    const-string/jumbo v48, "no_autofill"

    const-string/jumbo v49, "no_content_capture"

    const-string/jumbo v50, "no_content_suggestions"

    const-string/jumbo v51, "no_user_switch"

    const-string/jumbo v52, "no_unified_password"

    const-string/jumbo v53, "no_config_location"

    const-string/jumbo v54, "no_airplane_mode"

    const-string/jumbo v55, "no_config_brightness"

    const-string/jumbo v56, "no_sharing_into_profile"

    const-string/jumbo v57, "no_ambient_display"

    const-string/jumbo v58, "no_config_screen_timeout"

    const-string/jumbo v59, "no_printing"

    const-string v60, "disallow_config_private_dns"

    filled-new-array/range {v0 .. v60}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 143
    const-string/jumbo v0, "no_record_audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    .line 151
    const-string/jumbo v2, "no_bluetooth"

    const-string/jumbo v3, "no_usb_file_transfer"

    const-string/jumbo v4, "no_config_tethering"

    const-string/jumbo v5, "no_network_reset"

    const-string/jumbo v6, "no_factory_reset"

    const-string/jumbo v7, "no_add_user"

    const-string/jumbo v8, "no_config_cell_broadcasts"

    const-string/jumbo v9, "no_config_mobile_networks"

    const-string/jumbo v10, "no_physical_media"

    const-string/jumbo v11, "no_sms"

    const-string/jumbo v12, "no_fun"

    const-string/jumbo v13, "no_safe_boot"

    const-string/jumbo v14, "no_create_windows"

    const-string/jumbo v15, "no_data_roaming"

    const-string/jumbo v16, "no_airplane_mode"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 172
    const-string/jumbo v1, "no_user_switch"

    const-string v2, "disallow_config_private_dns"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 180
    const-string/jumbo v1, "no_wallpaper"

    const-string/jumbo v2, "no_oem_unlock"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    .line 190
    const-string/jumbo v1, "no_adjust_volume"

    const-string/jumbo v2, "no_bluetooth_sharing"

    const-string/jumbo v3, "no_config_date_time"

    const-string/jumbo v4, "no_system_error_dialogs"

    const-string/jumbo v5, "no_run_in_background"

    const-string/jumbo v6, "no_unmute_microphone"

    const-string v7, "disallow_unmute_device"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 203
    const-string/jumbo v0, "no_add_managed_profile"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;

    .line 214
    const-string/jumbo v0, "no_bluetooth_sharing"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    .line 221
    const-string v0, "ensure_verify_apps"

    const-string/jumbo v1, "no_airplane_mode"

    const-string/jumbo v2, "no_install_unknown_sources_globally"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 15

    .line 523
    const-string v0, "1"

    const-string v1, "airplane_mode_on"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 526
    const/4 v5, -0x1

    :try_start_d
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_1b5

    const-string/jumbo v7, "no_install_unknown_sources"

    const-string/jumbo v8, "no_install_unknown_sources_globally"

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v6, :sswitch_data_1ba

    :cond_1c
    goto/16 :goto_93

    :sswitch_1e
    :try_start_1e
    const-string/jumbo v6, "no_debugging_features"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 v5, 0x2

    goto/16 :goto_93

    :sswitch_2a
    const-string/jumbo v6, "no_safe_boot"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 v5, 0x7

    goto :goto_93

    :sswitch_35
    const-string/jumbo v6, "no_share_location"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    move v5, v9

    goto :goto_93

    :sswitch_40
    const-string/jumbo v6, "no_data_roaming"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    move v5, v10

    goto :goto_93

    :sswitch_4b
    const-string/jumbo v6, "no_config_location"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/16 v5, 0xa

    goto :goto_93

    :sswitch_57
    const-string/jumbo v6, "no_run_in_background"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 v5, 0x6

    goto :goto_93

    :sswitch_62
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 v5, 0x5

    goto :goto_93

    :sswitch_6a
    const-string/jumbo v6, "no_airplane_mode"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/16 v5, 0x8

    goto :goto_93

    :sswitch_76
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 v5, 0x4

    goto :goto_93

    :sswitch_7e
    const-string v6, "ensure_verify_apps"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 v5, 0x3

    goto :goto_93

    :sswitch_88
    const-string/jumbo v6, "no_ambient_display"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_8f
    .catchall {:try_start_1e .. :try_end_8f} :catchall_1b5

    if-eqz p2, :cond_1c

    const/16 v5, 0x9

    :goto_93
    const-string p2, "0"

    packed-switch v5, :pswitch_data_1e8

    goto/16 :goto_1b0

    .line 654
    :pswitch_9a  #0xa
    if-eqz p3, :cond_1b0

    .line 655
    nop

    .line 656
    :try_start_9d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "location_global_kill_switch"

    .line 655
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1b0

    .line 633
    :pswitch_a8  #0x9
    if-eqz p3, :cond_1b0

    .line 634
    nop

    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "doze_enabled"

    .line 634
    invoke-static {p2, p3, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 637
    nop

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "doze_always_on"

    .line 637
    invoke-static {p2, p3, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 640
    nop

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "doze_pulse_on_pick_up"

    .line 640
    invoke-static {p2, p3, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 643
    nop

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "doze_pulse_on_long_press"

    .line 643
    invoke-static {p2, p3, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 646
    nop

    .line 647
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "doze_pulse_on_double_tap"

    .line 646
    invoke-static {p0, p2, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1b0

    .line 617
    :pswitch_de  #0x8
    if-eqz p3, :cond_1b0

    .line 618
    nop

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 618
    invoke-static {p1, v1, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v9, :cond_ec

    goto :goto_ed

    :cond_ec
    move v9, v10

    .line 621
    :goto_ed
    if-eqz v9, :cond_109

    .line 622
    nop

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 622
    invoke-static {p1, v1, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 626
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    const-string/jumbo p2, "state"

    invoke-virtual {p1, p2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 630
    :cond_109
    goto/16 :goto_1b0

    .line 611
    :pswitch_10b  #0x7
    nop

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "safe_boot_disallowed"

    .line 614
    if-eqz p3, :cond_116

    goto :goto_117

    :cond_116
    move v9, v10

    .line 611
    :goto_117
    invoke-static {p0, p1, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    goto/16 :goto_1b0

    .line 594
    :pswitch_11c  #0x6
    if-eqz p3, :cond_1b0

    .line 595
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_122
    .catchall {:try_start_9d .. :try_end_122} :catchall_1b5

    .line 596
    if-eq p0, p1, :cond_135

    if-eqz p1, :cond_135

    .line 598
    :try_start_126
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p1, v10, p2}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_12e
    .catch Landroid/os/RemoteException; {:try_start_126 .. :try_end_12e} :catch_12f
    .catchall {:try_start_126 .. :try_end_12e} :catchall_1b5

    .line 601
    goto :goto_135

    .line 599
    :catch_12f
    move-exception p0

    .line 600
    :try_start_130
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 603
    :cond_135
    :goto_135
    goto/16 :goto_1b0

    .line 589
    :pswitch_137  #0x5
    invoke-static {p0, p1, v8, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result p0

    invoke-static {v2, p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    .line 592
    goto/16 :goto_1b0

    .line 581
    :pswitch_140  #0x4
    invoke-static {p0, p1, v7, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result p0

    invoke-static {v2, p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    .line 584
    goto :goto_1b0

    .line 569
    :pswitch_148  #0x3
    if-eqz p3, :cond_1b0

    .line 570
    nop

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "package_verifier_enable"

    .line 570
    invoke-static {p2, p3, v0, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 574
    nop

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "verifier_verify_adb_installs"

    .line 574
    invoke-static {p0, p2, v0, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1b0

    .line 558
    :pswitch_161  #0x2
    if-eqz p3, :cond_1b0

    .line 561
    if-nez p1, :cond_1b0

    .line 562
    const-string p0, "adb_enabled"

    invoke-static {v2, p0, p2, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1b0

    .line 550
    :pswitch_16b  #0x1
    if-eqz p3, :cond_1b0

    .line 551
    const-string p0, "location_mode"

    invoke-static {v2, p0, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1b0

    .line 528
    :pswitch_173  #0x0
    if-eqz p3, :cond_1b0

    .line 532
    const-class p3, Landroid/telephony/SubscriptionManager;

    .line 533
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 534
    nop

    .line 535
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0
    :try_end_182
    .catchall {:try_start_130 .. :try_end_182} :catchall_1b5

    .line 536
    const-string p3, "data_roaming"

    if-eqz p0, :cond_1ad

    .line 537
    :try_start_186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {v2, v0, p2, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 541
    goto :goto_18a

    .line 545
    :cond_1ad
    invoke-static {v2, p3, p2, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1b0
    .catchall {:try_start_186 .. :try_end_1b0} :catchall_1b5

    .line 662
    :cond_1b0
    :goto_1b0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    nop

    .line 664
    return-void

    .line 662
    :catchall_1b5
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :sswitch_data_1ba
    .sparse-switch
        -0x57f0a463 -> :sswitch_88
        -0x4e6d1409 -> :sswitch_7e
        -0x444ddeb2 -> :sswitch_76
        -0x4080af8e -> :sswitch_6a
        0x171409a1 -> :sswitch_62
        0x2afb8ad6 -> :sswitch_57
        0x339f9994 -> :sswitch_4b
        0x375d2642 -> :sswitch_40
        0x3b5af253 -> :sswitch_35
        0x414d6f66 -> :sswitch_2a
        0x68f319ac -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_173  #00000000
        :pswitch_16b  #00000001
        :pswitch_161  #00000002
        :pswitch_148  #00000003
        :pswitch_140  #00000004
        :pswitch_137  #00000005
        :pswitch_11c  #00000006
        :pswitch_10b  #00000007
        :pswitch_de  #00000008
        :pswitch_a8  #00000009
        :pswitch_9a  #0000000a
    .end packed-switch
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8

    .line 491
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 492
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 493
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 495
    if-eq v2, v3, :cond_1f

    .line 496
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 498
    :cond_1f
    goto :goto_6

    .line 499
    :cond_20
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 7

    .line 461
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 462
    return v0

    .line 464
    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 465
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 467
    :cond_f
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 468
    return v2

    .line 470
    :cond_17
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 471
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_36

    .line 472
    return v2

    .line 474
    :cond_36
    goto :goto_1f

    .line 475
    :cond_37
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 476
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eq v4, v3, :cond_56

    .line 477
    return v2

    .line 479
    :cond_56
    goto :goto_3f

    .line 480
    :cond_57
    return v0
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2

    .line 389
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .registers 3

    .line 397
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 398
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 400
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 397
    :goto_1d
    return p0
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 353
    new-instance v0, Landroid/os/Bundle;

    if-eqz p0, :cond_8

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_b

    :cond_8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_b
    return-object v0
.end method

.method public static contains(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 2

    .line 342
    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 826
    nop

    .line 827
    if-eqz p2, :cond_4b

    .line 828
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 829
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    move v1, v3

    .line 833
    :cond_32
    goto :goto_c

    .line 834
    :cond_33
    if-eqz v1, :cond_60

    .line 835
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "none"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    .line 838
    :cond_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    :cond_60
    :goto_60
    return-void
.end method

.method public static getDefaultEnabledForDeviceOwner()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 408
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_DEVICE_OWNERS:Ljava/util/Set;

    return-object v0
.end method

.method public static getDefaultEnabledForManagedProfiles()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEFAULT_ENABLED_FOR_MANAGED_PROFILES:Ljava/util/Set;

    return-object v0
.end method

.method private static getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I
    .registers 4

    .line 895
    if-nez p3, :cond_13

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 896
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 895
    invoke-virtual {p0, p2, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    .line 896
    :cond_11
    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x0

    .line 895
    :goto_14
    return p0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .registers 1

    .line 334
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private static isGlobal(ZLjava/lang/String;)Z
    .registers 2

    .line 450
    if-eqz p0, :cond_12

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 451
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    :cond_12
    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 452
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 453
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    .line 450
    :goto_26
    return p0
.end method

.method public static isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 15

    .line 668
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 671
    nop

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_252

    :cond_15
    goto/16 :goto_13b

    :sswitch_17
    const-string/jumbo v1, "screen_brightness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x12

    goto/16 :goto_13c

    :sswitch_24
    const-string v1, "install_non_market_apps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x2

    goto/16 :goto_13c

    :sswitch_2f
    const-string v1, "auto_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x14

    goto/16 :goto_13c

    :sswitch_3b
    const-string v1, "always_on_vpn_lockdown"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x8

    goto/16 :goto_13c

    :sswitch_47
    const-string v1, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0xe

    goto/16 :goto_13c

    :sswitch_53
    const-string v1, "always_on_vpn_lockdown_whitelist"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x9

    goto/16 :goto_13c

    :sswitch_5f
    const-string v1, "location_global_kill_switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x11

    goto/16 :goto_13c

    :sswitch_6b
    const-string v1, "auto_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x15

    goto/16 :goto_13c

    :sswitch_77
    const-string/jumbo v1, "private_dns_specifier"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x18

    goto/16 :goto_13c

    :sswitch_84
    const-string v1, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x10

    goto/16 :goto_13c

    :sswitch_90
    const-string v1, "airplane_mode_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0xb

    goto/16 :goto_13c

    :sswitch_9c
    const-string/jumbo v1, "package_verifier_enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x4

    goto/16 :goto_13c

    :sswitch_a8
    const-string/jumbo v1, "private_dns_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x17

    goto/16 :goto_13c

    :sswitch_b5
    const-string/jumbo v1, "screen_off_timeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x16

    goto/16 :goto_13c

    :sswitch_c2
    const-string/jumbo v1, "safe_boot_disallowed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0xa

    goto/16 :goto_13c

    :sswitch_cf
    const-string v1, "doze_pulse_on_long_press"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0xf

    goto/16 :goto_13c

    :sswitch_db
    const-string v1, "doze_always_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0xd

    goto :goto_13c

    :sswitch_e6
    const-string/jumbo v1, "preferred_network_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x6

    goto :goto_13c

    :sswitch_f1
    const-string v1, "always_on_vpn_app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x7

    goto :goto_13c

    :sswitch_fb
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x13

    goto :goto_13c

    :sswitch_107
    const-string v1, "adb_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x3

    goto :goto_13c

    :sswitch_111
    const-string/jumbo v1, "verifier_verify_adb_installs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x5

    goto :goto_13c

    :sswitch_11c
    const-string v1, "doze_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0xc

    goto :goto_13c

    :sswitch_127
    const-string v1, "location_providers_allowed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_13c

    :sswitch_131
    const-string v1, "location_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v3

    goto :goto_13c

    :goto_13b
    const/4 v1, -0x1

    :goto_13c
    const-string/jumbo v4, "no_share_location"

    const-string/jumbo v5, "no_config_date_time"

    const-string v6, "1"

    const-string/jumbo v7, "no_config_location"

    const-string v8, "0"

    const/16 v9, 0x3e8

    packed-switch v1, :pswitch_data_2b8

    .line 808
    const-string p0, "data_roaming"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_251

    .line 809
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23d

    .line 810
    return v3

    .line 802
    :pswitch_15d  #0x17, 0x18
    if-ne p4, v9, :cond_160

    .line 803
    return v3

    .line 805
    :cond_160
    nop

    .line 806
    const-string v4, "disallow_config_private_dns"

    goto/16 :goto_241

    .line 794
    :pswitch_165  #0x16
    if-ne p4, v9, :cond_168

    .line 795
    return v3

    .line 797
    :cond_168
    nop

    .line 798
    const-string/jumbo v4, "no_config_screen_timeout"

    goto/16 :goto_241

    .line 787
    :pswitch_16e  #0x15
    if-ne p4, v9, :cond_171

    .line 788
    return v3

    .line 790
    :cond_171
    nop

    .line 791
    move-object v4, v5

    goto/16 :goto_241

    .line 776
    :pswitch_175  #0x14
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 777
    if-eqz p0, :cond_18c

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result p0

    if-eqz p0, :cond_18c

    .line 778
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18c

    .line 779
    return v2

    .line 780
    :cond_18c
    if-ne p4, v9, :cond_18f

    .line 781
    return v3

    .line 783
    :cond_18f
    nop

    .line 784
    move-object v4, v5

    goto/16 :goto_241

    .line 769
    :pswitch_193  #0x12, 0x13
    if-ne p4, v9, :cond_196

    .line 770
    return v3

    .line 772
    :cond_196
    nop

    .line 773
    const-string/jumbo v4, "no_config_brightness"

    goto/16 :goto_241

    .line 760
    :pswitch_19c  #0x11
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a3

    .line 761
    return v3

    .line 763
    :cond_1a3
    nop

    .line 764
    nop

    .line 765
    move v3, v2

    move-object v4, v7

    goto/16 :goto_241

    .line 753
    :pswitch_1a9  #0xc, 0xd, 0xe, 0xf, 0x10
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b0

    .line 754
    return v3

    .line 756
    :cond_1b0
    nop

    .line 757
    const-string/jumbo v4, "no_ambient_display"

    goto/16 :goto_241

    .line 742
    :pswitch_1b6  #0xb
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1bd

    .line 743
    return v3

    .line 745
    :cond_1bd
    nop

    .line 746
    const-string/jumbo v4, "no_airplane_mode"

    goto/16 :goto_241

    .line 735
    :pswitch_1c3  #0xa
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1ca

    .line 736
    return v3

    .line 738
    :cond_1ca
    nop

    .line 739
    const-string/jumbo v4, "no_safe_boot"

    goto/16 :goto_241

    .line 727
    :pswitch_1d0  #0x7, 0x8, 0x9
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 728
    if-eq p0, v9, :cond_1de

    if-nez p0, :cond_1d9

    goto :goto_1de

    .line 731
    :cond_1d9
    nop

    .line 732
    const-string/jumbo v4, "no_config_vpn"

    goto :goto_241

    .line 729
    :cond_1de
    :goto_1de
    return v3

    .line 720
    :pswitch_1df  #0x6
    nop

    .line 721
    const-string/jumbo v4, "no_config_mobile_networks"

    goto :goto_241

    .line 713
    :pswitch_1e4  #0x4, 0x5
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1eb

    .line 714
    return v3

    .line 716
    :cond_1eb
    nop

    .line 717
    const-string v4, "ensure_verify_apps"

    goto :goto_241

    .line 705
    :pswitch_1ef  #0x3
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f6

    .line 706
    return v3

    .line 708
    :cond_1f6
    nop

    .line 709
    const-string/jumbo v4, "no_debugging_features"

    goto :goto_241

    .line 698
    :pswitch_1fb  #0x2
    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_202

    .line 699
    return v3

    .line 701
    :cond_202
    nop

    .line 702
    const-string/jumbo v4, "no_install_unknown_sources"

    goto :goto_241

    .line 685
    :pswitch_207  #0x1
    nop

    .line 686
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 685
    invoke-virtual {v0, v7, p0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_215

    if-eq p4, v9, :cond_215

    .line 688
    return v2

    .line 689
    :cond_215
    if-eqz p3, :cond_220

    const-string p0, "-"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_220

    .line 692
    return v3

    .line 694
    :cond_220
    nop

    .line 695
    goto :goto_241

    .line 674
    :pswitch_222  #0x0
    nop

    .line 675
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 674
    invoke-virtual {v0, v7, p0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_230

    if-eq p4, v9, :cond_230

    .line 677
    return v2

    .line 678
    :cond_230
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23b

    .line 679
    return v3

    .line 681
    :cond_23b
    nop

    .line 682
    goto :goto_241

    .line 812
    :cond_23d
    nop

    .line 813
    const-string/jumbo v4, "no_data_roaming"

    .line 818
    :goto_241
    if-eqz v3, :cond_248

    .line 819
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 821
    :cond_248
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 815
    :cond_251
    return v3

    :sswitch_data_252
    .sparse-switch
        -0x6b192413 -> :sswitch_131
        -0x596f7aff -> :sswitch_127
        -0x58d2ff08 -> :sswitch_11c
        -0x4280630b -> :sswitch_111
        -0x39d6645f -> :sswitch_107
        -0x294f7102 -> :sswitch_fb
        -0x252f8dda -> :sswitch_f1
        -0x18d5c3ee -> :sswitch_e6
        -0x611a9fa -> :sswitch_db
        -0x1efffcf -> :sswitch_cf
        0x3756c15 -> :sswitch_c2
        0xf689f3e -> :sswitch_b5
        0x28c0ce35 -> :sswitch_a8
        0x2af40513 -> :sswitch_9c
        0x3733860e -> :sswitch_90
        0x3ff919a6 -> :sswitch_84
        0x48f0b46c -> :sswitch_77
        0x4c070b4e -> :sswitch_6b
        0x4df27163 -> :sswitch_5f
        0x4f84b830 -> :sswitch_53
        0x5f8b91a8 -> :sswitch_47
        0x62299f68 -> :sswitch_3b
        0x6305635d -> :sswitch_2f
        0x6565577f -> :sswitch_24
        0x67748604 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_2b8
    .packed-switch 0x0
        :pswitch_222  #00000000
        :pswitch_207  #00000001
        :pswitch_1fb  #00000002
        :pswitch_1ef  #00000003
        :pswitch_1e4  #00000004
        :pswitch_1e4  #00000005
        :pswitch_1df  #00000006
        :pswitch_1d0  #00000007
        :pswitch_1d0  #00000008
        :pswitch_1d0  #00000009
        :pswitch_1c3  #0000000a
        :pswitch_1b6  #0000000b
        :pswitch_1a9  #0000000c
        :pswitch_1a9  #0000000d
        :pswitch_1a9  #0000000e
        :pswitch_1a9  #0000000f
        :pswitch_1a9  #00000010
        :pswitch_19c  #00000011
        :pswitch_193  #00000012
        :pswitch_193  #00000013
        :pswitch_175  #00000014
        :pswitch_16e  #00000015
        :pswitch_165  #00000016
        :pswitch_15d  #00000017
        :pswitch_15d  #00000018
    .end packed-switch
.end method

.method private static isSystemApp(I[Ljava/lang/String;)Z
    .registers 9

    .line 264
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 265
    return v1

    .line 267
    :cond_8
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 268
    return v0

    .line 270
    :cond_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 271
    move v3, v0

    :goto_11
    array-length v4, p1

    if-ge v3, v4, :cond_2f

    .line 276
    :try_start_14
    aget-object v4, p1, v3

    const v5, 0xc2000

    .line 277
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_2b

    if-eqz v4, :cond_2a

    .line 279
    return v1

    .line 283
    :cond_2a
    goto :goto_2c

    .line 281
    :catch_2b
    move-exception v4

    .line 271
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 285
    :cond_2f
    return v0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .registers 7

    .line 231
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_61

    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 234
    const/4 v2, 0x0

    .line 236
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    .line 239
    goto :goto_18

    .line 237
    :catch_17
    move-exception v3

    .line 240
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown restriction queried by uid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const/4 v4, 0x0

    if-eqz v2, :cond_3f

    array-length v5, v2

    if-lez v5, :cond_3f

    .line 243
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    array-length v5, v2

    if-le v5, v1, :cond_3a

    .line 246
    const-string v1, " et al"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_3a
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_3f
    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "UserRestrictionsUtils"

    if-eqz p0, :cond_59

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isSystemApp(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_59

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 255
    :cond_59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_60
    return v4

    .line 259
    :cond_61
    return v1
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7

    .line 357
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 359
    if-nez p1, :cond_10

    .line 360
    return-void

    .line 362
    :cond_10
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 363
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 364
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    :cond_2d
    goto :goto_18

    .line 367
    :cond_2e
    return-void
.end method

.method public static mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 375
    const/4 p0, 0x0

    return-object p0

    .line 377
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 379
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 381
    :cond_20
    return-object v0
.end method

.method public static moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 847
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 848
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 849
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 850
    invoke-static {v2, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_39

    .line 851
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 853
    if-nez v3, :cond_2b

    .line 854
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 855
    invoke-virtual {p2, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 857
    :cond_2b
    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 859
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 860
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 861
    add-int/lit8 v0, v0, -0x1

    .line 847
    :cond_39
    add-int/2addr v0, v4

    goto :goto_1

    .line 865
    :cond_3b
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length p0, p0

    if-ne v1, p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 73
    return-object v0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1

    .line 330
    if-eqz p0, :cond_3

    goto :goto_8

    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_8
    return-object p0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 2

    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 323
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 5

    .line 311
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 312
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    if-eqz v2, :cond_23

    .line 315
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    :cond_23
    goto :goto_9

    .line 318
    :cond_24
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 8

    .line 875
    array-length v0, p2

    if-nez v0, :cond_8

    .line 876
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 878
    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1e

    aget-object v3, p2, v2

    .line 879
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 880
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v4, v3, :cond_1b

    .line 881
    const/4 p0, 0x1

    return p0

    .line 878
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 884
    :cond_1e
    return v1
.end method

.method private static setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V
    .registers 4

    .line 889
    const-string v0, "install_non_market_apps"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 891
    return-void
.end method

.method public static sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8

    .line 426
    const-string/jumbo v0, "no_camera"

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_b

    .line 427
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_10

    .line 428
    :cond_b
    if-ne p2, v1, :cond_10

    .line 429
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    :cond_10
    :goto_10
    if-eqz p0, :cond_43

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_19

    goto :goto_43

    .line 434
    :cond_19
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 435
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 436
    goto :goto_21

    .line 438
    :cond_34
    invoke-static {p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 439
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_41

    .line 441
    :cond_3e
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    :goto_41
    goto :goto_21

    .line 444
    :cond_42
    return-void

    .line 432
    :cond_43
    :goto_43
    return-void
.end method

.method public static writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    if-nez p1, :cond_3

    .line 291
    return-void

    .line 294
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 296
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->NON_PERSIST_USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 297
    goto :goto_f

    .line 299
    :cond_24
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 300
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 301
    const-string/jumbo v3, "true"

    invoke-interface {p0, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 305
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown user restriction detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserRestrictionsUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    goto :goto_f

    .line 307
    :cond_50
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    return-void
.end method

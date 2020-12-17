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
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "userId"  # I
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "newValue"  # Z

    .line 523
    const-string v0, "1"

    const-string v1, "airplane_mode_on"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 524
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 526
    .local v3, "id":J
    const/4 v5, -0x1

    :try_start_d
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_1ba

    const-string/jumbo v7, "no_install_unknown_sources"

    const-string/jumbo v8, "no_install_unknown_sources_globally"

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v6, :sswitch_data_1c0

    :cond_1c
    goto/16 :goto_93

    :sswitch_1e
    :try_start_1e
    const-string/jumbo v6, "no_debugging_features"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v5, 0x2

    goto/16 :goto_93

    :sswitch_2a
    const-string/jumbo v6, "no_safe_boot"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v5, 0x7

    goto :goto_93

    :sswitch_35
    const-string/jumbo v6, "no_share_location"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v5, v9

    goto :goto_93

    :sswitch_40
    const-string/jumbo v6, "no_data_roaming"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v5, v10

    goto :goto_93

    :sswitch_4b
    const-string/jumbo v6, "no_config_location"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v5, 0xa

    goto :goto_93

    :sswitch_57
    const-string/jumbo v6, "no_run_in_background"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v5, 0x6

    goto :goto_93

    :sswitch_62
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v5, 0x5

    goto :goto_93

    :sswitch_6a
    const-string/jumbo v6, "no_airplane_mode"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v5, 0x8

    goto :goto_93

    :sswitch_76
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v5, 0x4

    goto :goto_93

    :sswitch_7e
    const-string v6, "ensure_verify_apps"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v5, 0x3

    goto :goto_93

    :sswitch_88
    const-string/jumbo v6, "no_ambient_display"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8f
    .catchall {:try_start_1e .. :try_end_8f} :catchall_1ba

    if-eqz v6, :cond_1c

    const/16 v5, 0x9

    :goto_93
    const-string v6, "0"

    packed-switch v5, :pswitch_data_1ee

    goto/16 :goto_1b5

    .line 654
    :pswitch_9a  #0xa
    if-eqz p3, :cond_1b5

    .line 655
    nop

    .line 656
    :try_start_9d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_global_kill_switch"

    .line 655
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1b5

    .line 633
    :pswitch_a9  #0x9
    if-eqz p3, :cond_1b5

    .line 634
    nop

    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_enabled"

    .line 634
    invoke-static {v0, v1, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 637
    nop

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    .line 637
    invoke-static {v0, v1, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 640
    nop

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_pick_up"

    .line 640
    invoke-static {v0, v1, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 643
    nop

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_long_press"

    .line 643
    invoke-static {v0, v1, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 646
    nop

    .line 647
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_double_tap"

    .line 646
    invoke-static {v0, v1, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1b5

    .line 617
    :pswitch_df  #0x8
    if-eqz p3, :cond_1b5

    .line 618
    nop

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 618
    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_ed

    goto :goto_ee

    :cond_ed
    move v9, v10

    :goto_ee
    move v0, v9

    .line 621
    .local v0, "airplaneMode":Z
    if-eqz v0, :cond_10b

    .line 622
    nop

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 622
    invoke-static {v5, v1, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 626
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "state"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 630
    .end local v0  # "airplaneMode":Z
    .end local v1  # "intent":Landroid/content/Intent;
    :cond_10b
    goto/16 :goto_1b5

    .line 611
    :pswitch_10d  #0x7
    nop

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "safe_boot_disallowed"

    .line 614
    if-eqz p3, :cond_118

    goto :goto_119

    :cond_118
    move v9, v10

    .line 611
    :goto_119
    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    goto/16 :goto_1b5

    .line 594
    :pswitch_11e  #0x6
    if-eqz p3, :cond_1b5

    .line 595
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0
    :try_end_124
    .catchall {:try_start_9d .. :try_end_124} :catchall_1ba

    .line 596
    .local v0, "currentUser":I
    if-eq v0, p1, :cond_137

    if-eqz p1, :cond_137

    .line 598
    :try_start_128
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, p1, v10, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_128 .. :try_end_130} :catch_131
    .catchall {:try_start_128 .. :try_end_130} :catchall_1ba

    .line 601
    goto :goto_137

    .line 599
    :catch_131
    move-exception v1

    .line 600
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_132
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v2  # "cr":Landroid/content/ContentResolver;
    .end local v3  # "id":J
    .end local p0  # "context":Landroid/content/Context;
    .end local p1  # "userId":I
    .end local p2  # "key":Ljava/lang/String;
    .end local p3  # "newValue":Z
    throw v5

    .line 603
    .end local v0  # "currentUser":I
    .end local v1  # "e":Landroid/os/RemoteException;
    .restart local v2  # "cr":Landroid/content/ContentResolver;
    .restart local v3  # "id":J
    .restart local p0  # "context":Landroid/content/Context;
    .restart local p1  # "userId":I
    .restart local p2  # "key":Ljava/lang/String;
    .restart local p3  # "newValue":Z
    :cond_137
    :goto_137
    goto/16 :goto_1b5

    .line 589
    :pswitch_139  #0x5
    invoke-static {p0, p1, v8, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result v0

    invoke-static {v2, p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    .line 592
    goto/16 :goto_1b5

    .line 581
    :pswitch_142  #0x4
    invoke-static {p0, p1, v7, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->getNewUserRestrictionSetting(Landroid/content/Context;ILjava/lang/String;Z)I

    move-result v0

    invoke-static {v2, p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V

    .line 584
    goto :goto_1b5

    .line 569
    :pswitch_14a  #0x3
    if-eqz p3, :cond_1b5

    .line 570
    nop

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "package_verifier_enable"

    .line 570
    invoke-static {v1, v5, v0, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 574
    nop

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "verifier_verify_adb_installs"

    .line 574
    invoke-static {v1, v5, v0, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1b5

    .line 558
    :pswitch_163  #0x2
    if-eqz p3, :cond_1b5

    .line 561
    if-nez p1, :cond_1b5

    .line 562
    const-string v0, "adb_enabled"

    invoke-static {v2, v0, v6, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1b5

    .line 550
    :pswitch_16d  #0x1
    if-eqz p3, :cond_1b5

    .line 551
    const-string/jumbo v0, "location_mode"

    invoke-static {v2, v0, v10, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1b5

    .line 528
    :pswitch_176  #0x0
    if-eqz p3, :cond_1b5

    .line 532
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 533
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 534
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 535
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1
    :try_end_185
    .catchall {:try_start_132 .. :try_end_185} :catchall_1ba

    .line 536
    .local v1, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v5, "data_roaming"

    if-eqz v1, :cond_1b1

    .line 537
    :try_start_189
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 538
    .local v8, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 538
    invoke-static {v2, v9, v6, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 541
    nop

    .end local v8  # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_18d

    .line 545
    :cond_1b1
    invoke-static {v2, v5, v6, p1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1b4
    .catchall {:try_start_189 .. :try_end_1b4} :catchall_1ba

    .line 547
    nop

    .line 662
    .end local v0  # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v1  # "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1b5
    :goto_1b5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    nop

    .line 664
    return-void

    .line 662
    :catchall_1ba
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

    :sswitch_data_1c0
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

    :pswitch_data_1ee
    .packed-switch 0x0
        :pswitch_176  #00000000
        :pswitch_16d  #00000001
        :pswitch_163  #00000002
        :pswitch_14a  #00000003
        :pswitch_142  #00000004
        :pswitch_139  #00000005
        :pswitch_11e  #00000006
        :pswitch_10d  #00000007
        :pswitch_df  #00000008
        :pswitch_a9  #00000009
        :pswitch_9a  #0000000a
    .end packed-switch
.end method

.method public static applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "userId"  # I
    .param p2, "newRestrictions"  # Landroid/os/Bundle;
    .param p3, "prevRestrictions"  # Landroid/os/Bundle;

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
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 493
    .local v2, "newValue":Z
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 495
    .local v3, "prevValue":Z
    if-eq v2, v3, :cond_1f

    .line 496
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestriction(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 498
    .end local v1  # "key":Ljava/lang/String;
    .end local v2  # "newValue":Z
    .end local v3  # "prevValue":Z
    :cond_1f
    goto :goto_6

    .line 499
    :cond_20
    return-void
.end method

.method public static areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 8
    .param p0, "a"  # Landroid/os/Bundle;
    .param p1, "b"  # Landroid/os/Bundle;

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

    move-result v0

    return v0

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
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_36

    .line 472
    return v2

    .line 474
    .end local v3  # "key":Ljava/lang/String;
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
    .restart local v3  # "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eq v4, v5, :cond_56

    .line 477
    return v2

    .line 479
    .end local v3  # "key":Ljava/lang/String;
    :cond_56
    goto :goto_3f

    .line 480
    :cond_57
    return v0
.end method

.method public static canDeviceOwnerChange(Ljava/lang/String;)Z
    .registers 2
    .param p0, "restriction"  # Ljava/lang/String;

    .line 389
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->IMMUTABLE_BY_OWNERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static canProfileOwnerChange(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "restriction"  # Ljava/lang/String;
    .param p1, "userId"  # I

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

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 400
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 397
    :goto_1d
    return v0
.end method

.method public static clone(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "in"  # Landroid/os/Bundle;

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
    .registers 3
    .param p0, "in"  # Landroid/os/Bundle;
    .param p1, "restriction"  # Ljava/lang/String;

    .line 342
    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "restrictions"  # Landroid/os/Bundle;

    .line 826
    const/4 v0, 0x1

    .line 827
    .local v0, "noneSet":Z
    if-eqz p2, :cond_4a

    .line 828
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 829
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    const/4 v0, 0x0

    .line 833
    .end local v2  # "key":Ljava/lang/String;
    :cond_31
    goto :goto_b

    .line 834
    :cond_32
    if-eqz v0, :cond_5f

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5f

    .line 838
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    :cond_5f
    :goto_5f
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
    .registers 6
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "userId"  # I
    .param p2, "userRestriction"  # Ljava/lang/String;
    .param p3, "newValue"  # Z

    .line 895
    if-nez p3, :cond_13

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 896
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 895
    invoke-virtual {v0, p2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 896
    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 895
    :goto_14
    return v0
.end method

.method public static isEmpty(Landroid/os/Bundle;)Z
    .registers 2
    .param p0, "in"  # Landroid/os/Bundle;

    .line 334
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isGlobal(ZLjava/lang/String;)Z
    .registers 3
    .param p0, "isDeviceOwner"  # Z
    .param p1, "key"  # Ljava/lang/String;

    .line 450
    if-eqz p0, :cond_12

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PRIMARY_USER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 451
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->GLOBAL_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_12
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->PROFILE_GLOBAL_RESTRICTIONS:Ljava/util/Set;

    .line 452
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->DEVICE_OWNER_ONLY_RESTRICTIONS:Ljava/util/Set;

    .line 453
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 450
    :goto_26
    return v0
.end method

.method public static isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 14
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "setting"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "value"  # Ljava/lang/String;
    .param p4, "callingUid"  # I

    .line 668
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 671
    .local v0, "mUserManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    .line 672
    .local v1, "checkAllUser":Z
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_24e

    :cond_15
    goto/16 :goto_13f

    :sswitch_17
    const-string/jumbo v2, "screen_brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x12

    goto/16 :goto_140

    :sswitch_24
    const-string/jumbo v2, "install_non_market_apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x2

    goto/16 :goto_140

    :sswitch_30
    const-string v2, "auto_time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x14

    goto/16 :goto_140

    :sswitch_3c
    const-string v2, "always_on_vpn_lockdown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x8

    goto/16 :goto_140

    :sswitch_48
    const-string v2, "doze_pulse_on_pick_up"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xe

    goto/16 :goto_140

    :sswitch_54
    const-string v2, "always_on_vpn_lockdown_whitelist"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x9

    goto/16 :goto_140

    :sswitch_60
    const-string/jumbo v2, "location_global_kill_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x11

    goto/16 :goto_140

    :sswitch_6d
    const-string v2, "auto_time_zone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x15

    goto/16 :goto_140

    :sswitch_79
    const-string/jumbo v2, "private_dns_specifier"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x18

    goto/16 :goto_140

    :sswitch_86
    const-string v2, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x10

    goto/16 :goto_140

    :sswitch_92
    const-string v2, "airplane_mode_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xb

    goto/16 :goto_140

    :sswitch_9e
    const-string/jumbo v2, "package_verifier_enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    goto/16 :goto_140

    :sswitch_aa
    const-string/jumbo v2, "private_dns_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x17

    goto/16 :goto_140

    :sswitch_b7
    const-string/jumbo v2, "screen_off_timeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x16

    goto/16 :goto_140

    :sswitch_c4
    const-string/jumbo v2, "safe_boot_disallowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xa

    goto/16 :goto_140

    :sswitch_d1
    const-string v2, "doze_pulse_on_long_press"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xf

    goto/16 :goto_140

    :sswitch_dd
    const-string v2, "doze_always_on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xd

    goto :goto_140

    :sswitch_e8
    const-string/jumbo v2, "preferred_network_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x6

    goto :goto_140

    :sswitch_f3
    const-string v2, "always_on_vpn_app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x7

    goto :goto_140

    :sswitch_fd
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x13

    goto :goto_140

    :sswitch_109
    const-string v2, "adb_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x3

    goto :goto_140

    :sswitch_113
    const-string/jumbo v2, "verifier_verify_adb_installs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x5

    goto :goto_140

    :sswitch_11e
    const-string v2, "doze_enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0xc

    goto :goto_140

    :sswitch_129
    const-string/jumbo v2, "location_providers_allowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    goto :goto_140

    :sswitch_134
    const-string/jumbo v2, "location_mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_140

    :goto_13f
    const/4 v2, -0x1

    :goto_140
    const-string v5, "1"

    const-string/jumbo v6, "no_config_location"

    const-string v7, "0"

    const/16 v8, 0x3e8

    packed-switch v2, :pswitch_data_2b4

    .line 808
    const-string v2, "data_roaming"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24c

    .line 809
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_238

    .line 810
    return v4

    .line 802
    :pswitch_15b  #0x17, 0x18
    if-ne p4, v8, :cond_15e

    .line 803
    return v4

    .line 805
    :cond_15e
    const-string v2, "disallow_config_private_dns"

    .line 806
    .local v2, "restriction":Ljava/lang/String;
    goto/16 :goto_23c

    .line 794
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_162  #0x16
    if-ne p4, v8, :cond_165

    .line 795
    return v4

    .line 797
    :cond_165
    const-string/jumbo v2, "no_config_screen_timeout"

    .line 798
    .restart local v2  # "restriction":Ljava/lang/String;
    goto/16 :goto_23c

    .line 787
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_16a  #0x15
    if-ne p4, v8, :cond_16d

    .line 788
    return v4

    .line 790
    :cond_16d
    const-string/jumbo v2, "no_config_date_time"

    .line 791
    .restart local v2  # "restriction":Ljava/lang/String;
    goto/16 :goto_23c

    .line 776
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_172  #0x14
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 777
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_189

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v5

    if-eqz v5, :cond_189

    .line 778
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_189

    .line 779
    return v3

    .line 780
    :cond_189
    if-ne p4, v8, :cond_18c

    .line 781
    return v4

    .line 783
    :cond_18c
    const-string/jumbo v3, "no_config_date_time"

    .line 784
    .local v3, "restriction":Ljava/lang/String;
    move-object v2, v3

    goto/16 :goto_23c

    .line 769
    .end local v2  # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3  # "restriction":Ljava/lang/String;
    :pswitch_192  #0x12, 0x13
    if-ne p4, v8, :cond_195

    .line 770
    return v4

    .line 772
    :cond_195
    const-string/jumbo v2, "no_config_brightness"

    .line 773
    .local v2, "restriction":Ljava/lang/String;
    goto/16 :goto_23c

    .line 760
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_19a  #0x11
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 761
    return v4

    .line 763
    :cond_1a1
    const-string/jumbo v2, "no_config_location"

    .line 764
    .restart local v2  # "restriction":Ljava/lang/String;
    const/4 v1, 0x1

    .line 765
    goto/16 :goto_23c

    .line 753
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_1a7  #0xc, 0xd, 0xe, 0xf, 0x10
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ae

    .line 754
    return v4

    .line 756
    :cond_1ae
    const-string/jumbo v2, "no_ambient_display"

    .line 757
    .restart local v2  # "restriction":Ljava/lang/String;
    goto/16 :goto_23c

    .line 742
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_1b3  #0xb
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 743
    return v4

    .line 745
    :cond_1ba
    const-string/jumbo v2, "no_airplane_mode"

    .line 746
    .restart local v2  # "restriction":Ljava/lang/String;
    goto/16 :goto_23c

    .line 735
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_1bf  #0xa
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 736
    return v4

    .line 738
    :cond_1c6
    const-string/jumbo v2, "no_safe_boot"

    .line 739
    .restart local v2  # "restriction":Ljava/lang/String;
    goto/16 :goto_23c

    .line 727
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_1cb  #0x7, 0x8, 0x9
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 728
    .local v2, "appId":I
    if-eq v2, v8, :cond_1d9

    if-nez v2, :cond_1d4

    goto :goto_1d9

    .line 731
    :cond_1d4
    const-string/jumbo v3, "no_config_vpn"

    .line 732
    .restart local v3  # "restriction":Ljava/lang/String;
    move-object v2, v3

    goto :goto_23c

    .line 729
    .end local v3  # "restriction":Ljava/lang/String;
    :cond_1d9
    :goto_1d9
    return v4

    .line 720
    .end local v2  # "appId":I
    :pswitch_1da  #0x6
    const-string/jumbo v2, "no_config_mobile_networks"

    .line 721
    .local v2, "restriction":Ljava/lang/String;
    goto :goto_23c

    .line 713
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_1de  #0x4, 0x5
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 714
    return v4

    .line 716
    :cond_1e5
    const-string v2, "ensure_verify_apps"

    .line 717
    .restart local v2  # "restriction":Ljava/lang/String;
    goto :goto_23c

    .line 705
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_1e8  #0x3
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ef

    .line 706
    return v4

    .line 708
    :cond_1ef
    const-string/jumbo v2, "no_debugging_features"

    .line 709
    .restart local v2  # "restriction":Ljava/lang/String;
    goto :goto_23c

    .line 698
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_1f3  #0x2
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 699
    return v4

    .line 701
    :cond_1fa
    const-string/jumbo v2, "no_install_unknown_sources"

    .line 702
    .restart local v2  # "restriction":Ljava/lang/String;
    goto :goto_23c

    .line 685
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_1fe  #0x1
    nop

    .line 686
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 685
    invoke-virtual {v0, v6, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_20c

    if-eq p4, v8, :cond_20c

    .line 688
    return v3

    .line 689
    :cond_20c
    if-eqz p3, :cond_217

    const-string v2, "-"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_217

    .line 692
    return v4

    .line 694
    :cond_217
    const-string/jumbo v2, "no_share_location"

    .line 695
    .restart local v2  # "restriction":Ljava/lang/String;
    goto :goto_23c

    .line 674
    .end local v2  # "restriction":Ljava/lang/String;
    :pswitch_21b  #0x0
    nop

    .line 675
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 674
    invoke-virtual {v0, v6, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_229

    if-eq p4, v8, :cond_229

    .line 677
    return v3

    .line 678
    :cond_229
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_234

    .line 679
    return v4

    .line 681
    :cond_234
    const-string/jumbo v2, "no_share_location"

    .line 682
    .restart local v2  # "restriction":Ljava/lang/String;
    goto :goto_23c

    .line 812
    .end local v2  # "restriction":Ljava/lang/String;
    :cond_238
    const-string/jumbo v2, "no_data_roaming"

    .line 813
    .restart local v2  # "restriction":Ljava/lang/String;
    nop

    .line 818
    :goto_23c
    if-eqz v1, :cond_243

    .line 819
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 821
    :cond_243
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    return v3

    .line 815
    .end local v2  # "restriction":Ljava/lang/String;
    :cond_24c
    return v4

    nop

    :sswitch_data_24e
    .sparse-switch
        -0x6b192413 -> :sswitch_134
        -0x596f7aff -> :sswitch_129
        -0x58d2ff08 -> :sswitch_11e
        -0x4280630b -> :sswitch_113
        -0x39d6645f -> :sswitch_109
        -0x294f7102 -> :sswitch_fd
        -0x252f8dda -> :sswitch_f3
        -0x18d5c3ee -> :sswitch_e8
        -0x611a9fa -> :sswitch_dd
        -0x1efffcf -> :sswitch_d1
        0x3756c15 -> :sswitch_c4
        0xf689f3e -> :sswitch_b7
        0x28c0ce35 -> :sswitch_aa
        0x2af40513 -> :sswitch_9e
        0x3733860e -> :sswitch_92
        0x3ff919a6 -> :sswitch_86
        0x48f0b46c -> :sswitch_79
        0x4c070b4e -> :sswitch_6d
        0x4df27163 -> :sswitch_60
        0x4f84b830 -> :sswitch_54
        0x5f8b91a8 -> :sswitch_48
        0x62299f68 -> :sswitch_3c
        0x6305635d -> :sswitch_30
        0x6565577f -> :sswitch_24
        0x67748604 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_2b4
    .packed-switch 0x0
        :pswitch_21b  #00000000
        :pswitch_1fe  #00000001
        :pswitch_1f3  #00000002
        :pswitch_1e8  #00000003
        :pswitch_1de  #00000004
        :pswitch_1de  #00000005
        :pswitch_1da  #00000006
        :pswitch_1cb  #00000007
        :pswitch_1cb  #00000008
        :pswitch_1cb  #00000009
        :pswitch_1bf  #0000000a
        :pswitch_1b3  #0000000b
        :pswitch_1a7  #0000000c
        :pswitch_1a7  #0000000d
        :pswitch_1a7  #0000000e
        :pswitch_1a7  #0000000f
        :pswitch_1a7  #00000010
        :pswitch_19a  #00000011
        :pswitch_192  #00000012
        :pswitch_192  #00000013
        :pswitch_172  #00000014
        :pswitch_16a  #00000015
        :pswitch_162  #00000016
        :pswitch_15b  #00000017
        :pswitch_15b  #00000018
    .end packed-switch
.end method

.method private static isSystemApp(I[Ljava/lang/String;)Z
    .registers 10
    .param p0, "uid"  # I
    .param p1, "packageList"  # [Ljava/lang/String;

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
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, p1

    if-ge v3, v4, :cond_32

    .line 273
    const v4, 0xc2000

    .line 276
    .local v4, "flags":I
    :try_start_17
    aget-object v5, p1, v3

    const v6, 0xc2000

    .line 277
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v2, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 278
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2e

    if-eqz v6, :cond_2d

    .line 279
    return v1

    .line 283
    .end local v4  # "flags":I
    .end local v5  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2d
    goto :goto_2f

    .line 281
    :catch_2e
    move-exception v4

    .line 271
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 285
    .end local v3  # "i":I
    :cond_32
    return v0
.end method

.method public static isValidRestriction(Ljava/lang/String;)Z
    .registers 7
    .param p0, "restriction"  # Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_62

    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 234
    .local v0, "uid":I
    const/4 v2, 0x0

    .line 236
    .local v2, "pkgs":[Ljava/lang/String;
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_18

    move-object v2, v3

    .line 239
    goto :goto_19

    .line 237
    :catch_18
    move-exception v3

    .line 240
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown restriction queried by uid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .local v3, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const/4 v4, 0x0

    if-eqz v2, :cond_40

    array-length v5, v2

    if-lez v5, :cond_40

    .line 243
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    array-length v5, v2

    if-le v5, v1, :cond_3b

    .line 246
    const-string v1, " et al"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_3b
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_40
    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, "UserRestrictionsUtils"

    if-eqz p0, :cond_5a

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isSystemApp(I[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 255
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_61
    return v4

    .line 259
    .end local v0  # "uid":I
    .end local v2  # "pkgs":[Ljava/lang/String;
    .end local v3  # "msg":Ljava/lang/StringBuilder;
    :cond_62
    return v1
.end method

.method public static merge(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 7
    .param p0, "dest"  # Landroid/os/Bundle;
    .param p1, "in"  # Landroid/os/Bundle;

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
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 364
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 366
    .end local v3  # "key":Ljava/lang/String;
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
    .local p0, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 375
    const/4 v0, 0x0

    return-object v0

    .line 377
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    .local v0, "result":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
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
    .end local v1  # "i":I
    :cond_20
    return-object v0
.end method

.method public static moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 9
    .param p0, "restrictionKey"  # Ljava/lang/String;
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
    .local p1, "srcRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .local p2, "destRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 848
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 849
    .local v1, "key":I
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 850
    .local v2, "from":Landroid/os/Bundle;
    invoke-static {v2, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3a

    .line 851
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 853
    .local v3, "to":Landroid/os/Bundle;
    if-nez v3, :cond_2c

    .line 854
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v5

    .line 855
    invoke-virtual {p2, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 857
    :cond_2c
    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 859
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 860
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 861
    add-int/lit8 v0, v0, -0x1

    .line 847
    .end local v1  # "key":I
    .end local v2  # "from":Landroid/os/Bundle;
    .end local v3  # "to":Landroid/os/Bundle;
    :cond_3a
    add-int/2addr v0, v4

    goto :goto_1

    .line 865
    .end local v0  # "i":I
    :cond_3c
    return-void
.end method

.method private static newSetWithUniqueCheck([Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "strings"  # [Ljava/lang/String;
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
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    array-length v2, p0

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 73
    return-object v0
.end method

.method public static nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "in"  # Landroid/os/Bundle;

    .line 330
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_9
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 2
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;

    .line 321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v0, "result":Landroid/os/Bundle;
    invoke-static {p0, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 323
    return-object v0
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "restrictions"  # Landroid/os/Bundle;

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
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 315
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    .end local v1  # "key":Ljava/lang/String;
    .end local v2  # "value":Ljava/lang/String;
    :cond_23
    goto :goto_9

    .line 318
    :cond_24
    return-void
.end method

.method public static varargs restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "oldRestrictions"  # Landroid/os/Bundle;
    .param p1, "newRestrictions"  # Landroid/os/Bundle;
    .param p2, "restrictions"  # [Ljava/lang/String;

    .line 875
    array-length v0, p2

    if-nez v0, :cond_8

    .line 876
    invoke-static {p0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 878
    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1e

    aget-object v3, p2, v2

    .line 879
    .local v3, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 880
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v4, v5, :cond_1b

    .line 881
    const/4 v0, 0x1

    return v0

    .line 878
    .end local v3  # "restriction":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 884
    :cond_1e
    return v1
.end method

.method private static setInstallMarketAppsRestriction(Landroid/content/ContentResolver;II)V
    .registers 4
    .param p0, "cr"  # Landroid/content/ContentResolver;
    .param p1, "userId"  # I
    .param p2, "settingValue"  # I

    .line 889
    const-string/jumbo v0, "install_non_market_apps"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 891
    return-void
.end method

.method public static sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9
    .param p0, "in"  # Landroid/os/Bundle;
    .param p1, "isDeviceOwner"  # Z
    .param p2, "cameraRestrictionScope"  # I
    .param p3, "global"  # Landroid/os/Bundle;
    .param p4, "local"  # Landroid/os/Bundle;

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

    move-result v0

    if-nez v0, :cond_19

    goto :goto_43

    .line 434
    :cond_19
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 435
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 436
    goto :goto_21

    .line 438
    :cond_34
    invoke-static {p1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isGlobal(ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 439
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_41

    .line 441
    :cond_3e
    invoke-virtual {p4, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    .end local v2  # "key":Ljava/lang/String;
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
    .param p0, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "restrictions"  # Landroid/os/Bundle;
    .param p2, "tag"  # Ljava/lang/String;
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
    .local v2, "key":Ljava/lang/String;
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

    move-result-object v3

    const-string v4, "UserRestrictionsUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v2  # "key":Ljava/lang/String;
    goto :goto_f

    .line 307
    :cond_50
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    return-void
.end method

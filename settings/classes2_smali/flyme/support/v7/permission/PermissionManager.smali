.class public Lflyme/support/v7/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field private static volatile sInstance:Lflyme/support/v7/permission/PermissionManager;


# instance fields
.field private mAllPermissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLocalizations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lflyme/support/v7/permission/Localization;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManagerProxy:Lflyme/support/v7/permission/PackageManagerProxy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lflyme/support/v7/permission/PackageManagerProxy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lflyme/support/v7/permission/PackageManagerProxy;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mPackageManagerProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    .line 37
    invoke-direct {p0}, Lflyme/support/v7/permission/PermissionManager;->initLocalization()V

    .line 38
    invoke-direct {p0}, Lflyme/support/v7/permission/PermissionManager;->loadAllPermissions()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lflyme/support/v7/permission/PermissionManager;
    .registers 3

    .line 25
    sget-object v0, Lflyme/support/v7/permission/PermissionManager;->sInstance:Lflyme/support/v7/permission/PermissionManager;

    if-nez v0, :cond_17

    .line 26
    const-class v0, Lflyme/support/v7/permission/PermissionManager;

    monitor-enter v0

    .line 27
    :try_start_7
    sget-object v1, Lflyme/support/v7/permission/PermissionManager;->sInstance:Lflyme/support/v7/permission/PermissionManager;

    if-nez v1, :cond_12

    .line 28
    new-instance v1, Lflyme/support/v7/permission/PermissionManager;

    invoke-direct {v1, p0}, Lflyme/support/v7/permission/PermissionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lflyme/support/v7/permission/PermissionManager;->sInstance:Lflyme/support/v7/permission/PermissionManager;

    .line 30
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 32
    :cond_17
    :goto_17
    sget-object p0, Lflyme/support/v7/permission/PermissionManager;->sInstance:Lflyme/support/v7/permission/PermissionManager;

    return-object p0
.end method

.method private getParentGroup(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 209
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionManager;->mAllPermissions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method private initLocalization()V
    .registers 15

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    .line 43
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_net:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "meizu.permission-group.NETWORK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_location:I

    const/4 v5, 0x1

    const-string v6, "定位"

    invoke-direct {v1, v5, v6, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.LOCATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_camera:I

    const/4 v6, 0x2

    invoke-direct {v1, v6, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.CAMERA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_microphone:I

    const/4 v7, 0x3

    invoke-direct {v1, v7, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.MICROPHONE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_phone:I

    const/4 v8, 0x4

    invoke-direct {v1, v8, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.PHONE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_sms:I

    const/4 v9, 0x5

    const-string v10, "信息"

    invoke-direct {v1, v9, v10, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.SMS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_contacts:I

    const/4 v10, 0x6

    invoke-direct {v1, v10, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.CONTACTS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_calllog:I

    const/4 v11, 0x7

    invoke-direct {v1, v11, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.CALL_LOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_storage:I

    const/16 v12, 0x8

    const-string v13, "手机存储"

    invoke-direct {v1, v12, v13, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.STORAGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_net:I

    const/16 v13, 0x9

    invoke-direct {v1, v13, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "meizu.permission-group.BLUETOOTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_net:I

    const/16 v13, 0xa

    invoke-direct {v1, v13, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "meizu.permission-group.CHANGE_NETWORK"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_calendar:I

    const/16 v13, 0xb

    invoke-direct {v1, v13, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.CALENDAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_sensors:I

    const/16 v13, 0xc

    invoke-direct {v1, v13, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.SENSORS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_sensors:I

    const/16 v13, 0xd

    invoke-direct {v1, v13, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission-group.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    sget v2, Lflyme/support/v7/appcompat/R$drawable;->mz_permission_other:I

    const/16 v13, 0xe

    invoke-direct {v1, v13, v3, v2}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "meizu.permission-group.OTHER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v4, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.CALL_PHONE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "接听电话"

    invoke-direct {v1, v5, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ANSWER_PHONE_CALLS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "拨打或接听 SIP 电话"

    invoke-direct {v1, v6, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.USE_SIP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v7, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "读取手机状态和识别码"

    invoke-direct {v1, v8, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v9, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "继续进行来自其他应用的通话"

    invoke-direct {v1, v10, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ACCEPT_HANDOVER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v11, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ACCESS_UCE_OPTIONS_SERVICE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v12, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ACCESS_UCE_PRESENCE_SERVICE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v4, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "修改通话记录"

    invoke-direct {v1, v5, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "修改默认电话应用"

    invoke-direct {v1, v6, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "读取短信或彩信"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.READ_SMS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "读取小区广播"

    invoke-direct {v1, v5, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "发送短信或彩信"

    invoke-direct {v1, v6, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.SEND_SMS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "接收短信"

    invoke-direct {v1, v7, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "接收彩信"

    invoke-direct {v1, v8, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "接收 WAP 讯息"

    invoke-direct {v1, v9, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "修改短信或彩信"

    invoke-direct {v1, v10, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.WRITE_SMS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v4, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "修改联系人"

    invoke-direct {v1, v5, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "读取应用账号"

    invoke-direct {v1, v6, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "拍照或录像"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.CAMERA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "使用麦克风或录音"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "获取确切位置信息"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "获取大致位置信息"

    invoke-direct {v1, v5, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "应用在后台时获取位置信息"

    invoke-direct {v1, v6, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "读取日历"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "修改日历"

    invoke-direct {v1, v5, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "读取照片、媒体内容和文件"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "修改照片、媒体内容和文件"

    invoke-direct {v1, v5, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "开启或关闭无线网络"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v4, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v5, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "读取身体传感器数据"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v5, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.USE_FINGERPRINT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v6, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.USE_BIOMETRIC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "识别健身运动类型和状态"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    const-string v2, "连接移动网络和无线网络"

    invoke-direct {v1, v4, v2, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.INTERNET"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v1, Lflyme/support/v7/permission/Localization;

    invoke-direct {v1, v5, v3, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    new-instance v0, Lflyme/support/v7/permission/Localization;

    const-string v1, "修改网络连接"

    invoke-direct {v0, v6, v1, v4}, Lflyme/support/v7/permission/Localization;-><init>(ILjava/lang/String;I)V

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private insertGroupIfAbsent(Ljava/util/List;Ljava/lang/String;)Lflyme/support/v7/permission/PermissionGroup;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/permission/PermissionGroup;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lflyme/support/v7/permission/PermissionGroup;"
        }
    .end annotation

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/permission/PermissionGroup;

    .line 177
    invoke-virtual {v1}, Lflyme/support/v7/permission/PermissionGroup;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 181
    :cond_1b
    new-instance v0, Lflyme/support/v7/permission/PermissionGroup;

    iget-object v1, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/permission/Localization;

    iget-object p0, p0, Lflyme/support/v7/permission/PermissionManager;->mPackageManagerProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    invoke-direct {v0, p2, v1, p0}, Lflyme/support/v7/permission/PermissionGroup;-><init>(Ljava/lang/String;Lflyme/support/v7/permission/Localization;Lflyme/support/v7/permission/PackageManagerProxy;)V

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private insertPermissionIfAbsent(Ljava/util/List;Ljava/lang/String;)Lflyme/support/v7/permission/Permission;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/permission/PermissionGroup;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lflyme/support/v7/permission/Permission;"
        }
    .end annotation

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/permission/PermissionGroup;

    .line 189
    invoke-virtual {v1, p2}, Lflyme/support/v7/permission/PermissionGroup;->getSubPermission(Ljava/lang/String;)Lflyme/support/v7/permission/Permission;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    .line 193
    :cond_17
    new-instance v0, Lflyme/support/v7/permission/Permission;

    iget-object v1, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/permission/Localization;

    iget-object v2, p0, Lflyme/support/v7/permission/PermissionManager;->mPackageManagerProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    invoke-direct {v0, p2, v1, v2}, Lflyme/support/v7/permission/Permission;-><init>(Ljava/lang/String;Lflyme/support/v7/permission/Localization;Lflyme/support/v7/permission/PackageManagerProxy;)V

    .line 195
    invoke-direct {p0, p2}, Lflyme/support/v7/permission/PermissionManager;->getParentGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2e

    const-string p2, "meizu.permission-group.OTHER"

    .line 199
    :cond_2e
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/permission/PermissionManager;->insertGroupIfAbsent(Ljava/util/List;Ljava/lang/String;)Lflyme/support/v7/permission/PermissionGroup;

    move-result-object p0

    .line 200
    invoke-virtual {p0, v0}, Lflyme/support/v7/permission/PermissionGroup;->addSubPermission(Lflyme/support/v7/permission/Permission;)V

    return-object v0
.end method

.method private isGroup(Ljava/lang/String;)Z
    .registers 2

    .line 205
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionManager;->mAllPermissions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private loadAllPermissions()V
    .registers 5

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mAllPermissions:Ljava/util/Map;

    .line 131
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionManager;->mPackageManagerProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    invoke-virtual {v0}, Lflyme/support/v7/permission/PackageManagerProxy;->getAllPermissionGroups()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lflyme/support/v7/permission/PermissionManager;->mPackageManagerProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    invoke-virtual {v2, v1}, Lflyme/support/v7/permission/PackageManagerProxy;->queryPermissionsByGroup(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lflyme/support/v7/permission/PermissionManager;->mAllPermissions:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_29
    return-void
.end method


# virtual methods
.method public getPermissionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 139
    new-instance v0, Lflyme/support/v7/permission/Permission;

    iget-object v1, p0, Lflyme/support/v7/permission/PermissionManager;->mLocalizations:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/permission/Localization;

    iget-object p0, p0, Lflyme/support/v7/permission/PermissionManager;->mPackageManagerProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    invoke-direct {v0, p2, v1, p0}, Lflyme/support/v7/permission/Permission;-><init>(Ljava/lang/String;Lflyme/support/v7/permission/Localization;Lflyme/support/v7/permission/PackageManagerProxy;)V

    invoke-virtual {v0, p1}, Lflyme/support/v7/permission/Permission;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequestPermission([Ljava/lang/String;[Ljava/lang/String;[I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Lflyme/support/v7/permission/PermissionGroup;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_85

    .line 143
    array-length v0, p1

    if-gtz v0, :cond_7

    goto/16 :goto_85

    .line 146
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 148
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_69

    .line 149
    aget-object v2, p1, v1

    .line 150
    invoke-direct {p0, v2}, Lflyme/support/v7/permission/PermissionManager;->isGroup(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 151
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/permission/PermissionManager;->insertGroupIfAbsent(Ljava/util/List;Ljava/lang/String;)Lflyme/support/v7/permission/PermissionGroup;

    move-result-object v3

    if-eqz p2, :cond_2a

    .line 152
    array-length v4, p2

    if-ge v1, v4, :cond_2a

    aget-object v4, p2, v1

    if-eqz v4, :cond_2a

    .line 153
    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Lflyme/support/v7/permission/PermissionGroup;->setDisplayName(Ljava/lang/String;)V

    :cond_2a
    if-eqz p3, :cond_38

    .line 155
    array-length v4, p3

    if-ge v1, v4, :cond_38

    aget v4, p3, v1

    if-eqz v4, :cond_38

    .line 156
    aget v4, p3, v1

    invoke-virtual {v3, v4}, Lflyme/support/v7/permission/PermissionGroup;->setIconId(I)V

    .line 158
    :cond_38
    iget-object v3, p0, Lflyme/support/v7/permission/PermissionManager;->mAllPermissions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    invoke-direct {p0, v0, v3}, Lflyme/support/v7/permission/PermissionManager;->insertPermissionIfAbsent(Ljava/util/List;Ljava/lang/String;)Lflyme/support/v7/permission/Permission;

    goto :goto_44

    .line 162
    :cond_54
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/permission/PermissionManager;->insertPermissionIfAbsent(Ljava/util/List;Ljava/lang/String;)Lflyme/support/v7/permission/Permission;

    move-result-object v2

    if-eqz p2, :cond_66

    .line 163
    array-length v3, p2

    if-ge v1, v3, :cond_66

    aget-object v3, p2, v1

    if-eqz v3, :cond_66

    .line 164
    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lflyme/support/v7/permission/Permission;->setDisplayName(Ljava/lang/String;)V

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 168
    :cond_69
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/permission/PermissionGroup;

    .line 170
    invoke-virtual {p1}, Lflyme/support/v7/permission/PermissionGroup;->getSubPermission()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_70

    :cond_84
    return-object v0

    .line 144
    :cond_85
    :goto_85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

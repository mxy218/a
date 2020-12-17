.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    }
.end annotation


# static fields
.field private static final ACTION_TRACK:Ljava/lang/String; = "com.android.fitness.TRACK"

.field private static final ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_WHITELISTED:Ljava/lang/String; = "whitelisted"

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INTENT_QUERY_FLAGS:I = 0xc2000

.field private static final DEFAULT_PACKAGE_INFO_QUERY_FLAGS:I = 0x2000b000

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocationExtraPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mLock:Ljava/lang/Object;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

.field private final mServiceInternal:Landroid/content/pm/PackageManagerInternal;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 130
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 141
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 148
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    .line 155
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 160
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 166
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 176
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 181
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 186
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 191
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "permissionManager"  # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    .line 217
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    .line 222
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 223
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 235
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 236
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p1, "x1"  # Landroid/util/ArrayMap;

    .line 100
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 100
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p0, "pkg"  # Landroid/content/pm/PackageInfo;

    .line 1590
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "permission"  # Ljava/lang/String;

    .line 1094
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 1096
    :catch_e
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .registers 7

    .line 1428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1430
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1431
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1433
    :cond_23
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1434
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1435
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1437
    :cond_40
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1438
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1439
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1441
    :cond_5d
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1442
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1443
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1445
    :cond_7a
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductServicesDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1447
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1448
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1451
    :cond_97
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "android.hardware.type.embedded"

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1452
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 1453
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1454
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1457
    :cond_c3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_cb

    const/4 v2, 0x0

    goto :goto_d3

    :cond_cb
    new-array v2, v4, [Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    :goto_d3
    return-object v2
.end method

.method private getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "authority"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 993
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 995
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_12

    .line 996
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 998
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userId"  # I

    .line 935
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 937
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_15

    goto :goto_2c

    .line 940
    :cond_15
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 941
    return-object v1

    .line 943
    :cond_20
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 944
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object v1, v2

    :cond_2b
    return-object v1

    .line 938
    .end local v2  # "packageName":Ljava/lang/String;
    :cond_2c
    :goto_2c
    return-object v1
.end method

.method private getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "intentAction"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 931
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "category"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 789
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;
    .registers 10
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userId"  # I

    .line 953
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 955
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 956
    return-object v1

    .line 958
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 959
    .local v2, "handlerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_2c

    .line 960
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 961
    .local v4, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 962
    .local v5, "handlerPackage":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 963
    return-object v5

    .line 959
    .end local v4  # "handler":Landroid/content/pm/ResolveInfo;
    .end local v5  # "handlerPackage":Ljava/lang/String;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 966
    .end local v3  # "i":I
    :cond_2c
    return-object v1
.end method

.method private getDefaultSystemHandlerServicePackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "intentAction"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 948
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 10
    .param p1, "syncAdapterPackageNames"  # [Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v0, "syncAdapterPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 975
    .local v1, "homeIntent":Landroid/content/Intent;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_37

    aget-object v4, p1, v3

    .line 976
    .local v4, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0xc2000

    invoke-virtual {v5, v1, v6, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 980
    .local v5, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2b

    .line 981
    goto :goto_34

    .line 984
    :cond_2b
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 985
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    .end local v4  # "syncAdapterPackageName":Ljava/lang/String;
    .end local v5  # "homeActivity":Landroid/content/pm/ResolveInfo;
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 989
    :cond_37
    return-object v0
.end method

.method private getKnownPackage(II)Ljava/lang/String;
    .registers 4
    .param p1, "knownPkgId"  # I
    .param p2, "userId"  # I

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 1347
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "extraFlags"  # I

    .line 1352
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1353
    return-object v0

    .line 1356
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x2000b000

    or-int/2addr v2, p2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 1358
    :catch_13
    move-exception v1

    .line 1359
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageNot found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1360
    return-object v0
.end method

.method private getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 1343
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method private grantDefaultPermissionExceptions(I)V
    .registers 20
    .param p1, "userId"  # I

    .line 1386
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1388
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1393
    :try_start_b
    iget-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v0, :cond_15

    .line 1394
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1396
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_9c

    .line 1398
    const/4 v0, 0x0

    .line 1399
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 1400
    .local v9, "exceptionCount":I
    const/4 v1, 0x0

    move/from16 v17, v1

    move-object v1, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_23
    if-ge v0, v9, :cond_9b

    .line 1401
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 1402
    .local v10, "packageName":Ljava/lang/String;
    invoke-direct {v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 1403
    .local v11, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    .line 1404
    .local v12, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 1405
    .local v13, "permissionGrantCount":I
    const/4 v2, 0x0

    move v14, v2

    .local v14, "j":I
    :goto_41
    if-ge v14, v13, :cond_98

    .line 1406
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1407
    .local v15, "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    iget-object v2, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-direct {v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isPermissionDangerous(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which isn\'t dangerous"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    goto :goto_95

    .line 1412
    :cond_70
    if-nez v1, :cond_7a

    .line 1413
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    move-object v7, v1

    goto :goto_7e

    .line 1415
    :cond_7a
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    move-object v7, v1

    .line 1417
    .end local v1  # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_7e
    iget-object v1, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1420
    iget-boolean v4, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    iget-boolean v5, v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v16, v7

    .end local v7  # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    move-object/from16 v1, v16

    .line 1405
    .end local v15  # "permissionGrant":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    .end local v16  # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1  # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_95
    add-int/lit8 v14, v14, 0x1

    goto :goto_41

    .line 1400
    .end local v10  # "packageName":Ljava/lang/String;
    .end local v11  # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12  # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    .end local v13  # "permissionGrantCount":I
    .end local v14  # "j":I
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1425
    .end local v0  # "i":I
    :cond_9b
    return-void

    .line 1396
    .end local v1  # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9  # "exceptionCount":I
    :catchall_9c
    move-exception v0

    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v0
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V
    .registers 8
    .param p1, "dialerPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 809
    if-nez p1, :cond_3

    .line 810
    return-void

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 813
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 814
    .local v0, "isPhonePermFixed":Z
    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 815
    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v1

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_26

    .line 817
    :cond_1d
    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v1

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 819
    :goto_26
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v3, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v1

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 821
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSimCallManager(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 850
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 851
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 853
    :cond_9
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V
    .registers 6
    .param p1, "smsPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 824
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 827
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Ljava/lang/String;I)V
    .registers 6
    .param p1, "useOpenWifiPackage"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 831
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 832
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .registers 38
    .param p1, "userId"  # I

    .line 436
    move-object/from16 v7, p0

    move/from16 v8, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default platform handlers for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_1d
    iget-object v0, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 449
    .local v0, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v9, v2

    .line 450
    .local v9, "locationExtraPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v10, v2

    .line 451
    .local v10, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v11, v2

    .line 452
    .local v11, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v12, v2

    .line 453
    .local v12, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v13, v2

    .line 454
    .local v13, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object v14, v2

    .line 455
    .local v14, "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    iget-object v2, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object v15, v2

    .line 456
    .local v15, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_582

    .line 458
    if-eqz v10, :cond_3c

    .line 459
    invoke-interface {v10, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    move-object v6, v2

    .line 460
    .local v6, "voiceInteractPackageNames":[Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 461
    invoke-interface {v0, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    move-object v5, v2

    .line 462
    .local v5, "locationPackageNames":[Ljava/lang/String;
    if-eqz v9, :cond_4e

    .line 463
    invoke-interface {v9, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    move-object v4, v2

    .line 464
    .local v4, "locationExtraPackageNames":[Ljava/lang/String;
    if-eqz v11, :cond_57

    .line 465
    invoke-interface {v11, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    move-object v3, v2

    .line 466
    .local v3, "smsAppPackageNames":[Ljava/lang/String;
    if-eqz v12, :cond_60

    .line 467
    invoke-interface {v12, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_61

    :cond_60
    const/4 v2, 0x0

    .line 468
    .local v2, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_61
    if-eqz v13, :cond_68

    .line 469
    invoke-interface {v13, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_6a

    :cond_68
    const/16 v16, 0x0

    :goto_6a
    move-object/from16 v17, v16

    .line 470
    .local v17, "simCallManagerPackageNames":[Ljava/lang/String;
    if-eqz v14, :cond_73

    .line 471
    invoke-interface {v14, v8}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v16

    goto :goto_75

    :cond_73
    const/16 v16, 0x0

    :goto_75
    move-object/from16 v18, v16

    .line 472
    .local v18, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    if-eqz v15, :cond_80

    .line 473
    const-string v1, "com.android.contacts"

    invoke-interface {v15, v1, v8}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_81

    :cond_80
    const/4 v1, 0x0

    .line 474
    .local v1, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_81
    if-eqz v15, :cond_8e

    .line 475
    move-object/from16 v19, v0

    .end local v0  # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v19, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    const-string v0, "com.android.calendar"

    invoke-interface {v15, v0, v8}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_92

    .end local v19  # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v0  # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_8e
    move-object/from16 v19, v0

    .end local v0  # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v19  # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    const/16 v16, 0x0

    :goto_92
    move-object/from16 v0, v16

    .line 478
    .local v0, "calendarSyncAdapterPackages":[Ljava/lang/String;
    nop

    .line 479
    move-object/from16 v16, v5

    .end local v5  # "locationPackageNames":[Ljava/lang/String;
    .local v16, "locationPackageNames":[Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v20, v4

    .end local v4  # "locationExtraPackageNames":[Ljava/lang/String;
    .local v20, "locationExtraPackageNames":[Ljava/lang/String;
    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v22, v6

    .end local v6  # "voiceInteractPackageNames":[Ljava/lang/String;
    .local v22, "voiceInteractPackageNames":[Ljava/lang/String;
    new-array v6, v5, [Ljava/util/Set;

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v23, v6, v5

    .line 478
    invoke-direct {v7, v4, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 483
    const/4 v6, 0x3

    invoke-direct {v7, v6, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "verifier":Ljava/lang/String;
    move-object/from16 v25, v9

    const/4 v6, 0x1

    .end local v9  # "locationExtraPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v25, "locationExtraPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    new-array v9, v6, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v9, v5

    invoke-direct {v7, v4, v8, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 485
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/util/Set;

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v9, v6, v5

    sget-object v9, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    aput-object v9, v6, v5

    invoke-direct {v7, v4, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 488
    nop

    .line 489
    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    new-array v5, v9, [Ljava/util/Set;

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v26, 0x0

    aput-object v27, v5, v26

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v24, 0x1

    aput-object v27, v5, v24

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x2

    aput-object v27, v5, v21

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v28, v4

    const/4 v4, 0x3

    .end local v4  # "verifier":Ljava/lang/String;
    .local v28, "verifier":Ljava/lang/String;
    aput-object v27, v5, v4

    .line 488
    invoke-direct {v7, v6, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 494
    nop

    .line 495
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/util/Set;

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v26, 0x0

    aput-object v23, v6, v26

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    aput-object v23, v6, v4

    sget-object v23, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x2

    aput-object v23, v6, v21

    .line 494
    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 499
    nop

    .line 500
    const-string v5, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v23, 0x0

    aput-object v4, v6, v23

    .line 499
    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 505
    nop

    .line 506
    const-string/jumbo v4, "media"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v6, v23

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v9, 0x1

    aput-object v5, v6, v9

    .line 505
    invoke-direct {v7, v4, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 510
    nop

    .line 511
    const-string v4, "downloads"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v23

    .line 510
    invoke-direct {v7, v4, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 515
    nop

    .line 516
    const-string v4, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v23

    .line 515
    invoke-direct {v7, v4, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 521
    nop

    .line 522
    const-string v4, "com.android.externalstorage.documents"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v23

    .line 521
    invoke-direct {v7, v4, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 526
    nop

    .line 527
    const-string v4, "android.credentials.INSTALL"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v23

    .line 526
    invoke-direct {v7, v4, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 531
    if-nez v2, :cond_182

    .line 532
    nop

    .line 533
    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "dialerPackage":Ljava/lang/String;
    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V

    .line 535
    .end local v4  # "dialerPackage":Ljava/lang/String;
    goto :goto_18e

    .line 536
    :cond_182
    array-length v4, v2

    const/4 v5, 0x0

    :goto_184
    if-ge v5, v4, :cond_18e

    aget-object v6, v2, v5

    .line 537
    .local v6, "dialerAppPackageName":Ljava/lang/String;
    invoke-direct {v7, v6, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V

    .line 536
    .end local v6  # "dialerAppPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_184

    .line 542
    :cond_18e
    :goto_18e
    move-object/from16 v9, v17

    .end local v17  # "simCallManagerPackageNames":[Ljava/lang/String;
    .local v9, "simCallManagerPackageNames":[Ljava/lang/String;
    if-eqz v9, :cond_19e

    .line 543
    array-length v4, v9

    const/4 v5, 0x0

    :goto_194
    if-ge v5, v4, :cond_19e

    aget-object v6, v9, v5

    .line 544
    .local v6, "simCallManagerPackageName":Ljava/lang/String;
    invoke-direct {v7, v6, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSimCallManager(Ljava/lang/String;I)V

    .line 543
    .end local v6  # "simCallManagerPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_194

    .line 550
    :cond_19e
    move-object/from16 v6, v18

    .end local v18  # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v6, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    if-eqz v6, :cond_1b5

    .line 551
    array-length v4, v6

    const/4 v5, 0x0

    :goto_1a4
    if-ge v5, v4, :cond_1b2

    move-object/from16 v17, v2

    .end local v2  # "dialerAppPackageNames":[Ljava/lang/String;
    .local v17, "dialerAppPackageNames":[Ljava/lang/String;
    aget-object v2, v6, v5

    .line 552
    .local v2, "useOpenWifiPackageName":Ljava/lang/String;
    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Ljava/lang/String;I)V

    .line 551
    .end local v2  # "useOpenWifiPackageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v17

    goto :goto_1a4

    .end local v17  # "dialerAppPackageNames":[Ljava/lang/String;
    .local v2, "dialerAppPackageNames":[Ljava/lang/String;
    :cond_1b2
    move-object/from16 v17, v2

    .end local v2  # "dialerAppPackageNames":[Ljava/lang/String;
    .restart local v17  # "dialerAppPackageNames":[Ljava/lang/String;
    goto :goto_1b7

    .line 550
    .end local v17  # "dialerAppPackageNames":[Ljava/lang/String;
    .restart local v2  # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_1b5
    move-object/from16 v17, v2

    .line 558
    .end local v2  # "dialerAppPackageNames":[Ljava/lang/String;
    .restart local v17  # "dialerAppPackageNames":[Ljava/lang/String;
    :goto_1b7
    if-nez v3, :cond_1c3

    .line 559
    const-string v2, "android.intent.category.APP_MESSAGING"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "smsPackage":Ljava/lang/String;
    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V

    .line 562
    .end local v2  # "smsPackage":Ljava/lang/String;
    goto :goto_1cf

    .line 563
    :cond_1c3
    array-length v2, v3

    const/4 v4, 0x0

    :goto_1c5
    if-ge v4, v2, :cond_1cf

    aget-object v5, v3, v4

    .line 564
    .local v5, "smsPackage":Ljava/lang/String;
    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V

    .line 563
    .end local v5  # "smsPackage":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c5

    .line 569
    :cond_1cf
    :goto_1cf
    nop

    .line 570
    const-string v2, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/util/Set;

    sget-object v18, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v23, 0x0

    aput-object v18, v5, v23

    .line 569
    invoke-direct {v7, v2, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 574
    nop

    .line 575
    const-string v2, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v23

    .line 574
    invoke-direct {v7, v2, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 579
    nop

    .line 580
    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v23

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v18, 0x1

    aput-object v4, v5, v18

    .line 579
    invoke-direct {v7, v2, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 585
    nop

    .line 586
    const-string v2, "com.android.calendar"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 587
    .local v5, "calendarProvider":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v18, 0x0

    aput-object v2, v4, v18

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v23, v3

    const/4 v3, 0x1

    .end local v3  # "smsAppPackageNames":[Ljava/lang/String;
    .local v23, "smsAppPackageNames":[Ljava/lang/String;
    aput-object v2, v4, v3

    invoke-direct {v7, v5, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 589
    new-array v2, v3, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v2, v18

    invoke-direct {v7, v5, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 592
    nop

    .line 593
    invoke-direct {v7, v0, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v18

    .line 592
    invoke-direct {v7, v2, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 597
    nop

    .line 598
    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v18

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v30, v0

    const/4 v0, 0x1

    .end local v0  # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .local v30, "calendarSyncAdapterPackages":[Ljava/lang/String;
    aput-object v3, v4, v0

    .line 597
    invoke-direct {v7, v2, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 603
    nop

    .line 604
    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    new-array v3, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v0, v3, v18

    .line 603
    invoke-direct {v7, v2, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 608
    nop

    .line 609
    const-string v0, "com.android.contacts"

    invoke-direct {v7, v0, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "contactsProviderPackage":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v18

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {v7, v0, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 612
    new-array v2, v4, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v18

    invoke-direct {v7, v0, v8, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 615
    nop

    .line 616
    const-string v2, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v3, v18

    .line 615
    invoke-direct {v7, v2, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 621
    nop

    .line 622
    const-string v2, "android.intent.category.APP_MAPS"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v24, v3, v18

    .line 621
    invoke-direct {v7, v2, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 626
    nop

    .line 627
    const-string v2, "android.intent.category.APP_GALLERY"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v18

    .line 626
    invoke-direct {v7, v2, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 632
    nop

    .line 633
    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v3, v4, [Ljava/util/Set;

    sget-object v21, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v21, v3, v18

    sget-object v18, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v21, 0x1

    aput-object v18, v3, v21

    .line 632
    invoke-direct {v7, v2, v8, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 638
    const/4 v2, 0x4

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "browserPackage":Ljava/lang/String;
    if-nez v3, :cond_2e0

    .line 640
    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 642
    .end local v3  # "browserPackage":Ljava/lang/String;
    .local v2, "browserPackage":Ljava/lang/String;
    invoke-direct {v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2dd

    .line 643
    const/4 v2, 0x0

    move-object/from16 v18, v2

    goto :goto_2e2

    .line 642
    :cond_2dd
    move-object/from16 v18, v2

    goto :goto_2e2

    .line 639
    .end local v2  # "browserPackage":Ljava/lang/String;
    .restart local v3  # "browserPackage":Ljava/lang/String;
    :cond_2e0
    move-object/from16 v18, v3

    .line 646
    .end local v3  # "browserPackage":Ljava/lang/String;
    .local v18, "browserPackage":Ljava/lang/String;
    :goto_2e2
    const/16 v21, 0x0

    const/16 v31, 0x1

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/util/Set;

    sget-object v24, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v26, 0x0

    aput-object v24, v2, v26

    move-object/from16 v24, v1

    .end local v1  # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .local v24, "contactsSyncAdapterPackages":[Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v32, v2

    move-object/from16 v2, v18

    move/from16 v33, v3

    move/from16 v3, p1

    move-object/from16 v34, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v28

    const/16 v27, 0x3

    move/from16 v28, v4

    .end local v28  # "verifier":Ljava/lang/String;
    .local v0, "locationExtraPackageNames":[Ljava/lang/String;
    .local v20, "verifier":Ljava/lang/String;
    .local v34, "contactsProviderPackage":Ljava/lang/String;
    move/from16 v4, v21

    move-object/from16 v35, v16

    move-object/from16 v16, v5

    .end local v5  # "calendarProvider":Ljava/lang/String;
    .local v16, "calendarProvider":Ljava/lang/String;
    .local v35, "locationPackageNames":[Ljava/lang/String;
    move/from16 v5, v31

    move-object/from16 v21, v9

    move-object/from16 v26, v10

    move-object/from16 v9, v22

    move/from16 v10, v27

    move-object/from16 v22, v6

    .end local v6  # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v10  # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .local v9, "voiceInteractPackageNames":[Ljava/lang/String;
    .local v21, "simCallManagerPackageNames":[Ljava/lang/String;
    .local v22, "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .local v26, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v6, v32

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 650
    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz v9, :cond_34e

    .line 651
    array-length v3, v9

    const/4 v4, 0x0

    :goto_322
    if-ge v4, v3, :cond_34c

    aget-object v5, v9, v4

    .line 652
    .local v5, "voiceInteractPackageName":Ljava/lang/String;
    new-array v6, v1, [Ljava/util/Set;

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v1, 0x0

    aput-object v27, v6, v1

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/4 v1, 0x1

    aput-object v27, v6, v1

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v1, 0x2

    aput-object v27, v6, v1

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v27, v6, v10

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v29, 0x4

    aput-object v27, v6, v29

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v27, v6, v2

    invoke-direct {v7, v5, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 651
    .end local v5  # "voiceInteractPackageName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x6

    goto :goto_322

    :cond_34c
    const/4 v1, 0x2

    goto :goto_34f

    .line 650
    :cond_34e
    const/4 v1, 0x2

    .line 658
    :goto_34f
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_36b

    .line 660
    nop

    .line 661
    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v7, v3, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 660
    invoke-direct {v7, v3, v8, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 667
    :cond_36b
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 669
    .local v3, "voiceRecoIntent":Landroid/content/Intent;
    nop

    .line 670
    invoke-direct {v7, v3, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x0

    aput-object v5, v6, v27

    .line 669
    invoke-direct {v7, v4, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 674
    move-object/from16 v4, v35

    .end local v35  # "locationPackageNames":[Ljava/lang/String;
    .local v4, "locationPackageNames":[Ljava/lang/String;
    if-eqz v4, :cond_3de

    .line 675
    array-length v5, v4

    const/4 v6, 0x0

    :goto_38f
    if-ge v6, v5, :cond_3de

    aget-object v2, v4, v6

    .line 676
    .local v2, "packageName":Ljava/lang/String;
    const/16 v10, 0x8

    new-array v10, v10, [Ljava/util/Set;

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v33, 0x0

    aput-object v32, v10, v33

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v33, 0x1

    aput-object v32, v10, v33

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v32, v10, v1

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v31, 0x3

    aput-object v32, v10, v31

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v29, 0x4

    aput-object v32, v10, v29

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v27, 0x5

    aput-object v32, v10, v27

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const/16 v28, 0x6

    aput-object v32, v10, v28

    const/16 v32, 0x7

    sget-object v33, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v33, v10, v32

    invoke-direct {v7, v2, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 680
    new-array v10, v1, [Ljava/util/Set;

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v33, 0x0

    aput-object v32, v10, v33

    sget-object v32, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    const/16 v33, 0x1

    aput-object v32, v10, v33

    invoke-direct {v7, v2, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 675
    .end local v2  # "packageName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x5

    const/4 v10, 0x3

    goto :goto_38f

    .line 684
    :cond_3de
    if-eqz v0, :cond_3f6

    .line 686
    array-length v2, v0

    const/4 v5, 0x0

    :goto_3e2
    if-ge v5, v2, :cond_3f6

    aget-object v6, v0, v5

    .line 687
    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/util/Set;

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v28, 0x0

    aput-object v10, v1, v28

    invoke-direct {v7, v6, v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 686
    .end local v6  # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x2

    goto :goto_3e2

    .line 692
    :cond_3f6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v5, "foo.mp3"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v5, "audio/mpeg"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 695
    .local v1, "musicIntent":Landroid/content/Intent;
    nop

    .line 696
    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    .line 695
    invoke-direct {v7, v2, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 700
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 702
    const-string v5, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 703
    .local v2, "homeIntent":Landroid/content/Intent;
    nop

    .line 704
    invoke-direct {v7, v2, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0  # "locationExtraPackageNames":[Ljava/lang/String;
    .local v28, "locationExtraPackageNames":[Ljava/lang/String;
    aput-object v6, v10, v0

    .line 703
    invoke-direct {v7, v5, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 708
    iget-object v5, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.type.watch"

    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_495

    .line 711
    const-string v5, "android.intent.category.HOME_MAIN"

    invoke-direct {v7, v5, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 713
    .local v5, "wearPackage":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v10, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v10, v0

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x1

    aput-object v6, v10, v0

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x2

    aput-object v6, v10, v0

    invoke-direct {v7, v5, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 715
    const/4 v6, 0x1

    new-array v10, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v32, 0x0

    aput-object v6, v10, v32

    invoke-direct {v7, v5, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 718
    nop

    .line 719
    const-string v6, "com.android.fitness.TRACK"

    invoke-direct {v7, v6, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-array v10, v0, [Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v0, v10, v32

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v33, v1

    const/4 v1, 0x1

    .end local v1  # "musicIntent":Landroid/content/Intent;
    .local v33, "musicIntent":Landroid/content/Intent;
    aput-object v0, v10, v1

    .line 718
    invoke-direct {v7, v6, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_49a

    .line 708
    .end local v5  # "wearPackage":Ljava/lang/String;
    .end local v33  # "musicIntent":Landroid/content/Intent;
    .restart local v1  # "musicIntent":Landroid/content/Intent;
    :cond_495
    move/from16 v32, v0

    move-object/from16 v33, v1

    const/4 v1, 0x1

    .line 724
    .end local v1  # "musicIntent":Landroid/content/Intent;
    .restart local v33  # "musicIntent":Landroid/content/Intent;
    :goto_49a
    new-array v0, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v0, v32

    const-string v1, "com.android.printspooler"

    invoke-direct {v7, v1, v8, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 728
    nop

    .line 729
    const-string v0, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v7, v0, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v5, v32

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 728
    invoke-direct {v7, v0, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 734
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    const-string/jumbo v1, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 736
    .local v0, "nfcTagIntent":Landroid/content/Intent;
    nop

    .line 737
    invoke-direct {v7, v0, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x1

    aput-object v5, v6, v10

    .line 736
    invoke-direct {v7, v1, v8, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 741
    nop

    .line 742
    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v10, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v32, 0x0

    aput-object v6, v5, v32

    .line 741
    invoke-direct {v7, v1, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 747
    new-array v1, v10, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v1, v32

    const-string v5, "com.android.companiondevicemanager"

    invoke-direct {v7, v5, v8, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 752
    nop

    .line 753
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v7, v1, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v10, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v32

    .line 752
    invoke-direct {v7, v1, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 758
    iget-object v1, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 759
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "textClassifierPackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53a

    .line 761
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x0

    aput-object v6, v5, v10

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x1

    aput-object v6, v5, v10

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x2

    aput-object v6, v5, v10

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x3

    aput-object v6, v5, v10

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    invoke-direct {v7, v1, v8, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 767
    :cond_53a
    iget-object v5, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 768
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 769
    .local v5, "attentionServicePackageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_557

    .line 770
    const/4 v6, 0x1

    new-array v10, v6, [Ljava/util/Set;

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/16 v29, 0x0

    aput-object v27, v10, v29

    invoke-direct {v7, v5, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_55a

    .line 769
    :cond_557
    const/4 v6, 0x1

    const/16 v29, 0x0

    .line 776
    :goto_55a
    new-array v10, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v10, v29

    const-string v6, "com.android.sharedstoragebackup"

    invoke-direct {v7, v6, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 780
    iget-object v6, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 781
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v6

    .line 782
    .local v6, "systemCaptionsServicePackageName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_581

    .line 783
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/util/Set;

    sget-object v27, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v29, 0x0

    aput-object v27, v10, v29

    invoke-direct {v7, v6, v8, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 786
    :cond_581
    return-void

    .line 456
    .end local v0  # "nfcTagIntent":Landroid/content/Intent;
    .end local v1  # "textClassifierPackageName":Ljava/lang/String;
    .end local v2  # "homeIntent":Landroid/content/Intent;
    .end local v3  # "voiceRecoIntent":Landroid/content/Intent;
    .end local v4  # "locationPackageNames":[Ljava/lang/String;
    .end local v5  # "attentionServicePackageName":Ljava/lang/String;
    .end local v6  # "systemCaptionsServicePackageName":Ljava/lang/String;
    .end local v9  # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v11  # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v12  # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v13  # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v14  # "useOpenWifiAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v15  # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v16  # "calendarProvider":Ljava/lang/String;
    .end local v17  # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v18  # "browserPackage":Ljava/lang/String;
    .end local v19  # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v20  # "verifier":Ljava/lang/String;
    .end local v21  # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v22  # "useOpenWifiAppPackageNames":[Ljava/lang/String;
    .end local v23  # "smsAppPackageNames":[Ljava/lang/String;
    .end local v24  # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v25  # "locationExtraPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v26  # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v28  # "locationExtraPackageNames":[Ljava/lang/String;
    .end local v30  # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v33  # "musicIntent":Landroid/content/Intent;
    .end local v34  # "contactsProviderPackage":Ljava/lang/String;
    :catchall_582
    move-exception v0

    :try_start_583
    monitor-exit v1
    :try_end_584
    .catchall {:try_start_583 .. :try_end_584} :catchall_582

    throw v0
.end method

.method private final varargs grantIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 382
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 384
    return-void
.end method

.method private final varargs grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V
    .registers 7
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 796
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "permissions":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    return-void

    .line 797
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 798
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_16

    .line 799
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 801
    .end local v1  # "i":I
    :cond_16
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V
    .registers 18
    .param p1, "packageInfo"  # Landroid/content/pm/PackageInfo;
    .param p2, "userId"  # I
    .param p3, "systemFixed"  # Z
    .param p4, "ignoreSystemPackage"  # Z
    .param p5, "whitelistRestrictedPermissions"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "IZZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 424
    .local p6, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p6

    if-nez p1, :cond_5

    .line 425
    return-void

    .line 427
    :cond_5
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 428
    array-length v8, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_e
    if-ge v9, v8, :cond_20

    aget-object v10, v0, v9

    .line 429
    .local v10, "permissionGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, v10

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 428
    .end local v10  # "permissionGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 433
    :cond_20
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "ignoreSystemPackage"  # Z
    .param p4, "whitelistRestrictedPermissions"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 415
    .local p5, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 418
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to platform components for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 348
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_37

    .line 349
    goto :goto_28

    .line 353
    :cond_37
    invoke-static {p1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 354
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isGuestSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 355
    invoke-static {v3}, Landroid/os/UserHandle;->isMultiSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 356
    goto :goto_28

    .line 361
    :cond_4c
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 362
    invoke-static {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 363
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_65

    .line 375
    :cond_61
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(ILandroid/content/pm/PackageInfo;)V

    .line 376
    .end local v2  # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_28

    .line 365
    .restart local v2  # "pkg":Landroid/content/pm/PackageInfo;
    :cond_65
    :goto_65
    if-eqz p1, :cond_28

    .line 366
    invoke-static {p1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 367
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isGuestSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 368
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(ILandroid/content/pm/PackageInfo;)V

    .line 369
    goto :goto_28

    .line 377
    .end local v2  # "pkg":Landroid/content/pm/PackageInfo;
    :cond_77
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "systemFixed"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 403
    .local p4, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 404
    return-void

    .line 406
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 409
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 396
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 398
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .registers 12
    .param p1, "pkg"  # Landroid/content/pm/PackageInfo;
    .param p3, "systemFixed"  # Z
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1015
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 1017
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .registers 38
    .param p1, "pkg"  # Landroid/content/pm/PackageInfo;
    .param p3, "systemFixed"  # Z
    .param p4, "ignoreSystemPackage"  # Z
    .param p5, "whitelistRestrictedPermissions"  # Z
    .param p6, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZI)V"
        }
    .end annotation

    .line 1104
    .local p2, "permissionsWithoutSplits":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 1105
    .local v10, "user":Landroid/os/UserHandle;
    if-nez v2, :cond_d

    .line 1106
    return-void

    .line 1109
    :cond_d
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1110
    .local v0, "requestedPermissions":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1111
    return-void

    .line 1116
    :cond_16
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v11, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1117
    .local v11, "requestedByNonSystemPackage":[Ljava/lang/String;
    array-length v12, v0

    .line 1118
    .local v12, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v12, :cond_30

    .line 1119
    aget-object v5, v0, v4

    invoke-static {v11, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1120
    const/4 v5, 0x0

    aput-object v5, v0, v4

    .line 1118
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1123
    .end local v4  # "i":I
    :cond_30
    sget-object v4, Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1127
    .end local v0  # "requestedPermissions":[Ljava/lang/String;
    .local v4, "requestedPermissions":[Ljava/lang/String;
    :try_start_38
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v0, v5, v13, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1128
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_49} :catch_2b8

    .line 1131
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 1133
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v14, v5

    .line 1134
    .local v14, "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v15, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1136
    .local v15, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v5, 0x20

    .line 1137
    .local v5, "newFlags":I
    if-eqz p3, :cond_58

    .line 1138
    or-int/lit8 v5, v5, 0x10

    .line 1142
    :cond_58
    iget-object v6, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v7, Landroid/permission/PermissionManager;

    .line 1143
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager;

    invoke-virtual {v6}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v9

    .line 1144
    .local v9, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 1145
    .local v8, "numSplitPerms":I
    const/4 v6, 0x0

    .local v6, "splitPermNum":I
    :goto_6b
    if-ge v6, v8, :cond_9a

    .line 1146
    nop

    .line 1147
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1149
    .local v7, "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    if-eqz v15, :cond_92

    iget v13, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1150
    move/from16 v16, v5

    .end local v5  # "newFlags":I
    .local v16, "newFlags":I
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v5

    if-ge v13, v5, :cond_94

    .line 1151
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 1152
    invoke-virtual {v7}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_94

    .line 1149
    .end local v16  # "newFlags":I
    .restart local v5  # "newFlags":I
    :cond_92
    move/from16 v16, v5

    .line 1145
    .end local v5  # "newFlags":I
    .end local v7  # "splitPerm":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v16  # "newFlags":I
    :cond_94
    :goto_94
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    const/4 v13, 0x0

    goto :goto_6b

    .end local v16  # "newFlags":I
    .restart local v5  # "newFlags":I
    :cond_9a
    move/from16 v16, v5

    .line 1156
    .end local v5  # "newFlags":I
    .end local v6  # "splitPermNum":I
    .restart local v16  # "newFlags":I
    const/4 v5, 0x0

    .line 1164
    .local v5, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p4, :cond_d4

    if-eqz v15, :cond_d4

    .line 1166
    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 1167
    iget-object v6, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1168
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1167
    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1169
    .local v6, "disabledPkg":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_d4

    .line 1170
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    .line 1171
    return-void

    .line 1173
    :cond_be
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d4

    .line 1174
    new-instance v7, Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v5, v7

    .line 1175
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v13, v4

    goto :goto_d6

    .line 1180
    .end local v6  # "disabledPkg":Landroid/content/pm/PackageInfo;
    :cond_d4
    move-object v13, v4

    move-object v7, v5

    .end local v4  # "requestedPermissions":[Ljava/lang/String;
    .end local v5  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v13, "requestedPermissions":[Ljava/lang/String;
    :goto_d6
    array-length v6, v13

    .line 1184
    .local v6, "numRequestedPermissions":I
    new-array v5, v6, [Ljava/lang/String;

    .line 1185
    .local v5, "sortedRequestedPermissions":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1186
    .local v4, "numForeground":I
    const/16 v17, 0x0

    .line 1187
    .local v17, "numOther":I
    const/16 v18, 0x0

    move/from16 v30, v18

    move/from16 v18, v4

    move/from16 v4, v30

    .local v4, "i":I
    .local v18, "numForeground":I
    :goto_e4
    if-ge v4, v6, :cond_100

    .line 1188
    aget-object v3, v13, v4

    .line 1189
    .local v3, "permission":Ljava/lang/String;
    invoke-direct {v1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_f3

    .line 1190
    aput-object v3, v5, v18

    .line 1191
    add-int/lit8 v18, v18, 0x1

    goto :goto_fb

    .line 1193
    :cond_f3
    add-int/lit8 v19, v6, -0x1

    sub-int v19, v19, v17

    aput-object v3, v5, v19

    .line 1195
    add-int/lit8 v17, v17, 0x1

    .line 1187
    .end local v3  # "permission":Ljava/lang/String;
    :goto_fb
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p2

    goto :goto_e4

    .line 1199
    .end local v4  # "i":I
    :cond_100
    const/4 v3, 0x0

    .local v3, "requestedPermissionNum":I
    :goto_101
    if-ge v3, v6, :cond_2b7

    .line 1201
    aget-object v4, v13, v3

    .line 1205
    .local v4, "permission":Ljava/lang/String;
    if-eqz v7, :cond_11e

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11e

    .line 1206
    move-object/from16 v28, v0

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    const/4 v0, 0x0

    goto/16 :goto_2a5

    .line 1209
    :cond_11e
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_295

    .line 1210
    move-object/from16 v19, v5

    .end local v5  # "sortedRequestedPermissions":[Ljava/lang/String;
    .local v19, "sortedRequestedPermissions":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move/from16 v20, v6

    .end local v6  # "numRequestedPermissions":I
    .local v20, "numRequestedPermissions":I
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v6, v10}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v6

    .line 1215
    .local v6, "flags":I
    if-eqz p3, :cond_13c

    and-int/lit8 v5, v6, 0x10

    if-eqz v5, :cond_13c

    const/4 v5, 0x1

    goto :goto_13d

    :cond_13c
    const/4 v5, 0x0

    :goto_13d
    move/from16 v21, v5

    .line 1225
    .local v21, "changingGrantForSystemFixed":Z
    invoke-direct {v1, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isFixedOrUserSet(I)Z

    move-result v5

    if-eqz v5, :cond_15b

    if-nez p4, :cond_15b

    if-eqz v21, :cond_14a

    goto :goto_15b

    :cond_14a
    move-object/from16 v28, v0

    move/from16 v22, v6

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move/from16 v9, p6

    move-object v11, v4

    goto/16 :goto_277

    .line 1230
    :cond_15b
    :goto_15b
    and-int/lit8 v5, v6, 0x4

    if-eqz v5, :cond_16c

    .line 1231
    move-object/from16 v28, v0

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    const/4 v0, 0x0

    goto/16 :goto_2a5

    .line 1235
    :cond_16c
    and-int/lit16 v5, v6, 0x3800

    or-int v16, v16, v5

    .line 1238
    if-eqz p5, :cond_19a

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19a

    .line 1239
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move/from16 v22, v6

    .end local v6  # "flags":I
    .local v22, "flags":I
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v23, 0x1000

    const/16 v24, 0x1000

    move-object/from16 v25, v4

    .end local v4  # "permission":Ljava/lang/String;
    .local v25, "permission":Ljava/lang/String;
    move-object v4, v5

    move-object/from16 v5, v25

    move-object/from16 v26, v7

    .end local v7  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v26, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v7, v23

    move/from16 v23, v8

    .end local v8  # "numSplitPerms":I
    .local v23, "numSplitPerms":I
    move/from16 v8, v24

    move-object/from16 v24, v9

    .end local v9  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .local v24, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_1a4

    .line 1238
    .end local v22  # "flags":I
    .end local v23  # "numSplitPerms":I
    .end local v24  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v25  # "permission":Ljava/lang/String;
    .end local v26  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4  # "permission":Ljava/lang/String;
    .restart local v6  # "flags":I
    .restart local v7  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8  # "numSplitPerms":I
    .restart local v9  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    :cond_19a
    move-object/from16 v25, v4

    move/from16 v22, v6

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    .line 1247
    .end local v4  # "permission":Ljava/lang/String;
    .end local v6  # "flags":I
    .end local v7  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8  # "numSplitPerms":I
    .end local v9  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v22  # "flags":I
    .restart local v23  # "numSplitPerms":I
    .restart local v24  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v25  # "permission":Ljava/lang/String;
    .restart local v26  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1a4
    if-eqz v21, :cond_1b8

    .line 1248
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    and-int/lit8 v8, v22, -0x11

    move-object/from16 v5, v25

    move/from16 v7, v22

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1253
    :cond_1b8
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v9, v25

    .end local v25  # "permission":Ljava/lang/String;
    .local v9, "permission":Ljava/lang/String;
    invoke-virtual {v0, v9, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1cd

    .line 1255
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1256
    invoke-virtual {v4, v5, v9, v10}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1259
    :cond_1cd
    iget-object v4, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v5, v9

    move/from16 v7, v16

    move/from16 v8, v16

    move-object/from16 v25, v11

    move-object v11, v9

    .end local v9  # "permission":Ljava/lang/String;
    .local v11, "permission":Ljava/lang/String;
    .local v25, "requestedByNonSystemPackage":[Ljava/lang/String;
    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1262
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1263
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 1262
    move/from16 v9, p6

    invoke-static {v9, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 1265
    .local v4, "uid":I
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getBackgroundPermissions()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1266
    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1267
    .local v5, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_239

    .line 1268
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1269
    .local v6, "numFgPerms":I
    const/4 v7, 0x0

    .local v7, "fgPermNum":I
    :goto_202
    if-ge v7, v6, :cond_234

    .line 1270
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1272
    .local v8, "fgPerm":Ljava/lang/String;
    move-object/from16 v27, v5

    .end local v5  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_22b

    .line 1276
    iget-object v5, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    move/from16 v28, v6

    .end local v6  # "numFgPerms":I
    .local v28, "numFgPerms":I
    const-class v6, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1277
    invoke-static {v8}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1276
    move-object/from16 v29, v8

    const/4 v8, 0x0

    .end local v8  # "fgPerm":Ljava/lang/String;
    .local v29, "fgPerm":Ljava/lang/String;
    invoke-virtual {v5, v6, v4, v8}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 1280
    goto :goto_23b

    .line 1272
    .end local v28  # "numFgPerms":I
    .end local v29  # "fgPerm":Ljava/lang/String;
    .restart local v6  # "numFgPerms":I
    .restart local v8  # "fgPerm":Ljava/lang/String;
    :cond_22b
    move/from16 v28, v6

    move-object/from16 v29, v8

    .line 1269
    .end local v6  # "numFgPerms":I
    .end local v8  # "fgPerm":Ljava/lang/String;
    .restart local v28  # "numFgPerms":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v27

    goto :goto_202

    .end local v27  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28  # "numFgPerms":I
    .restart local v5  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6  # "numFgPerms":I
    :cond_234
    move-object/from16 v27, v5

    move/from16 v28, v6

    .end local v5  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6  # "numFgPerms":I
    .restart local v27  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28  # "numFgPerms":I
    goto :goto_23b

    .line 1267
    .end local v7  # "fgPermNum":I
    .end local v27  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28  # "numFgPerms":I
    .restart local v5  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_239
    move-object/from16 v27, v5

    .line 1285
    .end local v5  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_23b
    invoke-direct {v1, v11}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1286
    .local v5, "bgPerm":Ljava/lang/String;
    invoke-static {v11}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1287
    .local v6, "op":Ljava/lang/String;
    if-nez v5, :cond_25c

    .line 1288
    if-eqz v6, :cond_258

    .line 1290
    iget-object v7, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/AppOpsManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v4, v8}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    move-object/from16 v28, v0

    goto :goto_277

    .line 1288
    :cond_258
    const/4 v8, 0x0

    move-object/from16 v28, v0

    goto :goto_277

    .line 1295
    :cond_25c
    const/4 v8, 0x0

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_267

    .line 1297
    const/4 v7, 0x0

    .local v7, "mode":I
    goto :goto_268

    .line 1299
    .end local v7  # "mode":I
    :cond_267
    const/4 v7, 0x4

    .line 1302
    .restart local v7  # "mode":I
    :goto_268
    iget-object v8, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    .end local v0  # "pm":Landroid/content/pm/PackageManager;
    .local v28, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, v4, v7}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 1328
    .end local v4  # "uid":I
    .end local v5  # "bgPerm":Ljava/lang/String;
    .end local v6  # "op":Ljava/lang/String;
    .end local v7  # "mode":I
    .end local v27  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_277
    and-int/lit8 v0, v22, 0x20

    if-eqz v0, :cond_293

    and-int/lit8 v0, v22, 0x10

    if-eqz v0, :cond_293

    if-nez p3, :cond_293

    .line 1335
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v5, v11

    const/4 v0, 0x0

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_2a5

    .line 1328
    :cond_293
    const/4 v0, 0x0

    goto :goto_2a5

    .line 1209
    .end local v19  # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v20  # "numRequestedPermissions":I
    .end local v21  # "changingGrantForSystemFixed":Z
    .end local v22  # "flags":I
    .end local v23  # "numSplitPerms":I
    .end local v24  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v25  # "requestedByNonSystemPackage":[Ljava/lang/String;
    .end local v26  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28  # "pm":Landroid/content/pm/PackageManager;
    .restart local v0  # "pm":Landroid/content/pm/PackageManager;
    .local v4, "permission":Ljava/lang/String;
    .local v5, "sortedRequestedPermissions":[Ljava/lang/String;
    .local v6, "numRequestedPermissions":I
    .local v7, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v8, "numSplitPerms":I
    .local v9, "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .local v11, "requestedByNonSystemPackage":[Ljava/lang/String;
    :cond_295
    move-object/from16 v28, v0

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v26, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    const/4 v0, 0x0

    move-object v11, v4

    .line 1200
    .end local v0  # "pm":Landroid/content/pm/PackageManager;
    .end local v4  # "permission":Ljava/lang/String;
    .end local v5  # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v6  # "numRequestedPermissions":I
    .end local v7  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8  # "numSplitPerms":I
    .end local v9  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v11  # "requestedByNonSystemPackage":[Ljava/lang/String;
    .restart local v19  # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v20  # "numRequestedPermissions":I
    .restart local v23  # "numSplitPerms":I
    .restart local v24  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v25  # "requestedByNonSystemPackage":[Ljava/lang/String;
    .restart local v26  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28  # "pm":Landroid/content/pm/PackageManager;
    :goto_2a5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v11, v25

    move-object/from16 v7, v26

    move-object/from16 v0, v28

    goto/16 :goto_101

    .line 1340
    .end local v3  # "requestedPermissionNum":I
    .end local v19  # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v20  # "numRequestedPermissions":I
    .end local v23  # "numSplitPerms":I
    .end local v24  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v25  # "requestedByNonSystemPackage":[Ljava/lang/String;
    .end local v26  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28  # "pm":Landroid/content/pm/PackageManager;
    .restart local v0  # "pm":Landroid/content/pm/PackageManager;
    .restart local v5  # "sortedRequestedPermissions":[Ljava/lang/String;
    .restart local v6  # "numRequestedPermissions":I
    .restart local v7  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8  # "numSplitPerms":I
    .restart local v9  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .restart local v11  # "requestedByNonSystemPackage":[Ljava/lang/String;
    :cond_2b7
    return-void

    .line 1129
    .end local v0  # "pm":Landroid/content/pm/PackageManager;
    .end local v5  # "sortedRequestedPermissions":[Ljava/lang/String;
    .end local v6  # "numRequestedPermissions":I
    .end local v7  # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8  # "numSplitPerms":I
    .end local v9  # "splitPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/permission/PermissionManager$SplitPermissionInfo;>;"
    .end local v13  # "requestedPermissions":[Ljava/lang/String;
    .end local v14  # "permissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15  # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16  # "newFlags":I
    .end local v17  # "numOther":I
    .end local v18  # "numForeground":I
    .local v4, "requestedPermissions":[Ljava/lang/String;
    :catch_2b8
    move-exception v0

    move-object/from16 v25, v11

    .line 1130
    .end local v11  # "requestedByNonSystemPackage":[Ljava/lang/String;
    .local v0, "doesNotHappen":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v25  # "requestedByNonSystemPackage":[Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private grantRuntimePermissionsForSystemPackage(ILandroid/content/pm/PackageInfo;)V
    .registers 11
    .param p1, "userId"  # I
    .param p2, "pkg"  # Landroid/content/pm/PackageInfo;

    .line 311
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 312
    return-void

    .line 314
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 315
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_2c

    aget-object v5, v1, v4

    .line 316
    .local v5, "permission":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 317
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_20

    .line 318
    goto :goto_29

    .line 320
    :cond_20
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 321
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v5  # "permission":Ljava/lang/String;
    .end local v6  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 324
    :cond_2c
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 327
    if-eqz p1, :cond_44

    .line 328
    invoke-static {p1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v1

    if-nez v1, :cond_44

    .line 329
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isGuestSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 330
    invoke-direct {p0, p2, v0, v3, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 331
    return-void

    .line 335
    :cond_44
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 337
    :cond_48
    return-void
.end method

.method private final varargs grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 389
    .local p3, "permissionGroups":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 391
    return-void
.end method

.method private isFixedOrUserSet(I)Z
    .registers 3
    .param p1, "flags"  # I

    .line 1078
    and-int/lit8 v0, p1, 0x17

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isGuestSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 5
    .param p1, "pkg"  # Landroid/content/pm/PackageInfo;

    .line 1627
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 1628
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_14

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_15

    .line 1630
    :cond_14
    return v1

    .line 1633
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/pm/FlymePackageManager;->getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/FlymePackageManager;->isMzApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1634
    return v1

    .line 1636
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private isPermissionDangerous(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"  # Ljava/lang/String;

    .line 1604
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 1605
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_15

    if-ne v3, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 1606
    .end local v1  # "pi":Landroid/content/pm/PermissionInfo;
    :catch_15
    move-exception v1

    .line 1608
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isPermissionRestricted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"  # Ljava/lang/String;

    .line 1596
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    return v0

    .line 1597
    :catch_10
    move-exception v1

    .line 1598
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z
    .registers 6
    .param p1, "pkg"  # Landroid/content/pm/PackageInfo;

    .line 1365
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_e

    .line 1366
    const/4 v0, 0x1

    return v0

    .line 1368
    :cond_e
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 1369
    return v1

    .line 1371
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1372
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1371
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1373
    .local v0, "disabledPkg":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_33

    .line 1374
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1375
    .local v2, "disabledPackageAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3c

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3c

    .line 1377
    return v1

    .line 1379
    .end local v2  # "disabledPackageAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_33
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_3c

    .line 1380
    return v1

    .line 1379
    :cond_3c
    nop

    .line 1382
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p1, "pkg"  # Landroid/content/pm/PackageInfo;

    .line 1006
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1007
    return v0

    .line 1009
    :cond_4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1010
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    nop

    .line 1009
    :goto_15
    return v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1002
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;
    .registers 2
    .param p0, "x$0"  # I

    .line 1123
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 7
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1496
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1498
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_46

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1499
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_46

    .line 1500
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1501
    goto :goto_4

    .line 1503
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exceptions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1504
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_4

    .line 1506
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1509
    :cond_46
    return-void
.end method

.method private parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 11
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1513
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1515
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_c3

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1516
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_c3

    .line 1517
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1518
    goto :goto_4

    .line 1520
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exception"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_a3

    .line 1521
    const/4 v1, 0x0

    const-string/jumbo v4, "package"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1523
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 1524
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1525
    .local v4, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v4, :cond_9e

    .line 1527
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1529
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_58

    .line 1530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1532
    goto :goto_4

    .line 1535
    :cond_58
    invoke-direct {p0, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 1536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown system package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1538
    goto :goto_4

    .line 1542
    :cond_76
    invoke-static {v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_95

    .line 1543
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1546
    goto/16 :goto_4

    .line 1548
    :cond_95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 1549
    invoke-interface {p2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    .end local v5  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_9e
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1553
    .end local v1  # "packageName":Ljava/lang/String;
    .end local v4  # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    goto/16 :goto_4

    .line 1554
    :cond_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exceptions>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1557
    :cond_c3
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .registers 9
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1561
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1563
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_72

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1564
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_72

    .line 1565
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1566
    goto :goto_4

    .line 1569
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_53

    .line 1570
    const/4 v1, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1571
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_3d

    .line 1572
    const-string v4, "Mandatory name attribute missing for permission tag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1574
    goto :goto_4

    .line 1577
    :cond_3d
    const-string v3, "fixed"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1578
    .local v3, "fixed":Z
    const-string/jumbo v4, "whitelisted"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    .line 1580
    .local v4, "whitelisted":Z
    new-instance v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;ZZ)V

    .line 1582
    .local v5, "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "fixed":Z
    .end local v4  # "whitelisted":Z
    .end local v5  # "exception":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    goto :goto_4

    .line 1584
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "under <exception>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1587
    :cond_72
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    .line 1462
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1463
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1464
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v2

    .line 1467
    :cond_d
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1470
    .local v2, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v3, v0

    :goto_13
    if-ge v1, v3, :cond_aa

    aget-object v4, v0, v1

    .line 1471
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "DefaultPermGrantPolicy"

    if-nez v5, :cond_4b

    .line 1472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " directory, ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1472
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    goto :goto_a6

    .line 1476
    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 1477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be read"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    goto :goto_a6

    .line 1481
    :cond_6b
    :try_start_6b
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_75
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_75} :catch_91
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_75} :catch_91

    .line 1480
    .local v5, "str":Ljava/io/InputStream;
    nop

    .line 1483
    :try_start_76
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1484
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1485
    invoke-direct {p0, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_85

    .line 1486
    .end local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_81
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_84} :catch_91
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_91

    .line 1488
    .end local v5  # "str":Ljava/io/InputStream;
    goto :goto_a6

    .line 1480
    .restart local v5  # "str":Ljava/io/InputStream;
    :catchall_85
    move-exception v7

    .end local v0  # "files":[Ljava/io/File;
    .end local v2  # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .end local v4  # "file":Ljava/io/File;
    .end local v5  # "str":Ljava/io/InputStream;
    .end local p0  # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    :try_start_86
    throw v7
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    .line 1486
    .restart local v0  # "files":[Ljava/io/File;
    .restart local v2  # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .restart local v4  # "file":Ljava/io/File;
    .restart local v5  # "str":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    :catchall_87
    move-exception v8

    :try_start_88
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v9

    :try_start_8d
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0  # "files":[Ljava/io/File;
    .end local v2  # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .end local v4  # "file":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    :goto_90
    throw v8
    :try_end_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_91} :catch_91
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_91} :catch_91

    .end local v5  # "str":Ljava/io/InputStream;
    .restart local v0  # "files":[Ljava/io/File;
    .restart local v2  # "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    .restart local v4  # "file":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    :catch_91
    move-exception v5

    .line 1487
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    .end local v4  # "file":Ljava/io/File;
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 1491
    :cond_aa
    return-object v2
.end method

.method private revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V
    .registers 19
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "systemFixed"  # Z
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1021
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v7, p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1022
    .local v8, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1023
    return-void

    .line 1025
    :cond_f
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v9, v1

    .line 1027
    .local v9, "revokablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 1029
    .local v11, "permission":Ljava/lang/String;
    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1030
    goto :goto_1f

    .line 1033
    :cond_33
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v12

    .line 1034
    .local v12, "user":Landroid/os/UserHandle;
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1035
    invoke-virtual {v1, v11, p1, v12}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v13

    .line 1038
    .local v13, "flags":I
    and-int/lit8 v1, v13, 0x20

    if-nez v1, :cond_46

    .line 1039
    goto :goto_1f

    .line 1042
    :cond_46
    and-int/lit8 v1, v13, 0x4

    if-eqz v1, :cond_4b

    .line 1043
    goto :goto_1f

    .line 1048
    :cond_4b
    and-int/lit8 v1, v13, 0x10

    if-eqz v1, :cond_52

    if-nez p3, :cond_52

    .line 1049
    goto :goto_1f

    .line 1051
    :cond_52
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v11, v12}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1061
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x20

    const/4 v5, 0x0

    move-object v2, v11

    move-object v3, p1

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1063
    .end local v11  # "permission":Ljava/lang/String;
    .end local v12  # "user":Landroid/os/UserHandle;
    .end local v13  # "flags":I
    goto :goto_1f

    .line 1064
    :cond_6b
    return-void
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(I)V

    .line 305
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to active LUI app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 910
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default browser for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 928
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 840
    if-nez p1, :cond_3

    .line 841
    return-void

    .line 843
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to sim call manager for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/util/Set;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v7, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 846
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 837
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageNames"  # [Ljava/lang/String;
    .param p2, "userId"  # I

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    if-nez p1, :cond_19

    .line 858
    return-void

    .line 860
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_37

    aget-object v3, p1, v2

    .line 861
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v4, v5

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 860
    .end local v3  # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 864
    :cond_37
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageNames"  # [Ljava/lang/String;
    .param p2, "userId"  # I

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-nez p1, :cond_19

    .line 869
    return-void

    .line 871
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_41

    aget-object v3, p1, v2

    .line 872
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v4, v5

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 871
    .end local v3  # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 876
    :cond_41
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageNames"  # [Ljava/lang/String;
    .param p2, "userId"  # I

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    if-nez p1, :cond_19

    .line 882
    return-void

    .line 884
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_32

    aget-object v3, p1, v2

    .line 887
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 884
    .end local v3  # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 890
    :cond_32
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageNames"  # [Ljava/lang/String;
    .param p2, "userId"  # I

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    if-nez p1, :cond_19

    .line 896
    return-void

    .line 898
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_3d

    aget-object v2, p1, v1

    .line 899
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 900
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 901
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 902
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 898
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v3  # "pkg":Landroid/content/pm/PackageInfo;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 905
    :cond_3d
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageNames"  # [Ljava/lang/String;
    .param p2, "userId"  # I

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    if-nez p1, :cond_19

    .line 915
    return-void

    .line 917
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_38

    aget-object v2, p1, v1

    .line 918
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 919
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 920
    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 917
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v3  # "pkg":Landroid/content/pm/PackageInfo;
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 923
    :cond_38
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    return-void
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"  # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"  # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 247
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"  # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"  # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 271
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 273
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"  # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 259
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 261
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setSyncAdapterPackagesProvider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .registers 4
    .param p1, "provider"  # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 283
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 285
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"  # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 4
    .param p1, "provider"  # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public wereDefaultPermissionsGrantedSinceBoot(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    const-string/jumbo v1, "vendor.meizu.sys.cts_state"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 292
    if-eqz p1, :cond_11

    .line 293
    monitor-exit v0

    return v2

    .line 297
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    monitor-exit v0

    return v2

    .line 298
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

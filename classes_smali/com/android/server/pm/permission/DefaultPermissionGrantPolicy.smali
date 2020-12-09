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
    new-instance p1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    .line 235
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 236
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Ljava/lang/Object;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .registers 1

    .line 100
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 1551
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x16

    if-le p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    .line 1057
    :catch_e
    move-exception p1

    .line 1058
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDefaultPermissionFiles()[Ljava/io/File;
    .registers 6

    .line 1389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/default-permissions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1392
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1394
    :cond_23
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1396
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1398
    :cond_3f
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1400
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1402
    :cond_5b
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1403
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1404
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1406
    :cond_77
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductServicesDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 1409
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1412
    :cond_93
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "android.hardware.type.embedded"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 1413
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 1415
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1418
    :cond_be
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c6

    const/4 v0, 0x0

    goto :goto_ce

    :cond_c6
    new-array v1, v2, [Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    :goto_ce
    return-object v0
.end method

.method private getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 954
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 956
    if-eqz p1, :cond_12

    .line 957
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p1

    .line 959
    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;
    .registers 5

    .line 896
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 898
    const/4 p2, 0x0

    if-eqz p1, :cond_2d

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_15

    goto :goto_2d

    .line 901
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 902
    return-object p2

    .line 904
    :cond_20
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 905
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object p1, p2

    :goto_2c
    return-object p1

    .line 899
    :cond_2d
    :goto_2d
    return-object p2
.end method

.method private getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 892
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 750
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;
    .registers 7

    .line 914
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 916
    const/4 p2, 0x0

    if-nez p1, :cond_11

    .line 917
    return-object p2

    .line 919
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 920
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_2c

    .line 921
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 922
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 923
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 924
    return-object v2

    .line 920
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 927
    :cond_2c
    return-object p2
.end method

.method private getDefaultSystemHandlerServicePackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 10
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

    .line 932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 934
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 936
    array-length v2, p1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_37

    aget-object v4, p1, v3

    .line 937
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0xc2000

    invoke-virtual {v5, v1, v6, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 941
    if-eqz v5, :cond_2b

    .line 942
    goto :goto_34

    .line 945
    :cond_2b
    invoke-direct {p0, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 946
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 950
    :cond_37
    return-object v0
.end method

.method private getKnownPackage(II)Ljava/lang/String;
    .registers 4

    .line 765
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 1308
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 1313
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1314
    return-object v0

    .line 1317
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x2000b000

    or-int/2addr p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_13

    return-object p1

    .line 1319
    :catch_13
    move-exception p2

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageNot found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1321
    return-object v0
.end method

.method private getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 1304
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method private grantDefaultPermissionExceptions(I)V
    .registers 18

    .line 1347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1349
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    :try_start_b
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    if-nez v2, :cond_15

    .line 1355
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    .line 1357
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_91

    .line 1359
    const/4 v1, 0x0

    .line 1360
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 1361
    const/4 v9, 0x0

    move v10, v9

    :goto_1f
    if-ge v10, v8, :cond_90

    .line 1362
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1363
    invoke-direct {v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 1364
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    .line 1365
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 1366
    move v14, v9

    :goto_3b
    if-ge v14, v13, :cond_8d

    .line 1367
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    .line 1368
    iget-object v3, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isPermissionDangerous(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 1369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which isn\'t dangerous"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    goto :goto_8a

    .line 1373
    :cond_69
    if-nez v1, :cond_72

    .line 1374
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v1

    goto :goto_76

    .line 1376
    :cond_72
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    move-object v15, v1

    .line 1378
    :goto_76
    iget-object v1, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    invoke-interface {v15, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1381
    iget-boolean v4, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    iget-boolean v5, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v15

    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    move-object v1, v15

    .line 1366
    :goto_8a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3b

    .line 1361
    :cond_8d
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 1386
    :cond_90
    return-void

    .line 1357
    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V
    .registers 7

    .line 770
    if-nez p1, :cond_3

    .line 771
    return-void

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 774
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 775
    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 776
    new-array v0, v2, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_26

    .line 778
    :cond_1d
    new-array v0, v2, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 780
    :goto_26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 782
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSimCallManager(Ljava/lang/String;I)V
    .registers 4

    .line 811
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 812
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 814
    :cond_9
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V
    .registers 6

    .line 785
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

    .line 788
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Ljava/lang/String;I)V
    .registers 6

    .line 792
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 793
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .registers 22

    .line 397
    move-object/from16 v0, p0

    move/from16 v7, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to default platform handlers for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPermGrantPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_1d
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 410
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLocationExtraPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 411
    iget-object v4, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 412
    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 413
    iget-object v6, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 414
    iget-object v8, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 415
    iget-object v9, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mUseOpenWifiAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 416
    iget-object v10, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 417
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_4c2

    .line 419
    if-eqz v4, :cond_36

    .line 420
    invoke-interface {v4, v7}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_37

    :cond_36
    const/4 v11, 0x0

    .line 421
    :goto_37
    if-eqz v2, :cond_3f

    .line 422
    invoke-interface {v2, v7}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_40

    :cond_3f
    const/4 v12, 0x0

    .line 423
    :goto_40
    if-eqz v3, :cond_48

    .line 424
    invoke-interface {v3, v7}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_49

    :cond_48
    const/4 v13, 0x0

    .line 425
    :goto_49
    if-eqz v5, :cond_50

    .line 426
    invoke-interface {v5, v7}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    .line 427
    :goto_51
    if-eqz v6, :cond_58

    .line 428
    invoke-interface {v6, v7}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    :cond_58
    const/4 v3, 0x0

    .line 429
    :goto_59
    if-eqz v8, :cond_60

    .line 430
    invoke-interface {v8, v7}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    .line 431
    :goto_61
    if-eqz v9, :cond_68

    .line 432
    invoke-interface {v9, v7}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    .line 433
    :goto_69
    if-eqz v10, :cond_72

    .line 434
    const-string v6, "com.android.contacts"

    invoke-interface {v10, v6, v7}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    goto :goto_73

    :cond_72
    const/4 v6, 0x0

    .line 435
    :goto_73
    if-eqz v10, :cond_7c

    .line 436
    const-string v8, "com.android.calendar"

    invoke-interface {v10, v8, v7}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    goto :goto_7d

    :cond_7c
    const/4 v8, 0x0

    .line 439
    :goto_7d
    nop

    .line 440
    const/4 v9, 0x2

    invoke-direct {v0, v9, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/util/Set;

    sget-object v16, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/4 v9, 0x0

    aput-object v16, v15, v9

    .line 439
    invoke-direct {v0, v10, v7, v15}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 444
    const/4 v10, 0x3

    invoke-direct {v0, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v15

    .line 445
    new-array v1, v14, [Ljava/util/Set;

    sget-object v18, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v18, v1, v9

    invoke-direct {v0, v15, v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 446
    const/4 v1, 0x2

    new-array v10, v1, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v10, v9

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v10, v14

    invoke-direct {v0, v15, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 449
    nop

    .line 450
    invoke-direct {v0, v14, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x4

    new-array v15, v10, [Ljava/util/Set;

    sget-object v19, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v19, v15, v9

    sget-object v19, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v19, v15, v14

    sget-object v19, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x2

    aput-object v19, v15, v17

    sget-object v19, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x3

    aput-object v19, v15, v10

    .line 449
    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 455
    nop

    .line 456
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v15, v10, [Ljava/util/Set;

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v15, v9

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v15, v14

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v17, 0x2

    aput-object v10, v15, v17

    .line 455
    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 460
    nop

    .line 461
    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v10, v14, [Ljava/util/Set;

    sget-object v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v15, v10, v9

    .line 460
    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 466
    nop

    .line 467
    const-string v1, "media"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x2

    new-array v15, v10, [Ljava/util/Set;

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v15, v9

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v15, v14

    .line 466
    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 471
    nop

    .line 472
    const-string v1, "downloads"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v10, v14, [Ljava/util/Set;

    sget-object v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v15, v10, v9

    .line 471
    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 476
    nop

    .line 477
    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v10, v14, [Ljava/util/Set;

    sget-object v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v15, v10, v9

    .line 476
    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 482
    nop

    .line 483
    const-string v1, "com.android.externalstorage.documents"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v10, v14, [Ljava/util/Set;

    sget-object v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v15, v10, v9

    .line 482
    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 487
    nop

    .line 488
    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v10, v14, [Ljava/util/Set;

    sget-object v15, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v15, v10, v9

    .line 487
    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 492
    if-nez v3, :cond_154

    .line 493
    nop

    .line 494
    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V

    .line 496
    goto :goto_160

    .line 497
    :cond_154
    array-length v1, v3

    move v10, v9

    :goto_156
    if-ge v10, v1, :cond_160

    aget-object v15, v3, v10

    .line 498
    invoke-direct {v0, v15, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerApp(Ljava/lang/String;I)V

    .line 497
    add-int/lit8 v10, v10, 0x1

    goto :goto_156

    .line 503
    :cond_160
    :goto_160
    if-eqz v4, :cond_16e

    .line 504
    array-length v1, v4

    move v3, v9

    :goto_164
    if-ge v3, v1, :cond_16e

    aget-object v10, v4, v3

    .line 505
    invoke-direct {v0, v10, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSimCallManager(Ljava/lang/String;I)V

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_164

    .line 511
    :cond_16e
    if-eqz v5, :cond_17c

    .line 512
    array-length v1, v5

    move v3, v9

    :goto_172
    if-ge v3, v1, :cond_17c

    aget-object v4, v5, v3

    .line 513
    invoke-direct {v0, v4, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemUseOpenWifiApp(Ljava/lang/String;I)V

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_172

    .line 519
    :cond_17c
    if-nez v2, :cond_188

    .line 520
    const-string v1, "android.intent.category.APP_MESSAGING"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V

    .line 523
    goto :goto_194

    .line 524
    :cond_188
    array-length v1, v2

    move v3, v9

    :goto_18a
    if-ge v3, v1, :cond_194

    aget-object v4, v2, v3

    .line 525
    invoke-direct {v0, v4, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsApp(Ljava/lang/String;I)V

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_18a

    .line 530
    :cond_194
    :goto_194
    nop

    .line 531
    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    .line 530
    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 535
    nop

    .line 536
    const-string v1, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    .line 535
    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 540
    nop

    .line 541
    const-string v1, "android.intent.category.APP_CALENDAR"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v9

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v14

    .line 540
    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 546
    nop

    .line 547
    const-string v1, "com.android.calendar"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 548
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v9

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v14

    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 550
    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 553
    nop

    .line 554
    invoke-direct {v0, v8, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    .line 553
    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 558
    nop

    .line 559
    const-string v1, "android.intent.category.APP_CONTACTS"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v9

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v14

    .line 558
    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 564
    nop

    .line 565
    invoke-direct {v0, v6, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackages([Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    .line 564
    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V

    .line 569
    nop

    .line 570
    const-string v1, "com.android.contacts"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 571
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v9

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v14

    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 573
    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 576
    nop

    .line 577
    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    .line 576
    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 582
    nop

    .line 583
    const-string v1, "android.intent.category.APP_MAPS"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    .line 582
    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 587
    nop

    .line 588
    const-string v1, "android.intent.category.APP_GALLERY"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    .line 587
    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 593
    nop

    .line 594
    const-string v1, "android.intent.category.APP_EMAIL"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v9

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v3, v14

    .line 593
    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 599
    const/4 v1, 0x4

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getKnownPackage(II)Ljava/lang/String;

    move-result-object v2

    .line 600
    if-nez v2, :cond_291

    .line 601
    const-string v1, "android.intent.category.APP_BROWSER"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_290

    .line 604
    const/4 v2, 0x0

    goto :goto_291

    .line 603
    :cond_290
    move-object v2, v1

    .line 607
    :cond_291
    :goto_291
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v14, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v1, v6, v9

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 611
    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz v11, :cond_2cd

    .line 612
    array-length v3, v11

    move v4, v9

    :goto_2a6
    if-ge v4, v3, :cond_2cd

    aget-object v5, v11, v4

    .line 613
    new-array v6, v1, [Ljava/util/Set;

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v6, v9

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v6, v14

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x2

    aput-object v8, v6, v10

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x3

    aput-object v8, v6, v10

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x4

    aput-object v8, v6, v10

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v6, v2

    invoke-direct {v0, v5, v7, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 612
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a6

    .line 619
    :cond_2cd
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_2e8

    .line 621
    nop

    .line 622
    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v3, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v9

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v5, v14

    .line 621
    invoke-direct {v0, v3, v7, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 628
    :cond_2e8
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 630
    nop

    .line 631
    invoke-direct {v0, v3, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v9

    .line 630
    invoke-direct {v0, v3, v7, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 635
    if-eqz v12, :cond_347

    .line 636
    array-length v3, v12

    move v4, v9

    :goto_307
    if-ge v4, v3, :cond_347

    aget-object v5, v12, v4

    .line 637
    const/16 v6, 0x8

    new-array v6, v6, [Ljava/util/Set;

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v6, v9

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v6, v14

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x2

    aput-object v8, v6, v10

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x3

    aput-object v8, v6, v10

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v10, 0x4

    aput-object v8, v6, v10

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v6, v2

    sget-object v8, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v8, v6, v1

    const/4 v8, 0x7

    sget-object v10, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v10, v6, v8

    invoke-direct {v0, v5, v7, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 641
    const/4 v6, 0x2

    new-array v8, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v8, v9

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ACTIVITY_RECOGNITION_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v8, v14

    invoke-direct {v0, v5, v7, v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 636
    add-int/lit8 v4, v4, 0x1

    goto :goto_307

    .line 645
    :cond_347
    if-eqz v13, :cond_35b

    .line 647
    array-length v1, v13

    move v3, v9

    :goto_34b
    if-ge v3, v1, :cond_35b

    aget-object v4, v13, v3

    .line 648
    new-array v5, v14, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v9

    invoke-direct {v0, v4, v7, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_34b

    .line 653
    :cond_35b
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    const-string v4, "foo.mp3"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "audio/mpeg"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 656
    nop

    .line 657
    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v14, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v9

    .line 656
    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 661
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 663
    const-string v3, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 664
    nop

    .line 665
    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v14, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v9

    .line 664
    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 669
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3ec

    .line 672
    const-string v1, "android.intent.category.HOME_MAIN"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageForCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 674
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v9

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v14

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-direct {v0, v1, v7, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 676
    new-array v3, v14, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v9

    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 679
    nop

    .line 680
    const-string v1, "com.android.fitness.TRACK"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v9

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v14

    .line 679
    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 685
    :cond_3ec
    new-array v1, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v1, v9

    const-string v3, "com.android.printspooler"

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 689
    nop

    .line 690
    const-string v1, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v9

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v14

    .line 689
    invoke-direct {v0, v1, v7, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 695
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    const-string/jumbo v3, "vnd.android.cursor.item/ndef_msg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 697
    nop

    .line 698
    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v9

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v4, v14

    .line 697
    invoke-direct {v0, v1, v7, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 702
    nop

    .line 703
    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v14, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v9

    .line 702
    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 708
    new-array v1, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v1, v9

    const-string v3, "com.android.companiondevicemanager"

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 713
    nop

    .line 714
    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v14, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v9

    .line 713
    invoke-direct {v0, v1, v7, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 719
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 720
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_484

    .line 722
    new-array v2, v2, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v14

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 728
    :cond_484
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 729
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 730
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49d

    .line 731
    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 737
    :cond_49d
    new-array v1, v14, [Ljava/util/Set;

    sget-object v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    aput-object v2, v1, v9

    const-string v2, "com.android.sharedstoragebackup"

    invoke-direct {v0, v2, v7, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 741
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 742
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 743
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c1

    .line 744
    new-array v2, v14, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 747
    :cond_4c1
    return-void

    .line 417
    :catchall_4c2
    move-exception v0

    :try_start_4c3
    monitor-exit v1
    :try_end_4c4
    .catchall {:try_start_4c3 .. :try_end_4c4} :catchall_4c2

    throw v0
.end method

.method private final varargs grantIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 10
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

    .line 343
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V

    .line 345
    return-void
.end method

.method private final varargs grantPermissionToEachSystemPackage(Ljava/util/ArrayList;I[Ljava/util/Set;)V
    .registers 7
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

    .line 757
    if-nez p1, :cond_3

    return-void

    .line 758
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 759
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    .line 760
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 762
    :cond_16
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V
    .registers 16
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

    .line 385
    if-nez p1, :cond_3

    .line 386
    return-void

    .line 388
    :cond_3
    invoke-static {p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 389
    array-length v0, p6

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    aget-object v4, p6, v1

    .line 390
    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 394
    :cond_1b
    return-void
.end method

.method private final varargs grantPermissionsToPackage(Ljava/lang/String;IZZ[Ljava/util/Set;)V
    .registers 13
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

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToPackage(Landroid/content/pm/PackageInfo;IZZZ[Ljava/util/Set;)V

    .line 379
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .registers 5

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to platform components for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x2000b000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 328
    if-nez v1, :cond_37

    .line 329
    goto :goto_28

    .line 331
    :cond_37
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 332
    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 333
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 334
    goto :goto_28

    .line 336
    :cond_4c
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissionsForSystemPackage(ILandroid/content/pm/PackageInfo;)V

    .line 337
    goto :goto_28

    .line 338
    :cond_50
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V
    .registers 13
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

    .line 364
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 365
    return-void

    .line 367
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

    .line 370
    return-void
.end method

.method private final varargs grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 5
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

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 359
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 976
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V

    .line 978
    return-void
.end method

.method private grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZI)V"
        }
    .end annotation

    .line 1065
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 1066
    if-nez v1, :cond_d

    .line 1067
    return-void

    .line 1070
    :cond_d
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1071
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1072
    return-void

    .line 1077
    :cond_16
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1078
    array-length v5, v3

    .line 1079
    const/4 v9, 0x0

    move v6, v9

    :goto_21
    const/4 v7, 0x0

    if-ge v6, v5, :cond_31

    .line 1080
    aget-object v10, v3, v6

    invoke-static {v4, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 1081
    aput-object v7, v3, v6

    .line 1079
    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 1084
    :cond_31
    sget-object v4, Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$DefaultPermissionGrantPolicy$SHfHTWKpfBf_vZtWArm-FlNBI8k;

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1088
    :try_start_39
    iget-object v4, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 1089
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_49} :catch_23e

    .line 1092
    nop

    .line 1094
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1095
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1097
    nop

    .line 1098
    if-eqz p3, :cond_57

    .line 1099
    const/16 v5, 0x30

    goto :goto_59

    .line 1098
    :cond_57
    const/16 v5, 0x20

    .line 1103
    :goto_59
    iget-object v6, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v12, Landroid/permission/PermissionManager;

    .line 1104
    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager;

    invoke-virtual {v6}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v6

    .line 1105
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    .line 1106
    move v13, v9

    :goto_6c
    if-ge v13, v12, :cond_94

    .line 1107
    nop

    .line 1108
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1110
    if-eqz v4, :cond_90

    iget v15, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1111
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v7

    if-ge v15, v7, :cond_90

    .line 1112
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 1113
    invoke-virtual {v14}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1106
    :cond_90
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_6c

    .line 1117
    :cond_94
    nop

    .line 1125
    if-nez p4, :cond_cc

    if-eqz v4, :cond_cc

    .line 1127
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 1128
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1129
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-direct {v0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1130
    if-eqz v2, :cond_cc

    .line 1131
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 1132
    return-void

    .line 1134
    :cond_b6
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cc

    .line 1135
    new-instance v7, Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1136
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v12, v3

    move-object v13, v7

    goto :goto_ce

    .line 1141
    :cond_cc
    move-object v12, v3

    const/4 v13, 0x0

    :goto_ce
    array-length v14, v12

    .line 1145
    new-array v2, v14, [Ljava/lang/String;

    .line 1146
    nop

    .line 1147
    nop

    .line 1148
    move v3, v9

    move v4, v3

    move v6, v4

    :goto_d6
    if-ge v3, v14, :cond_ef

    .line 1149
    aget-object v7, v12, v3

    .line 1150
    invoke-direct {v0, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_e5

    .line 1151
    aput-object v7, v2, v6

    .line 1152
    add-int/lit8 v6, v6, 0x1

    goto :goto_ec

    .line 1154
    :cond_e5
    add-int/lit8 v15, v14, -0x1

    sub-int/2addr v15, v4

    aput-object v7, v2, v15

    .line 1156
    add-int/lit8 v4, v4, 0x1

    .line 1148
    :goto_ec
    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    .line 1160
    :cond_ef
    move v15, v9

    :goto_f0
    if-ge v15, v14, :cond_23d

    .line 1162
    aget-object v7, v12, v15

    .line 1166
    if-eqz v13, :cond_fe

    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 1167
    goto/16 :goto_239

    .line 1170
    :cond_fe
    invoke-virtual {v11, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_239

    .line 1171
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7, v3, v8}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v6

    .line 1176
    if-eqz p3, :cond_11a

    and-int/lit8 v2, v6, 0x10

    if-eqz v2, :cond_11a

    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_11c

    :cond_11a
    move/from16 v16, v9

    .line 1186
    :goto_11c
    invoke-direct {v0, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isFixedOrUserSet(I)Z

    move-result v2

    if-eqz v2, :cond_130

    if-nez p4, :cond_130

    if-eqz v16, :cond_127

    goto :goto_130

    :cond_127
    move/from16 v17, v5

    move/from16 v19, v6

    move-object v9, v7

    move/from16 v7, p6

    goto/16 :goto_21a

    .line 1191
    :cond_130
    :goto_130
    and-int/lit8 v2, v6, 0x4

    if-eqz v2, :cond_136

    .line 1192
    goto/16 :goto_239

    .line 1196
    :cond_136
    and-int/lit16 v2, v6, 0x3800

    or-int v17, v5, v2

    .line 1199
    if-eqz p5, :cond_15a

    invoke-direct {v0, v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 1200
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    const/16 v18, 0x1000

    move-object v3, v7

    move/from16 v19, v6

    move/from16 v6, v18

    move-object/from16 p2, v7

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_15e

    .line 1199
    :cond_15a
    move/from16 v19, v6

    move-object/from16 p2, v7

    .line 1208
    :goto_15e
    if-eqz v16, :cond_172

    .line 1209
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    and-int/lit8 v6, v19, -0x11

    move-object/from16 v3, p2

    move/from16 v5, v19

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1214
    :cond_172
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v7, p2

    invoke-virtual {v10, v7, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_187

    .line 1216
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1217
    invoke-virtual {v2, v3, v7, v8}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1220
    :cond_187
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, v7

    move/from16 v5, v17

    move/from16 v6, v17

    move-object v9, v7

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1223
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1224
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1223
    move/from16 v7, p6

    invoke-static {v7, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 1226
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionManagerService;->getBackgroundPermissions()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1227
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1228
    if-eqz v3, :cond_1e4

    .line 1229
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1230
    const/4 v5, 0x0

    :goto_1ba
    if-ge v5, v4, :cond_1e4

    .line 1231
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1233
    move-object/from16 p2, v3

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1df

    .line 1237
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 1238
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1237
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 1241
    goto :goto_1e4

    .line 1230
    :cond_1df
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, p2

    goto :goto_1ba

    .line 1246
    :cond_1e4
    :goto_1e4
    invoke-direct {v0, v9}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1247
    invoke-static {v9}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1248
    if-nez v3, :cond_201

    .line 1249
    if-eqz v4, :cond_1ff

    .line 1251
    iget-object v3, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v6}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    goto :goto_21a

    .line 1249
    :cond_1ff
    const/4 v6, 0x0

    goto :goto_21a

    .line 1256
    :cond_201
    const/4 v6, 0x0

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v3, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_20c

    .line 1258
    move v3, v6

    goto :goto_20d

    .line 1260
    :cond_20c
    const/4 v3, 0x4

    .line 1263
    :goto_20d
    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    invoke-virtual {v5, v4, v2, v3}, Landroid/app/AppOpsManager;->setUidMode(Ljava/lang/String;II)V

    .line 1289
    :goto_21a
    and-int/lit8 v2, v19, 0x20

    if-eqz v2, :cond_236

    and-int/lit8 v2, v19, 0x10

    if-eqz v2, :cond_236

    if-nez p3, :cond_236

    .line 1296
    iget-object v2, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v3, v9

    const/4 v9, 0x0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_237

    .line 1289
    :cond_236
    const/4 v9, 0x0

    .line 1161
    :goto_237
    move/from16 v5, v17

    :cond_239
    :goto_239
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_f0

    .line 1301
    :cond_23d
    return-void

    .line 1090
    :catch_23e
    move-exception v0

    .line 1091
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private grantRuntimePermissionsForSystemPackage(ILandroid/content/pm/PackageInfo;)V
    .registers 9

    .line 304
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 305
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 306
    iget-object v5, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 307
    if-nez v5, :cond_16

    .line 308
    goto :goto_1f

    .line 310
    :cond_16
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 311
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 314
    :cond_22
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 315
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    .line 317
    :cond_2c
    return-void
.end method

.method private final varargs grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .registers 5
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

    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;IZ[Ljava/util/Set;)V

    .line 352
    return-void
.end method

.method private isFixedOrUserSet(I)Z
    .registers 2

    .line 1039
    and-int/lit8 p1, p1, 0x17

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private isPermissionDangerous(Ljava/lang/String;)Z
    .registers 5

    .line 1565
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    .line 1566
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result p1
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_15

    if-ne p1, v0, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 1567
    :catch_15
    move-exception p1

    .line 1569
    return v0
.end method

.method private isPermissionRestricted(Ljava/lang/String;)Z
    .registers 4

    .line 1557
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result p1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    return p1

    .line 1558
    :catch_10
    move-exception p1

    .line 1559
    return v0
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    .line 1326
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_e

    .line 1327
    const/4 p1, 0x1

    return p1

    .line 1329
    :cond_e
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 1330
    return v1

    .line 1332
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1333
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1334
    if-eqz v0, :cond_33

    .line 1335
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1336
    if-eqz v0, :cond_3c

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_3c

    .line 1338
    return v1

    .line 1340
    :cond_33
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_3c

    .line 1341
    return v1

    .line 1340
    :cond_3c
    nop

    .line 1343
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mServiceInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 4

    .line 967
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 968
    return v0

    .line 970
    :cond_4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 971
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivApp(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    nop

    .line 970
    :goto_15
    return v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .registers 2

    .line 963
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;
    .registers 1

    .line 1084
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 7
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

    .line 1457
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1459
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1460
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_45

    .line 1461
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1462
    goto :goto_4

    .line 1464
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exceptions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1465
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_4

    .line 1467
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultPermGrantPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1470
    :cond_45
    return-void
.end method

.method private parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 8
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

    .line 1474
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1476
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1477
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_c1

    .line 1478
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1479
    goto :goto_4

    .line 1481
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_a1

    .line 1482
    const/4 v1, 0x0

    const-string/jumbo v3, "package"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1484
    nop

    .line 1485
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1486
    if-nez v3, :cond_9c

    .line 1488
    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1490
    if-nez v3, :cond_57

    .line 1491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1493
    goto :goto_4

    .line 1496
    :cond_57
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 1497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown system package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1499
    goto :goto_4

    .line 1503
    :cond_75
    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_94

    .line 1504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping non supporting runtime permissions package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1507
    goto/16 :goto_4

    .line 1509
    :cond_94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    :cond_9c
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 1514
    goto/16 :goto_4

    .line 1515
    :cond_a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "under <exceptions>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1518
    :cond_c1
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .registers 8
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

    .line 1522
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1524
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_71

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 1525
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_71

    .line 1526
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 1527
    goto :goto_4

    .line 1530
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DefaultPermGrantPolicy"

    if-eqz v1, :cond_52

    .line 1531
    const/4 v1, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1532
    if-nez v1, :cond_3c

    .line 1533
    const-string v1, "Mandatory name attribute missing for permission tag"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1535
    goto :goto_4

    .line 1538
    :cond_3c
    const-string v2, "fixed"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    .line 1539
    const-string/jumbo v3, "whitelisted"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    .line 1541
    new-instance v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;ZZ)V

    .line 1543
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    goto :goto_4

    .line 1545
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "under <exception>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1548
    :cond_71
    return-void
.end method

.method private readDefaultPermissionExceptionsLocked()Landroid/util/ArrayMap;
    .registers 10
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

    .line 1423
    invoke-direct {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getDefaultPermissionFiles()[Ljava/io/File;

    move-result-object v0

    .line 1424
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1425
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v0

    .line 1428
    :cond_d
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1431
    array-length v3, v0

    :goto_13
    if-ge v1, v3, :cond_aa

    aget-object v4, v0, v1

    .line 1432
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "DefaultPermGrantPolicy"

    if-nez v5, :cond_4b

    .line 1433
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " directory, ignoring"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1433
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    goto :goto_a6

    .line 1437
    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 1438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default permissions file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " cannot be read"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    goto :goto_a6

    .line 1442
    :cond_6b
    :try_start_6b
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_75
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_75} :catch_91
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_75} :catch_91

    .line 1441
    nop

    .line 1444
    :try_start_76
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1445
    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1446
    invoke-direct {p0, v7, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_85

    .line 1447
    :try_start_81
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_84} :catch_91
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_91

    .line 1449
    goto :goto_a6

    .line 1441
    :catchall_85
    move-exception v7

    :try_start_86
    throw v7
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    .line 1447
    :catchall_87
    move-exception v8

    :try_start_88
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v5

    :try_start_8d
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw v8
    :try_end_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_91} :catch_91
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_91} :catch_91

    :catch_91
    move-exception v5

    .line 1448
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading default permissions file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1431
    :goto_a6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    .line 1452
    :cond_aa
    return-object v2
.end method

.method private revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 982
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 983
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 984
    return-void

    .line 986
    :cond_d
    new-instance v1, Landroid/util/ArraySet;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 988
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 990
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 991
    goto :goto_1c

    .line 994
    :cond_30
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 995
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 996
    invoke-virtual {v0, v3, p1, v7}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    .line 999
    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_43

    .line 1000
    goto :goto_1c

    .line 1003
    :cond_43
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_48

    .line 1004
    goto :goto_1c

    .line 1009
    :cond_48
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4f

    if-nez p3, :cond_4f

    .line 1010
    goto :goto_1c

    .line 1012
    :cond_4f
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v7}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x20

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 1024
    goto :goto_1c

    .line 1025
    :cond_66
    return-void
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .registers 4

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 296
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(I)V

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .registers 6

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to active LUI app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 871
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowser(Ljava/lang/String;I)V
    .registers 6

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default browser for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 889
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V
    .registers 11

    .line 801
    if-nez p1, :cond_3

    .line 802
    return-void

    .line 804
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

    .line 805
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

    .line 807
    return-void
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .registers 6

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to default Use Open WiFi app for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 798
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .registers 10

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    if-nez p1, :cond_19

    .line 819
    return-void

    .line 821
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_37

    aget-object v3, p1, v2

    .line 822
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

    .line 821
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 825
    :cond_37
    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .registers 10

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled ImsServices for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    if-nez p1, :cond_19

    .line 830
    return-void

    .line 832
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_41

    aget-object v3, p1, v2

    .line 833
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

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 837
    :cond_41
    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 10

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting permissions to enabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    if-nez p1, :cond_19

    .line 843
    return-void

    .line 845
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_32

    aget-object v3, p1, v2

    .line 848
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    .line 845
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 851
    :cond_32
    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .registers 8

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking permissions from disabled data services for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    if-nez p1, :cond_19

    .line 857
    return-void

    .line 859
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_3d

    aget-object v2, p1, v1

    .line 860
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 861
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 862
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 863
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 859
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 866
    :cond_3d
    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .registers 8

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke permissions from LUI apps for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPermGrantPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    if-nez p1, :cond_19

    .line 876
    return-void

    .line 878
    :cond_19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_38

    aget-object v2, p1, v1

    .line 879
    invoke-direct {p0, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 880
    invoke-direct {p0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-static {v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 881
    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Ljava/lang/String;Ljava/util/Set;ZI)V

    .line 878
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 884
    :cond_38
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    return-void
.end method

.method public setDialerAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setSimCallManagerPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setSmsAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setSyncAdapterPackagesProvider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

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
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public wereDefaultPermissionsGrantedSinceBoot(I)Z
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mDefaultPermissionsGrantedUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit v0

    return p1

    .line 291
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

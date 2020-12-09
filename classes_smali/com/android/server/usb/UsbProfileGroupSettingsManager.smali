.class Lcom/android/server/usb/UsbProfileGroupSettingsManager;
.super Ljava/lang/Object;
.source "UsbProfileGroupSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final sSingleUserSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/AccessoryFilter;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/DeviceFilter;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private mIsWriteSettingsScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

.field private final mParentUser:Landroid/os/UserHandle;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    const-class v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbHandlerManager;)V
    .registers 10

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    .line 195
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    .line 216
    :try_start_20
    const-string v0, "android"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_27} :catch_92

    .line 219
    nop

    .line 221
    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 223
    iput-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 224
    const-string/jumbo p3, "user"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 226
    iput-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 227
    new-instance p3, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 228
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "usb_device_manager.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "usb-state"

    invoke-direct {p3, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x1110056

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDisablePermissionDialogs:Z

    .line 234
    iget-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 235
    :try_start_69
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 236
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->upgradeSingleUserLocked()V

    .line 238
    :cond_74
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readSettingsLocked()V

    .line 239
    monitor-exit p3
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_8f

    .line 241
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v1, p3, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 242
    new-instance p1, Lcom/android/server/usb/MtpNotificationManager;

    new-instance p2, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;

    invoke-direct {p2, p0}, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    invoke-direct {p1, v0, p2}, Lcom/android/server/usb/MtpNotificationManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    .line 247
    iput-object p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    .line 248
    return-void

    .line 239
    :catchall_8f
    move-exception p1

    :try_start_90
    monitor-exit p3
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw p1

    .line 217
    :catch_92
    move-exception p1

    .line 218
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Missing android package"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserHandle;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserManager;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/AccessoryFilter;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 948
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/AccessoryFilter;

    .line 949
    invoke-virtual {p2, v2}, Landroid/hardware/usb/AccessoryFilter;->contains(Landroid/hardware/usb/AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 950
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 951
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 952
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_32
    goto :goto_f

    .line 957
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 958
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/AccessoryFilter;

    .line 959
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    goto :goto_3d

    .line 963
    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/DeviceFilter;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/DeviceFilter;

    .line 925
    invoke-virtual {p2, v2}, Landroid/hardware/usb/DeviceFilter;->contains(Landroid/hardware/usb/DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 926
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 927
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 928
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    :cond_32
    goto :goto_f

    .line 933
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 934
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/DeviceFilter;

    .line 935
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    goto :goto_3d

    .line 939
    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private clearPackageDefaultsLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Z
    .registers 10

    .line 1145
    nop

    .line 1146
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_38

    .line 1149
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v4, v3, [Landroid/hardware/usb/DeviceFilter;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/usb/DeviceFilter;

    .line 1150
    move v4, v3

    move v5, v4

    :goto_1e
    array-length v6, v1

    if-ge v4, v6, :cond_39

    .line 1151
    aget-object v6, v1, v4

    .line 1152
    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1153
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    move v5, v2

    .line 1150
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1147
    :cond_38
    move v5, v3

    .line 1158
    :cond_39
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1160
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 1161
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v4, v3, [Landroid/hardware/usb/AccessoryFilter;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/usb/AccessoryFilter;

    .line 1162
    nop

    :goto_50
    array-length v4, v1

    if-ge v3, v4, :cond_6a

    .line 1163
    aget-object v4, v1, v3

    .line 1164
    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 1165
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    move v5, v2

    .line 1162
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 1170
    :cond_6a
    monitor-exit v0

    return v5

    .line 1171
    :catchall_6c
    move-exception p1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_4 .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method private static createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;
    .registers 3

    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1211
    const/high16 p0, 0x11000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1214
    return-object v0
.end method

.method static getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/AccessoryFilter;",
            ">;"
        }
    .end annotation

    .line 510
    nop

    .line 511
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 513
    nop

    .line 515
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_64
    .catchall {:try_start_5 .. :try_end_b} :catchall_61

    .line 516
    if-nez p0, :cond_2b

    .line 517
    :try_start_d
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no meta-data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_5c
    .catchall {:try_start_d .. :try_end_24} :catchall_5a

    .line 518
    nop

    .line 535
    if-eqz p0, :cond_2a

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 518
    :cond_2a
    return-object v1

    .line 521
    :cond_2b
    :try_start_2b
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 522
    :goto_2e
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_55

    .line 523
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string/jumbo v3, "usb-accessory"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 525
    if-nez v1, :cond_4a

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    .line 528
    :cond_4a
    invoke-static {p0}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_51
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_54} :catch_5c
    .catchall {:try_start_2b .. :try_end_54} :catchall_5a

    .line 531
    goto :goto_2e

    .line 535
    :cond_55
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 537
    move-object p0, v1

    goto :goto_85

    .line 535
    :catchall_5a
    move-exception p1

    goto :goto_86

    .line 532
    :catch_5c
    move-exception v0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_66

    .line 535
    :catchall_61
    move-exception p1

    move-object p0, v1

    goto :goto_86

    .line 532
    :catch_64
    move-exception v0

    move-object p0, v1

    .line 533
    :goto_66
    :try_start_66
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load component info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_61

    .line 535
    if-eqz v1, :cond_85

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 537
    :cond_85
    :goto_85
    return-object p0

    .line 535
    :goto_86
    if-eqz p0, :cond_8b

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8b
    throw p1
.end method

.method private getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 728
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p2

    .line 729
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 730
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_23

    .line 731
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 732
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 733
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 737
    :cond_23
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;",
            ")",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .line 888
    const/4 v0, 0x0

    if-eqz p2, :cond_34

    .line 890
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 891
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_33

    new-instance v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 893
    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 891
    invoke-virtual {p2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 895
    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p1

    .line 897
    :cond_33
    goto :goto_7

    .line 900
    :cond_34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_57

    .line 901
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 902
    if-eqz p1, :cond_57

    .line 903
    iget-boolean p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDisablePermissionDialogs:Z

    if-eqz p2, :cond_4b

    .line 904
    return-object p1

    .line 907
    :cond_4b
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_57

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, v1

    if-eqz p2, :cond_57

    .line 910
    return-object p1

    .line 915
    :cond_57
    return-object v0
.end method

.method static getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/DeviceFilter;",
            ">;"
        }
    .end annotation

    .line 468
    nop

    .line 469
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 471
    nop

    .line 473
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_64
    .catchall {:try_start_5 .. :try_end_b} :catchall_61

    .line 474
    if-nez p0, :cond_2b

    .line 475
    :try_start_d
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no meta-data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_5c
    .catchall {:try_start_d .. :try_end_24} :catchall_5a

    .line 476
    nop

    .line 493
    if-eqz p0, :cond_2a

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 476
    :cond_2a
    return-object v1

    .line 479
    :cond_2b
    :try_start_2b
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 480
    :goto_2e
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_55

    .line 481
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string/jumbo v3, "usb-device"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 483
    if-nez v1, :cond_4a

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    .line 486
    :cond_4a
    invoke-static {p0}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_51
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_54} :catch_5c
    .catchall {:try_start_2b .. :try_end_54} :catchall_5a

    .line 489
    goto :goto_2e

    .line 493
    :cond_55
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 495
    move-object p0, v1

    goto :goto_85

    .line 493
    :catchall_5a
    move-exception p1

    goto :goto_86

    .line 490
    :catch_5c
    move-exception v0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_66

    .line 493
    :catchall_61
    move-exception p1

    move-object p0, v1

    goto :goto_86

    .line 490
    :catch_64
    move-exception v0

    move-object p0, v1

    .line 491
    :goto_66
    :try_start_66
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load component info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_61

    .line 493
    if-eqz v1, :cond_85

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 495
    :cond_85
    :goto_85
    return-object p0

    .line 493
    :goto_86
    if-eqz p0, :cond_8b

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8b
    throw p1
.end method

.method private getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p2

    .line 714
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 715
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_23

    .line 716
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 717
    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 718
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 722
    :cond_23
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getSerial(Landroid/os/UserHandle;)I
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p1

    return p1
.end method

.method private handlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V
    .registers 9

    .line 1004
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    nop

    .line 1009
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    const/16 v3, 0x81

    iget-object v4, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 1011
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1009
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_14} :catch_43
    .catchall {:try_start_4 .. :try_end_14} :catchall_41

    .line 1015
    nop

    .line 1017
    :try_start_15
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1018
    if-nez v1, :cond_1b

    monitor-exit v0

    return-void

    .line 1019
    :cond_1b
    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    array-length v4, v1

    if-ge v2, v4, :cond_3a

    .line 1021
    aget-object v4, v1, v2

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2c

    .line 1023
    move v3, v5

    .line 1026
    :cond_2c
    aget-object v4, v1, v2

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1028
    move v3, v5

    .line 1019
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1032
    :cond_3a
    if-eqz v3, :cond_3f

    .line 1033
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1035
    :cond_3f
    monitor-exit v0

    .line 1036
    return-void

    .line 1035
    :catchall_41
    move-exception p1

    goto :goto_5c

    .line 1012
    :catch_43
    move-exception v1

    .line 1013
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePackageUpdate could not find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    monitor-exit v0

    return-void

    .line 1035
    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_15 .. :try_end_5d} :catchall_41

    throw p1
.end method

.method private handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 969
    nop

    .line 970
    nop

    .line 973
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_54
    .catchall {:try_start_4 .. :try_end_a} :catchall_52

    .line 974
    if-nez v1, :cond_12

    .line 996
    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 974
    :cond_11
    return v0

    .line 976
    :cond_12
    :try_start_12
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 977
    :goto_15
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_4d

    .line 978
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p3

    .line 979
    const-string/jumbo v3, "usb-device"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 980
    invoke-static {v1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object p3

    .line 981
    invoke-direct {p0, p1, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/DeviceFilter;)Z

    move-result p3

    if-eqz p3, :cond_34

    .line 982
    move v0, v2

    .line 984
    :cond_34
    goto :goto_49

    .line 985
    :cond_35
    const-string/jumbo v3, "usb-accessory"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_49

    .line 986
    invoke-static {v1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object p3

    .line 987
    invoke-direct {p0, p1, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/AccessoryFilter;)Z

    move-result p3

    if-eqz p3, :cond_49

    .line 988
    move v0, v2

    .line 991
    :cond_49
    :goto_49
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4c} :catch_54
    .catchall {:try_start_12 .. :try_end_4c} :catchall_52

    .line 992
    goto :goto_15

    .line 996
    :cond_4d
    nop

    :goto_4e
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_72

    :catchall_52
    move-exception p1

    goto :goto_73

    .line 993
    :catch_54
    move-exception p1

    .line 994
    :try_start_55
    sget-object p3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load component info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_55 .. :try_end_6f} :catchall_52

    .line 996
    if-eqz v1, :cond_72

    goto :goto_4e

    .line 998
    :cond_72
    :goto_72
    return v0

    .line 996
    :goto_73
    if-eqz v1, :cond_78

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_78
    throw p1
.end method

.method private isForwardMatch(Landroid/content/pm/ResolveInfo;)Z
    .registers 3

    .line 605
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .registers 10

    .line 544
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 545
    return v1

    .line 548
    :cond_8
    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    .line 549
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 550
    if-eqz v2, :cond_2a

    .line 551
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 552
    move v4, v0

    :goto_18
    if-ge v4, v3, :cond_2a

    .line 553
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/DeviceFilter;

    invoke-virtual {v5, p2}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 554
    return v1

    .line 552
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 560
    :cond_2a
    if-eqz p3, :cond_4b

    .line 561
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p2, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object p1

    .line 563
    if-eqz p1, :cond_4b

    .line 564
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 565
    move v2, v0

    :goto_39
    if-ge v2, p2, :cond_4b

    .line 566
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/AccessoryFilter;

    invoke-virtual {v3, p3}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 567
    return v1

    .line 565
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 573
    :cond_4b
    return v0
.end method

.method private preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 617
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 618
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 619
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 622
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 623
    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_6a

    .line 624
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 628
    invoke-direct {p0, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 629
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    goto :goto_67

    .line 634
    :cond_27
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_40

    .line 635
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/high16 v8, -0x80000000

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    :cond_40
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 641
    iget v8, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 644
    iget v9, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v9, v7, :cond_56

    .line 645
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 646
    :cond_56
    iget v9, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v9, v7, :cond_67

    .line 647
    iget v7, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    iget v9, v6, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 650
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_67
    :goto_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 657
    :cond_6a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 659
    nop

    :goto_74
    if-ge v4, v1, :cond_82

    .line 660
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 659
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 663
    :cond_82
    return-object p1
.end method

.method private queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 589
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_30

    .line 590
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    .line 591
    invoke-virtual {v4, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 590
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 589
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 594
    :cond_30
    return-object v1
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    nop

    .line 291
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 293
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_a
    if-ge v3, v1, :cond_3c

    .line 295
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 296
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    :cond_1d
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 300
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 301
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    .line 294
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 305
    :cond_3c
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 306
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "usb-device"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 307
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v1

    .line 308
    if-eqz v0, :cond_7b

    .line 309
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v5, v4, v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 311
    :cond_5d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "usb-accessory"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 312
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v1

    .line 313
    if-eqz v0, :cond_7c

    .line 314
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v5, v4, v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 311
    :cond_7b
    :goto_7b
    nop

    .line 317
    :cond_7c
    :goto_7c
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 318
    return-void
.end method

.method private readSettingsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 363
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 365
    nop

    .line 367
    const/4 v0, 0x0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 368
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 369
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 371
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 372
    :goto_22
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_53

    .line 373
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 374
    const-string/jumbo v3, "preference"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 375
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3d

    .line 377
    :cond_3a
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_3d} :catch_52
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_40
    .catchall {:try_start_c .. :try_end_3d} :catchall_3e

    .line 379
    :goto_3d
    goto :goto_22

    .line 386
    :catchall_3e
    move-exception v1

    goto :goto_4e

    .line 382
    :catch_40
    move-exception v1

    .line 383
    :try_start_41
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "error reading settings file, deleting to start fresh"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_3e

    goto :goto_53

    .line 386
    :goto_4e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 380
    :catch_52
    move-exception v1

    .line 386
    :cond_53
    :goto_53
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 387
    nop

    .line 388
    return-void
.end method

.method private removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 675
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 679
    nop

    .line 680
    nop

    .line 681
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_a
    if-ge v2, v0, :cond_32

    .line 682
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 683
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 684
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 685
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 686
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 688
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    .line 681
    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 694
    :cond_32
    if-eqz v3, :cond_38

    if-nez v4, :cond_37

    goto :goto_38

    .line 707
    :cond_37
    return-object p1

    .line 695
    :cond_38
    :goto_38
    new-instance v2, Ljava/util/ArrayList;

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 698
    nop

    :goto_3f
    if-ge v1, v0, :cond_53

    .line 699
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 700
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 701
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 704
    :cond_53
    return-object v2
.end method

.method private resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;Z)V
    .registers 11

    .line 752
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_3
    invoke-direct {p0, p2, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v3

    .line 754
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v2, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v2, p2}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 755
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 754
    invoke-direct {p0, v3, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 756
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_33

    .line 758
    if-eqz p3, :cond_2b

    iget-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p3, p2}, Lcom/android/server/usb/MtpNotificationManager;->shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z

    move-result p3

    if-eqz p3, :cond_2b

    if-nez v4, :cond_2b

    .line 761
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    invoke-virtual {p1, p2}, Lcom/android/server/usb/MtpNotificationManager;->showNotification(Landroid/hardware/usb/UsbDevice;)V

    .line 762
    return-void

    .line 766
    :cond_2b
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 767
    return-void

    .line 756
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    .line 838
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 839
    if-eqz p5, :cond_f

    .line 840
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p5, p2}, Lcom/android/server/usb/UsbHandlerManager;->showUsbAccessoryUriActivity(Landroid/hardware/usb/UsbAccessory;Landroid/os/UserHandle;)V

    .line 843
    :cond_f
    return-void

    .line 846
    :cond_10
    if-eqz p3, :cond_57

    .line 847
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 848
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 847
    invoke-virtual {p2, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object p2

    .line 850
    if-eqz p4, :cond_2a

    .line 851
    iget-object p5, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 852
    invoke-virtual {p2, p4, p5}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    goto :goto_33

    .line 853
    :cond_2a
    if-eqz p5, :cond_33

    .line 854
    iget-object p4, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, p5, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 860
    :cond_33
    :goto_33
    :try_start_33
    new-instance p2, Landroid/content/ComponentName;

    iget-object p4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p5, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 863
    iget-object p2, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 865
    iget-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_4c} :catch_4d

    .line 868
    goto :goto_56

    .line 866
    :catch_4d
    move-exception p1

    .line 867
    sget-object p2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "startActivity failed"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    :goto_56
    goto :goto_72

    .line 870
    :cond_57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_6b

    .line 871
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, p2, p4, p5}, Lcom/android/server/usb/UsbHandlerManager;->confirmUsbHandler(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_72

    .line 873
    :cond_6b
    iget-object p3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    iget-object p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {p3, p2, p4, p1}, Lcom/android/server/usb/UsbHandlerManager;->selectUsbHandler(Ljava/util/ArrayList;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 876
    :goto_72
    return-void
.end method

.method private scheduleWriteSettingsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 400
    iget-boolean v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    if-eqz v0, :cond_5

    .line 401
    return-void

    .line 403
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    .line 406
    new-instance v0, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$_G1PjxMa22pAIRMzYCwyomX8uhk;

    invoke-direct {v0, p0}, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$_G1PjxMa22pAIRMzYCwyomX8uhk;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method private upgradeSingleUserLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 327
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 328
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    const/4 v0, 0x0

    .line 332
    :try_start_13
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_1a} :catch_4d
    .catchall {:try_start_13 .. :try_end_1a} :catchall_48

    .line 333
    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 334
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 336
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 337
    :goto_2a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_58

    .line 338
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 339
    const-string/jumbo v3, "preference"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 340
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_45

    .line 342
    :cond_42
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_45} :catch_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_45} :catch_46
    .catchall {:try_start_1a .. :try_end_45} :catchall_65

    .line 344
    :goto_45
    goto :goto_2a

    .line 345
    :catch_46
    move-exception v0

    goto :goto_51

    .line 348
    :catchall_48
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_66

    .line 345
    :catch_4d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 346
    :goto_51
    :try_start_51
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read single-user settings"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_65

    .line 348
    :cond_58
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 349
    nop

    .line 351
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 354
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_6a

    .line 348
    :catchall_65
    move-exception v0

    :goto_66
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 356
    :cond_6a
    :goto_6a
    return-void
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 8

    .line 808
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    const-string v0, "accessory"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    const/high16 v0, 0x11000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 816
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 818
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v4, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v4, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 819
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 818
    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 820
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_31

    .line 822
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 823
    return-void

    .line 820
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    .line 1128
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1130
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1131
    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearPackageDefaultsLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1132
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1134
    :cond_12
    monitor-exit p1

    .line 1135
    return-void

    .line 1134
    :catchall_14
    move-exception p2

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p2
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .registers 5

    .line 741
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 746
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;Z)V

    .line 747
    return-void
.end method

.method public deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V
    .registers 8

    .line 770
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 778
    :try_start_11
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 779
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 778
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_22} :catch_5d

    .line 784
    nop

    .line 786
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 787
    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 789
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 790
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 792
    :try_start_3c
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_43} :catch_44

    .line 795
    goto :goto_5c

    .line 793
    :catch_44
    move-exception p2

    .line 794
    sget-object p2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to start activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :goto_5c
    return-void

    .line 780
    :catch_5d
    move-exception p1

    .line 781
    sget-object p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default USB handling package ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") not found  for user "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 14

    .line 1175
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 1177
    iget-object p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1178
    :try_start_7
    const-string/jumbo v0, "parent_user_id"

    const-wide v1, 0x10500000001L

    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 1179
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1178
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1181
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide v2, 0x10b00000002L

    const-wide v4, 0x10b00000001L

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/DeviceFilter;

    .line 1182
    const-string v6, "device_preferences"

    const-wide v7, 0x20b00000002L

    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1185
    const-string v8, "filter"

    invoke-virtual {v1, p1, v8, v4, v5}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1187
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v4, "user_package"

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1190
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1191
    goto :goto_22

    .line 1192
    :cond_5a
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/AccessoryFilter;

    .line 1193
    const-string v6, "accessory_preferences"

    const-wide v7, 0x20b00000003L

    invoke-virtual {p1, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1196
    const-string v8, "filter"

    invoke-virtual {v1, p1, v8, v4, v5}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1198
    iget-object v8, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v8, "user_package"

    invoke-virtual {v1, p1, v8, v2, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1201
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1202
    goto :goto_64

    .line 1203
    :cond_92
    monitor-exit p4
    :try_end_93
    .catchall {:try_start_7 .. :try_end_93} :catchall_97

    .line 1205
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1206
    return-void

    .line 1203
    :catchall_97
    move-exception p1

    :try_start_98
    monitor-exit p4
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw p1
.end method

.method hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5

    .line 1114
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1115
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1116
    :try_start_9
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    .line 1117
    :cond_18
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    monitor-exit p1

    return p2

    .line 1118
    :catchall_24
    move-exception p2

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw p2
.end method

.method public synthetic lambda$new$0$UsbProfileGroupSettingsManager(Landroid/hardware/usb/UsbDevice;)V
    .registers 4

    .line 244
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method public synthetic lambda$scheduleWriteSettingsLocked$1$UsbProfileGroupSettingsManager()V
    .registers 10

    .line 407
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    nop

    .line 410
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_db
    .catchall {:try_start_5 .. :try_end_b} :catchall_d9

    .line 412
    :try_start_b
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 413
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 414
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 415
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 417
    const-string/jumbo v4, "settings"

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/DeviceFilter;

    .line 420
    const-string/jumbo v6, "preference"

    invoke-virtual {v3, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const-string/jumbo v6, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 422
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 421
    invoke-virtual {v3, v1, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 424
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-virtual {v3, v1, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    invoke-virtual {v5, v3}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 426
    const-string/jumbo v5, "preference"

    invoke-virtual {v3, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    goto :goto_36

    .line 429
    :cond_7a
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_84
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/AccessoryFilter;

    .line 430
    const-string/jumbo v6, "preference"

    invoke-virtual {v3, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const-string/jumbo v6, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 432
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 431
    invoke-virtual {v3, v1, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 434
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v7

    .line 433
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v1, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    invoke-virtual {v5, v3}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 436
    const-string/jumbo v5, "preference"

    invoke-virtual {v3, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    goto :goto_84

    .line 439
    :cond_c8
    const-string/jumbo v4, "settings"

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    invoke-virtual {v3}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 442
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_d6} :catch_d7
    .catchall {:try_start_b .. :try_end_d6} :catchall_d9

    .line 448
    goto :goto_ed

    .line 443
    :catch_d7
    move-exception v1

    goto :goto_df

    .line 451
    :catchall_d9
    move-exception v1

    goto :goto_f2

    .line 443
    :catch_db
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 444
    :goto_df
    :try_start_df
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write settings"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    if-eqz v2, :cond_ed

    .line 446
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 450
    :cond_ed
    :goto_ed
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    .line 451
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :goto_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_df .. :try_end_f3} :catchall_d9

    throw v1
.end method

.method removeAllDefaultsForUser(Landroid/os/UserHandle;)V
    .registers 7

    .line 256
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    const/4 v1, 0x0

    .line 258
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 259
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 260
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2e

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v3, v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 264
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 265
    move v1, v4

    .line 267
    :cond_2d
    goto :goto_e

    .line 269
    :cond_2e
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 270
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 271
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 272
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v3, v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 275
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 276
    move v1, v4

    .line 278
    :cond_56
    goto :goto_38

    .line 280
    :cond_57
    if-eqz v1, :cond_5c

    .line 281
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 283
    :cond_5c
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_4 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    .line 1086
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 1088
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1089
    const/4 v1, 0x1

    if-nez p2, :cond_16

    .line 1090
    :try_start_b
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_14

    goto :goto_2e

    :cond_14
    const/4 v1, 0x0

    goto :goto_2e

    .line 1092
    :cond_16
    new-instance v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1094
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 1095
    xor-int/2addr v1, p2

    if-eqz v1, :cond_2e

    .line 1096
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :cond_2e
    :goto_2e
    if-eqz v1, :cond_33

    .line 1100
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1102
    :cond_33
    monitor-exit p1

    .line 1103
    return-void

    .line 1102
    :catchall_35
    move-exception p2

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p2
.end method

.method setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    .line 1058
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1060
    iget-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1061
    const/4 v1, 0x1

    if-nez p2, :cond_16

    .line 1062
    :try_start_b
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_14

    goto :goto_2e

    :cond_14
    const/4 v1, 0x0

    goto :goto_2e

    .line 1064
    :cond_16
    new-instance v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1066
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 1067
    xor-int/2addr v1, p2

    if-eqz v1, :cond_2e

    .line 1068
    iget-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    :cond_2e
    :goto_2e
    if-eqz v1, :cond_33

    .line 1072
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1074
    :cond_33
    monitor-exit p1

    .line 1075
    return-void

    .line 1074
    :catchall_35
    move-exception p2

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw p2
.end method

.method usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    .line 804
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/usb/MtpNotificationManager;->hideNotification(I)V

    .line 805
    return-void
.end method

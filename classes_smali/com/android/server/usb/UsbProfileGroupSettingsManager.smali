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
.field private static final DEBUG:Z

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
    .registers 11
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "user"  # Landroid/os/UserHandle;
    .param p3, "settingsManager"  # Lcom/android/server/usb/UsbSettingsManager;
    .param p4, "usbResolveActivityManager"  # Lcom/android/server/usb/UsbHandlerManager;

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
    .local v0, "parentUserContext":Landroid/content/Context;
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
    const-string/jumbo v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 226
    iput-object p2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 227
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    .line 228
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "usb_device_manager.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "usb-state"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDisablePermissionDialogs:Z

    .line 234
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    :try_start_69
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 236
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->upgradeSingleUserLocked()V

    .line 238
    :cond_74
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readSettingsLocked()V

    .line 239
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_8f

    .line 241
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 242
    new-instance v1, Lcom/android/server/usb/MtpNotificationManager;

    new-instance v2, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;

    invoke-direct {v2, p0}, Lcom/android/server/usb/-$$Lambda$UsbProfileGroupSettingsManager$IQKTzU0q3lyaW9nLL_sbxJPW8ME;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    invoke-direct {v1, v0, v2}, Lcom/android/server/usb/MtpNotificationManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    .line 247
    iput-object p4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    .line 248
    return-void

    .line 239
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1

    .line 217
    .end local v0  # "parentUserContext":Landroid/content/Context;
    :catch_92
    move-exception v0

    .line 218
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserHandle;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 80
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .param p1, "x1"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/AccessoryFilter;)Z
    .registers 8
    .param p1, "userPackage"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    .param p2, "filter"  # Landroid/hardware/usb/AccessoryFilter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v0, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
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
    .local v2, "accessory":Landroid/hardware/usb/AccessoryFilter;
    invoke-virtual {p2, v2}, Landroid/hardware/usb/AccessoryFilter;->contains(Landroid/hardware/usb/AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 950
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 951
    .local v3, "currentMatch":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 952
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .end local v2  # "accessory":Landroid/hardware/usb/AccessoryFilter;
    .end local v3  # "currentMatch":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    :cond_32
    goto :goto_f

    .line 957
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 958
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/AccessoryFilter;

    .line 959
    .local v2, "keyToRemove":Landroid/hardware/usb/AccessoryFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .end local v2  # "keyToRemove":Landroid/hardware/usb/AccessoryFilter;
    goto :goto_3d

    .line 963
    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/DeviceFilter;)Z
    .registers 8
    .param p1, "userPackage"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    .param p2, "filter"  # Landroid/hardware/usb/DeviceFilter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v0, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
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
    .local v2, "device":Landroid/hardware/usb/DeviceFilter;
    invoke-virtual {p2, v2}, Landroid/hardware/usb/DeviceFilter;->contains(Landroid/hardware/usb/DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 926
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 927
    .local v3, "currentMatch":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 928
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    .end local v2  # "device":Landroid/hardware/usb/DeviceFilter;
    .end local v3  # "currentMatch":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    :cond_32
    goto :goto_f

    .line 933
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 934
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/DeviceFilter;

    .line 935
    .local v2, "keyToRemove":Landroid/hardware/usb/DeviceFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    .end local v2  # "keyToRemove":Landroid/hardware/usb/DeviceFilter;
    goto :goto_3d

    .line 939
    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private clearPackageDefaultsLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Z
    .registers 9
    .param p1, "userPackage"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 1145
    const/4 v0, 0x0

    .line 1146
    .local v0, "cleared":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    .line 1149
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v4, v3, [Landroid/hardware/usb/DeviceFilter;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/usb/DeviceFilter;

    .line 1150
    .local v2, "keys":[Landroid/hardware/usb/DeviceFilter;
    move v4, v3

    .local v4, "i":I
    :goto_1c
    array-length v5, v2

    if-ge v4, v5, :cond_36

    .line 1151
    aget-object v5, v2, v4

    .line 1152
    .local v5, "key":Landroid/hardware/usb/DeviceFilter;
    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1153
    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const/4 v0, 0x1

    .line 1150
    .end local v5  # "key":Landroid/hardware/usb/DeviceFilter;
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1158
    .end local v2  # "keys":[Landroid/hardware/usb/DeviceFilter;
    .end local v4  # "i":I
    :cond_36
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1160
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 1161
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v4, v3, [Landroid/hardware/usb/AccessoryFilter;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/usb/AccessoryFilter;

    .line 1162
    .local v2, "keys":[Landroid/hardware/usb/AccessoryFilter;
    nop

    .local v3, "i":I
    :goto_4d
    array-length v4, v2

    if-ge v3, v4, :cond_67

    .line 1163
    aget-object v4, v2, v3

    .line 1164
    .local v4, "key":Landroid/hardware/usb/AccessoryFilter;
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1165
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const/4 v0, 0x1

    .line 1162
    .end local v4  # "key":Landroid/hardware/usb/AccessoryFilter;
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 1170
    .end local v2  # "keys":[Landroid/hardware/usb/AccessoryFilter;
    .end local v3  # "i":I
    :cond_67
    monitor-exit v1

    return v0

    .line 1171
    :catchall_69
    move-exception v2

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_4 .. :try_end_6b} :catchall_69

    throw v2
.end method

.method private static createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;
    .registers 3
    .param p0, "device"  # Landroid/hardware/usb/UsbDevice;

    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1211
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1214
    return-object v0
.end method

.method static getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "pm"  # Landroid/content/pm/PackageManager;
    .param p1, "info"  # Landroid/content/pm/ResolveInfo;
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
    const/4 v0, 0x0

    .line 511
    .local v0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 513
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .line 515
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_4
    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 516
    if-nez v2, :cond_2b

    .line 517
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_5c
    .catchall {:try_start_4 .. :try_end_24} :catchall_5a

    .line 518
    const/4 v3, 0x0

    .line 535
    if-eqz v2, :cond_2a

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 518
    :cond_2a
    return-object v3

    .line 521
    :cond_2b
    :try_start_2b
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 522
    :goto_2e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_55

    .line 523
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "usb-accessory"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 525
    if-nez v0, :cond_4a

    .line 526
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    .line 528
    :cond_4a
    invoke-static {v2}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_51
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_54} :catch_5c
    .catchall {:try_start_2b .. :try_end_54} :catchall_5a

    .line 531
    .end local v3  # "tagName":Ljava/lang/String;
    goto :goto_2e

    .line 535
    :cond_55
    nop

    :goto_56
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7b

    :catchall_5a
    move-exception v3

    goto :goto_7c

    .line 532
    :catch_5c
    move-exception v3

    .line 533
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5d
    sget-object v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load component info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_5a

    .line 535
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_7b

    goto :goto_56

    .line 537
    :cond_7b
    :goto_7b
    return-object v0

    .line 535
    :goto_7c
    if-eqz v2, :cond_81

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_81
    throw v3
.end method

.method private getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;
    .param p2, "intent"  # Landroid/content/Intent;
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
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 729
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 730
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_23

    .line 731
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 732
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 733
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    .end local v4  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 737
    .end local v3  # "i":I
    :cond_23
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method private getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;
    .registers 9
    .param p2, "userPackage"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
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
    .local p1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
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
    .local v2, "info":Landroid/content/pm/ResolveInfo;
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
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 897
    .end local v2  # "info":Landroid/content/pm/ResolveInfo;
    :cond_33
    goto :goto_7

    .line 900
    :cond_34
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_57

    .line 901
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 902
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_57

    .line 903
    iget-boolean v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDisablePermissionDialogs:Z

    if-eqz v3, :cond_4b

    .line 904
    return-object v1

    .line 907
    :cond_4b
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_57

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_57

    .line 910
    return-object v1

    .line 915
    .end local v1  # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_57
    return-object v0
.end method

.method static getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "pm"  # Landroid/content/pm/PackageManager;
    .param p1, "info"  # Landroid/content/pm/ResolveInfo;
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
    const/4 v0, 0x0

    .line 469
    .local v0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 471
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .line 473
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_4
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 474
    if-nez v2, :cond_2b

    .line 475
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no meta-data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_5c
    .catchall {:try_start_4 .. :try_end_24} :catchall_5a

    .line 476
    const/4 v3, 0x0

    .line 493
    if-eqz v2, :cond_2a

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 476
    :cond_2a
    return-object v3

    .line 479
    :cond_2b
    :try_start_2b
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 480
    :goto_2e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_55

    .line 481
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "usb-device"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 483
    if-nez v0, :cond_4a

    .line 484
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    .line 486
    :cond_4a
    invoke-static {v2}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_51
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_54} :catch_5c
    .catchall {:try_start_2b .. :try_end_54} :catchall_5a

    .line 489
    .end local v3  # "tagName":Ljava/lang/String;
    goto :goto_2e

    .line 493
    :cond_55
    nop

    :goto_56
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7b

    :catchall_5a
    move-exception v3

    goto :goto_7c

    .line 490
    :catch_5c
    move-exception v3

    .line 491
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5d
    sget-object v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load component info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_5a

    .line 493
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_7b

    goto :goto_56

    .line 495
    :cond_7b
    :goto_7b
    return-object v0

    .line 493
    :goto_7c
    if-eqz v2, :cond_81

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_81
    throw v3
.end method

.method private getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p2, "intent"  # Landroid/content/Intent;
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
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 714
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 715
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_23

    .line 716
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 717
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 718
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    .end local v4  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 722
    .end local v3  # "i":I
    :cond_23
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->preferHighPriority(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeForwardIntentIfNotNeeded(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method private getSerial(Landroid/os/UserHandle;)I
    .registers 4
    .param p1, "user"  # Landroid/os/UserHandle;

    .line 1046
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    return v0
.end method

.method private handlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V
    .registers 9
    .param p1, "userPackage"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 1004
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    const/4 v1, 0x0

    .line 1009
    .local v1, "changed":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    const/16 v4, 0x81

    iget-object v5, p1, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    .line 1011
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1009
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_14} :catch_41
    .catchall {:try_start_4 .. :try_end_14} :catchall_3f

    .line 1015
    .local v2, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 1017
    :try_start_15
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1018
    .local v3, "activities":[Landroid/content/pm/ActivityInfo;
    if-nez v3, :cond_1b

    monitor-exit v0

    return-void

    .line 1019
    :cond_1b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v3

    if-ge v4, v5, :cond_38

    .line 1021
    aget-object v5, v3, v4

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1023
    const/4 v1, 0x1

    .line 1026
    :cond_2a
    aget-object v5, v3, v4

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1028
    const/4 v1, 0x1

    .line 1019
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1032
    .end local v4  # "i":I
    :cond_38
    if-eqz v1, :cond_3d

    .line 1033
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1035
    .end local v1  # "changed":Z
    .end local v2  # "info":Landroid/content/pm/PackageInfo;
    .end local v3  # "activities":[Landroid/content/pm/ActivityInfo;
    :cond_3d
    monitor-exit v0

    .line 1036
    return-void

    .line 1035
    :catchall_3f
    move-exception v1

    goto :goto_5a

    .line 1012
    .restart local v1  # "changed":Z
    :catch_41
    move-exception v2

    .line 1013
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePackageUpdate could not find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    monitor-exit v0

    return-void

    .line 1035
    .end local v1  # "changed":Z
    .end local v2  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_15 .. :try_end_5b} :catchall_3f

    throw v1
.end method

.method private handlePackageAddedLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "userPackage"  # Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    .param p2, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p3, "metaDataName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 973
    .local v1, "changed":Z
    :try_start_2
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_54
    .catchall {:try_start_2 .. :try_end_8} :catchall_52

    move-object v0, v2

    .line 974
    if-nez v0, :cond_12

    const/4 v2, 0x0

    .line 996
    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 974
    :cond_11
    return v2

    .line 976
    :cond_12
    :try_start_12
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 977
    :goto_15
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4d

    .line 978
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "usb-device"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 980
    invoke-static {v0}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v3

    .line 981
    .local v3, "filter":Landroid/hardware/usb/DeviceFilter;
    invoke-direct {p0, p1, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/DeviceFilter;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 982
    const/4 v1, 0x1

    .line 984
    .end local v3  # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_34
    goto :goto_49

    .line 985
    :cond_35
    const-string/jumbo v3, "usb-accessory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 986
    invoke-static {v0}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v3

    .line 987
    .local v3, "filter":Landroid/hardware/usb/AccessoryFilter;
    invoke-direct {p0, p1, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearCompatibleMatchesLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;Landroid/hardware/usb/AccessoryFilter;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 988
    const/4 v1, 0x1

    .line 991
    .end local v3  # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_49
    :goto_49
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4c} :catch_54
    .catchall {:try_start_12 .. :try_end_4c} :catchall_52

    .line 992
    .end local v2  # "tagName":Ljava/lang/String;
    goto :goto_15

    .line 996
    :cond_4d
    nop

    :goto_4e
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_73

    :catchall_52
    move-exception v2

    goto :goto_74

    .line 993
    :catch_54
    move-exception v2

    .line 994
    .local v2, "e":Ljava/lang/Exception;
    :try_start_55
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load component info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_55 .. :try_end_6f} :catchall_52

    .line 996
    nop

    .end local v2  # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_73

    goto :goto_4e

    .line 998
    :cond_73
    :goto_73
    return v1

    .line 996
    :goto_74
    if-eqz v0, :cond_79

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_79
    throw v2
.end method

.method private isForwardMatch(Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .param p1, "match"  # Landroid/content/pm/ResolveInfo;

    .line 605
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .registers 9
    .param p1, "info"  # Landroid/content/pm/ResolveInfo;
    .param p2, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p3, "accessory"  # Landroid/hardware/usb/UsbAccessory;

    .line 544
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 545
    return v1

    .line 548
    :cond_8
    if-eqz p2, :cond_29

    .line 549
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 550
    .local v0, "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    if-eqz v0, :cond_29

    .line 551
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 552
    .local v2, "numDeviceFilters":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_29

    .line 553
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/DeviceFilter;

    invoke-virtual {v4, p2}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 554
    return v1

    .line 552
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 560
    .end local v0  # "deviceFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/DeviceFilter;>;"
    .end local v2  # "numDeviceFilters":I
    .end local v3  # "i":I
    :cond_29
    if-eqz p3, :cond_4a

    .line 561
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    .local v0, "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    if-eqz v0, :cond_4a

    .line 564
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 565
    .local v2, "numAccessoryFilters":I
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_38
    if-ge v3, v2, :cond_4a

    .line 566
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/AccessoryFilter;

    invoke-virtual {v4, p3}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 567
    return v1

    .line 565
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 573
    .end local v0  # "accessoryFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/AccessoryFilter;>;"
    .end local v2  # "numAccessoryFilters":I
    .end local v3  # "i":I
    :cond_4a
    const/4 v0, 0x0

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
    .local p1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 618
    .local v0, "highestPriorityMatchesByUserId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;>;"
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 619
    .local v1, "highestPriorityByUserId":Landroid/util/SparseIntArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v2, "forwardMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 623
    .local v3, "numMatches":I
    const/4 v4, 0x0

    .local v4, "matchNum":I
    :goto_14
    if-ge v4, v3, :cond_69

    .line 624
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 628
    .local v5, "match":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 629
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    goto :goto_66

    .line 634
    :cond_26
    iget v6, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3f

    .line 635
    iget v6, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/high16 v7, -0x80000000

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    iget v6, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    :cond_3f
    iget v6, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v1, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 641
    .local v6, "highestPriority":I
    iget v7, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 644
    .local v7, "highestPriorityMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget v8, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v8, v6, :cond_55

    .line 645
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 646
    :cond_55
    iget v8, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v8, v6, :cond_66

    .line 647
    iget v8, v5, Landroid/content/pm/ResolveInfo;->targetUserId:I

    iget v9, v5, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 650
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v5  # "match":Landroid/content/pm/ResolveInfo;
    .end local v6  # "highestPriority":I
    .end local v7  # "highestPriorityMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 657
    .end local v4  # "matchNum":I
    :cond_69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    .local v4, "combinedMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 659
    .local v5, "numMatchArrays":I
    const/4 v6, 0x0

    .local v6, "matchArrayNum":I
    :goto_73
    if-ge v6, v5, :cond_81

    .line 660
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 659
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 663
    .end local v6  # "matchArrayNum":I
    :cond_81
    return-object v4
.end method

.method private queryIntentActivitiesForAllProfiles(Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "intent"  # Landroid/content/Intent;
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
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v1, "resolveInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 589
    .local v2, "numProfiles":I
    const/4 v3, 0x0

    .local v3, "i":I
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
    .end local v3  # "i":I
    :cond_30
    return-object v1
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    .line 291
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 293
    .local v1, "user":Landroid/os/UserHandle;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 294
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_3a

    .line 295
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "package"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 296
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_1b
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 300
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUserManager:Landroid/os/UserManager;

    .line 301
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v1

    .line 294
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 305
    .end local v3  # "i":I
    :cond_3a
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 306
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb-device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    .line 307
    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v3

    .line 308
    .local v3, "filter":Landroid/hardware/usb/DeviceFilter;
    if-eqz v1, :cond_7a

    .line 309
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v6, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v6, v0, v1, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 311
    .end local v3  # "filter":Landroid/hardware/usb/DeviceFilter;
    :cond_5c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "usb-accessory"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 312
    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v3

    .line 313
    .local v3, "filter":Landroid/hardware/usb/AccessoryFilter;
    if-eqz v1, :cond_7b

    .line 314
    iget-object v5, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v6, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-direct {v6, v0, v1, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 311
    .end local v3  # "filter":Landroid/hardware/usb/AccessoryFilter;
    :cond_7a
    :goto_7a
    nop

    .line 317
    :cond_7b
    :goto_7b
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
    const/4 v0, 0x0

    .line 367
    .local v0, "stream":Ljava/io/FileInputStream;
    :try_start_b
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 368
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 369
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
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

    if-eq v2, v3, :cond_3e

    .line 373
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "preference"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 375
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3d

    .line 377
    :cond_3a
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_3d} :catch_53
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3d} :catch_41
    .catchall {:try_start_b .. :try_end_3d} :catchall_3f

    .line 379
    .end local v2  # "tagName":Ljava/lang/String;
    :goto_3d
    goto :goto_22

    .line 372
    .end local v1  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3e
    goto :goto_54

    .line 386
    :catchall_3f
    move-exception v1

    goto :goto_4f

    .line 382
    :catch_41
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/Exception;
    :try_start_42
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "error reading settings file, deleting to start fresh"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_3f

    .end local v1  # "e":Ljava/lang/Exception;
    goto :goto_54

    .line 386
    :goto_4f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 380
    :catch_53
    move-exception v1

    .line 386
    :goto_54
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
    .local p1, "rawMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 679
    .local v0, "numRawMatches":I
    const/4 v1, 0x0

    .line 680
    .local v1, "numParentActivityMatches":I
    const/4 v2, 0x0

    .line 681
    .local v2, "numNonParentActivityMatches":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_2f

    .line 682
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 683
    .local v4, "rawMatch":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 684
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 685
    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 688
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 681
    .end local v4  # "rawMatch":Landroid/content/pm/ResolveInfo;
    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 694
    .end local v3  # "i":I
    :cond_2f
    if-eqz v1, :cond_35

    if-nez v2, :cond_34

    goto :goto_35

    .line 707
    :cond_34
    return-object p1

    .line 695
    :cond_35
    :goto_35
    new-instance v3, Ljava/util/ArrayList;

    add-int v4, v1, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 698
    .local v3, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3d
    if-ge v4, v0, :cond_51

    .line 699
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 700
    .local v5, "rawMatch":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->isForwardMatch(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 701
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    .end local v5  # "rawMatch":Landroid/content/pm/ResolveInfo;
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 704
    .end local v4  # "i":I
    :cond_51
    return-object v3
.end method

.method private resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;Z)V
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p3, "showMtpNotification"  # Z

    .line 752
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_3
    invoke-direct {p0, p2, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 754
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v3, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v3, p2}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 755
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 754
    invoke-direct {p0, v1, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move-object v8, v2

    .line 756
    .local v8, "defaultActivity":Landroid/content/pm/ActivityInfo;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_36

    .line 758
    if-eqz p3, :cond_2c

    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, p2}, Lcom/android/server/usb/MtpNotificationManager;->shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez v8, :cond_2c

    .line 761
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    invoke-virtual {v0, p2}, Lcom/android/server/usb/MtpNotificationManager;->showNotification(Landroid/hardware/usb/UsbDevice;)V

    .line 762
    return-void

    .line 766
    :cond_2c
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v8

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 767
    return-void

    .line 756
    .end local v1  # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v8  # "defaultActivity":Landroid/content/pm/ActivityInfo;
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 10
    .param p1, "intent"  # Landroid/content/Intent;
    .param p3, "defaultActivity"  # Landroid/content/pm/ActivityInfo;
    .param p4, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p5, "accessory"  # Landroid/hardware/usb/UsbAccessory;
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
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 839
    if-eqz p5, :cond_f

    .line 840
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p5, v1}, Lcom/android/server/usb/UsbHandlerManager;->showUsbAccessoryUriActivity(Landroid/hardware/usb/UsbAccessory;Landroid/os/UserHandle;)V

    .line 843
    :cond_f
    return-void

    .line 846
    :cond_10
    if-eqz p3, :cond_57

    .line 847
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 848
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 847
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    .line 850
    .local v0, "defaultRIUserSettings":Lcom/android/server/usb/UsbUserSettingsManager;
    if-eqz p4, :cond_2a

    .line 851
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 852
    invoke-virtual {v0, p4, v1}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    goto :goto_33

    .line 853
    :cond_2a
    if-eqz p5, :cond_33

    .line 854
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p5, v1}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 860
    :cond_33
    :goto_33
    :try_start_33
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 863
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 865
    .local v1, "user":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_4c} :catch_4d

    .line 868
    .end local v1  # "user":Landroid/os/UserHandle;
    goto :goto_56

    .line 866
    :catch_4d
    move-exception v1

    .line 867
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    .end local v0  # "defaultRIUserSettings":Lcom/android/server/usb/UsbUserSettingsManager;
    .end local v1  # "e":Landroid/content/ActivityNotFoundException;
    :goto_56
    goto :goto_72

    .line 870
    :cond_57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6b

    .line 871
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/server/usb/UsbHandlerManager;->confirmUsbHandler(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    goto :goto_72

    .line 873
    :cond_6b
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mUsbHandlerManager:Lcom/android/server/usb/UsbHandlerManager;

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/usb/UsbHandlerManager;->selectUsbHandler(Ljava/util/ArrayList;Landroid/os/UserHandle;Landroid/content/Intent;)V

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
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 327
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 328
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_13
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 333
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 334
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 336
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 337
    :goto_2b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_47

    .line 338
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "preference"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 340
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->readPreference(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_46

    .line 342
    :cond_43
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_46} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_46} :catch_4a
    .catchall {:try_start_13 .. :try_end_46} :catchall_48

    .line 344
    .end local v2  # "tagName":Ljava/lang/String;
    :goto_46
    goto :goto_2b

    .line 348
    .end local v1  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_47
    goto :goto_53

    :catchall_48
    move-exception v1

    goto :goto_60

    .line 345
    :catch_4a
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4b
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read single-user settings"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_48

    .line 348
    nop

    .end local v1  # "e":Ljava/lang/Exception;
    :goto_53
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 349
    nop

    .line 351
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 354
    sget-object v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_64

    .line 348
    :goto_60
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 356
    .end local v0  # "fis":Ljava/io/FileInputStream;
    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 11
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 816
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 817
    :try_start_14
    invoke-direct {p0, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v8, v2

    .line 818
    .local v8, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v3, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v3, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 819
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    .line 818
    invoke-direct {p0, v8, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDefaultActivityLocked(Ljava/util/ArrayList;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 820
    .local v5, "defaultActivity":Landroid/content/pm/ActivityInfo;
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_34

    .line 822
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 823
    return-void

    .line 820
    .end local v5  # "defaultActivity":Landroid/content/pm/ActivityInfo;
    .end local v8  # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 1128
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1130
    .local v0, "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1131
    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearPackageDefaultsLocked(Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1132
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1134
    :cond_12
    monitor-exit v1

    .line 1135
    return-void

    .line 1134
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;

    .line 741
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    .line 744
    .local v0, "intent":Landroid/content/Intent;
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
    .registers 10
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p2, "component"  # Landroid/content/ComponentName;

    .line 770
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    .line 773
    .local v0, "intent":Landroid/content/Intent;
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
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 786
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 787
    invoke-virtual {v2, p1, v3}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 789
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 790
    .local v2, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 792
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_43} :catch_44

    .line 795
    goto :goto_5c

    .line 793
    :catch_44
    move-exception v3

    .line 794
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v3  # "e":Landroid/content/ActivityNotFoundException;
    :goto_5c
    return-void

    .line 780
    .end local v1  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2  # "activityIntent":Landroid/content/Intent;
    :catch_5d
    move-exception v1

    .line 781
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default USB handling package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") not found  for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 20
    .param p1, "dump"  # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"  # Ljava/lang/String;
    .param p3, "id"  # J

    .line 1175
    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1177
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1178
    :try_start_a
    const-string/jumbo v0, "parent_user_id"

    const-wide v6, 0x10500000001L

    iget-object v8, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mParentUser:Landroid/os/UserHandle;

    .line 1179
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1178
    invoke-virtual {v2, v0, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1181
    iget-object v0, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide v7, 0x10b00000002L

    const-wide v9, 0x10b00000001L

    if-eqz v6, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/DeviceFilter;

    .line 1182
    .local v6, "filter":Landroid/hardware/usb/DeviceFilter;
    const-string v11, "device_preferences"

    const-wide v12, 0x20b00000002L

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 1185
    .local v11, "devicePrefToken":J
    const-string v13, "filter"

    invoke-virtual {v6, v2, v13, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1187
    iget-object v9, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v10, "user_package"

    invoke-virtual {v9, v2, v10, v7, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1190
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1191
    .end local v6  # "filter":Landroid/hardware/usb/DeviceFilter;
    .end local v11  # "devicePrefToken":J
    goto :goto_25

    .line 1192
    :cond_5d
    iget-object v0, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/AccessoryFilter;

    .line 1193
    .local v6, "filter":Landroid/hardware/usb/AccessoryFilter;
    const-string v11, "accessory_preferences"

    const-wide v12, 0x20b00000003L

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    .line 1196
    .local v11, "accessoryPrefToken":J
    const-string v13, "filter"

    invoke-virtual {v6, v2, v13, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1198
    iget-object v13, v1, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const-string/jumbo v14, "user_package"

    invoke-virtual {v13, v2, v14, v7, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1201
    invoke-virtual {v2, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1202
    .end local v6  # "filter":Landroid/hardware/usb/AccessoryFilter;
    .end local v11  # "accessoryPrefToken":J
    goto :goto_67

    .line 1203
    :cond_95
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_a .. :try_end_96} :catchall_9a

    .line 1205
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1206
    return-void

    .line 1203
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0
.end method

.method hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 1114
    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1115
    .local v0, "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1116
    :try_start_9
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    monitor-exit v1

    return v2

    .line 1117
    :cond_18
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 1118
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public synthetic lambda$new$0$UsbProfileGroupSettingsManager(Landroid/hardware/usb/UsbDevice;)V
    .registers 4
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;

    .line 244
    invoke-static {p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->createDeviceAttachedIntent(Landroid/hardware/usb/UsbDevice;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->resolveActivity(Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method public synthetic lambda$scheduleWriteSettingsLocked$1$UsbProfileGroupSettingsManager()V
    .registers 9

    .line 407
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    const/4 v1, 0x0

    .line 410
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 412
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 413
    .local v2, "serializer":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 414
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 415
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 417
    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/DeviceFilter;

    .line 420
    .local v4, "filter":Landroid/hardware/usb/DeviceFilter;
    const-string/jumbo v6, "preference"

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const-string/jumbo v6, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 422
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 421
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 424
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    invoke-virtual {v4, v2}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 426
    const-string/jumbo v6, "preference"

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    nop

    .end local v4  # "filter":Landroid/hardware/usb/DeviceFilter;
    goto :goto_37

    .line 429
    :cond_7c
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/AccessoryFilter;

    .line 430
    .local v4, "filter":Landroid/hardware/usb/AccessoryFilter;
    const-string/jumbo v6, "preference"

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const-string/jumbo v6, "package"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 432
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->packageName:Ljava/lang/String;

    .line 431
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string/jumbo v6, "user"

    iget-object v7, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 434
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v7, v7, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v7}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getSerial(Landroid/os/UserHandle;)I

    move-result v7

    .line 433
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    invoke-virtual {v4, v2}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 436
    const-string/jumbo v6, "preference"

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    nop

    .end local v4  # "filter":Landroid/hardware/usb/AccessoryFilter;
    goto :goto_86

    .line 439
    :cond_cb
    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v5, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    invoke-virtual {v2}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 442
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d9} :catch_dc
    .catchall {:try_start_4 .. :try_end_d9} :catchall_da

    .line 448
    .end local v2  # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    goto :goto_eb

    .line 451
    .end local v1  # "fos":Ljava/io/FileOutputStream;
    :catchall_da
    move-exception v1

    goto :goto_f0

    .line 443
    .restart local v1  # "fos":Ljava/io/FileOutputStream;
    :catch_dc
    move-exception v2

    .line 444
    .local v2, "e":Ljava/io/IOException;
    :try_start_dd
    sget-object v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    if-eqz v1, :cond_eb

    .line 446
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 450
    .end local v2  # "e":Ljava/io/IOException;
    :cond_eb
    :goto_eb
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mIsWriteSettingsScheduled:Z

    .line 451
    .end local v1  # "fos":Ljava/io/FileOutputStream;
    monitor-exit v0

    .line 452
    return-void

    .line 451
    :goto_f0
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_dd .. :try_end_f1} :catchall_da

    throw v1
.end method

.method removeAllDefaultsForUser(Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "userToRemove"  # Landroid/os/UserHandle;

    .line 256
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "needToPersist":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 259
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 260
    .local v2, "devicePreferenceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/usb/DeviceFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 263
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/DeviceFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v4, v4, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 264
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 265
    const/4 v1, 0x1

    .line 267
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/DeviceFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;"
    :cond_2c
    goto :goto_e

    .line 269
    :cond_2d
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 270
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 271
    .local v3, "accessoryPreferenceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/usb/AccessoryFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;>;"
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 274
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/AccessoryFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    iget-object v5, v5, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 275
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 276
    const/4 v1, 0x1

    .line 278
    .end local v4  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/AccessoryFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;"
    :cond_55
    goto :goto_37

    .line 280
    :cond_56
    if-eqz v1, :cond_5b

    .line 281
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 283
    .end local v1  # "needToPersist":Z
    .end local v2  # "devicePreferenceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/usb/DeviceFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;>;"
    .end local v3  # "accessoryPreferenceIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/hardware/usb/AccessoryFilter;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;>;>;"
    :cond_5b
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "accessory"  # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;

    .line 1086
    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 1088
    .local v0, "filter":Landroid/hardware/usb/AccessoryFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1089
    const/4 v2, 0x1

    if-nez p2, :cond_16

    .line 1090
    :try_start_b
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .local v2, "changed":Z
    :goto_15
    goto :goto_2e

    .line 1092
    .end local v2  # "changed":Z
    :cond_16
    new-instance v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1094
    .local v3, "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 1095
    .restart local v2  # "changed":Z
    if-eqz v2, :cond_2e

    .line 1096
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    .end local v3  # "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    :cond_2e
    :goto_2e
    if-eqz v2, :cond_33

    .line 1100
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1102
    :cond_33
    monitor-exit v1

    .line 1103
    return-void

    .line 1102
    .end local v2  # "changed":Z
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw v2
.end method

.method setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;

    .line 1058
    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1060
    .local v0, "filter":Landroid/hardware/usb/DeviceFilter;
    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1061
    const/4 v2, 0x1

    if-nez p2, :cond_16

    .line 1062
    :try_start_b
    iget-object v3, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .local v2, "changed":Z
    :goto_15
    goto :goto_2e

    .line 1064
    .end local v2  # "changed":Z
    :cond_16
    new-instance v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager$1;)V

    .line 1066
    .local v3, "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 1067
    .restart local v2  # "changed":Z
    if-eqz v2, :cond_2e

    .line 1068
    iget-object v4, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    .end local v3  # "userPackage":Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;
    :cond_2e
    :goto_2e
    if-eqz v2, :cond_33

    .line 1072
    invoke-direct {p0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->scheduleWriteSettingsLocked()V

    .line 1074
    :cond_33
    monitor-exit v1

    .line 1075
    return-void

    .line 1074
    .end local v2  # "changed":Z
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw v2
.end method

.method usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .registers 4
    .param p1, "device"  # Landroid/hardware/usb/UsbDevice;

    .line 804
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mMtpNotificationManager:Lcom/android/server/usb/MtpNotificationManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/MtpNotificationManager;->hideNotification(I)V

    .line 805
    return-void
.end method

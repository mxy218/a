.class Lcom/android/server/usb/UsbPermissionManager;
.super Ljava/lang/Object;
.source "UsbPermissionManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private final mLock:Ljava/lang/Object;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbPermissionManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/android/server/usb/UsbPermissionManager;->mUser:Landroid/os/UserHandle;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110056

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDisablePermissionDialogs:Z

    .line 68
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 16

    .line 212
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v3, 0x20500000002L

    const/4 v5, 0x0

    const-wide v6, 0x10900000001L

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    const-string v8, "device_permissions"

    const-wide v9, 0x20b00000002L

    invoke-virtual {p1, v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    .line 217
    const-string v10, "device_name"

    invoke-virtual {p1, v10, v6, v7, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 219
    iget-object v6, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 220
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 221
    nop

    :goto_41
    if-ge v5, v6, :cond_50

    .line 222
    const-string/jumbo v7, "uids"

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    invoke-virtual {p1, v7, v3, v4, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 225
    :cond_50
    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 226
    goto :goto_d

    .line 228
    :cond_54
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbAccessory;

    .line 229
    const-string v8, "accessory_permissions"

    const-wide v9, 0x20b00000003L

    invoke-virtual {p1, v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    .line 232
    const-string v10, "accessory_description"

    .line 234
    invoke-virtual {v2}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v11

    .line 232
    invoke-virtual {p1, v10, v6, v7, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 236
    iget-object v10, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 237
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    .line 238
    move v11, v5

    :goto_8b
    if-ge v11, v10, :cond_9a

    .line 239
    const-string/jumbo v12, "uids"

    invoke-virtual {v2, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    invoke-virtual {p1, v12, v3, v4, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 238
    add-int/lit8 v11, v11, 0x1

    goto :goto_8b

    .line 242
    :cond_9a
    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 243
    goto :goto_5e

    .line 244
    :cond_9e
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_a0
    move-exception p1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_a0

    throw p1
.end method

.method grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 7

    .line 117
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 119
    const/4 v2, 0x1

    if-nez v1, :cond_18

    .line 120
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 121
    iget-object v3, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_18
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 7

    .line 99
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 102
    const/4 v2, 0x1

    if-nez v1, :cond_1c

    .line 103
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 104
    iget-object v3, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1c
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method hasPermission(Landroid/hardware/usb/UsbAccessory;I)Z
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_1f

    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v1, :cond_c

    goto :goto_1f

    .line 159
    :cond_c
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 160
    if-nez p1, :cond_19

    .line 161
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 163
    :cond_19
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 157
    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 164
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p1
.end method

.method hasPermission(Landroid/hardware/usb/UsbDevice;I)Z
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_23

    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v1, :cond_c

    goto :goto_23

    .line 139
    :cond_c
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 140
    if-nez p1, :cond_1d

    .line 141
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 143
    :cond_1d
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 137
    :cond_23
    :goto_23
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 144
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw p1
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;ILandroid/content/Context;Landroid/app/PendingIntent;)V
    .registers 11

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 189
    if-eqz p1, :cond_11

    .line 190
    const-string p2, "device"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_16

    .line 192
    :cond_11
    const-string p1, "accessory"

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    :goto_16
    const-string p1, "android.intent.extra.INTENT"

    invoke-virtual {v2, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    const-string p1, "android.intent.extra.UID"

    invoke-virtual {v2, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string p1, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string p1, "android.hardware.usb.extra.PACKAGE"

    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string p1, "com.android.systemui"

    const-string p2, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    :try_start_36
    iget-object p1, p0, Lcom/android/server/usb/UsbPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p6, v2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_36 .. :try_end_3b} :catch_41
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3f

    .line 207
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    goto :goto_4b

    .line 207
    :catchall_3f
    move-exception p1

    goto :goto_4c

    .line 204
    :catch_41
    move-exception p1

    .line 205
    :try_start_42
    sget-object p1, Lcom/android/server/usb/UsbPermissionManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "unable to start UsbPermissionActivity"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_3f

    goto :goto_3b

    .line 209
    :goto_4b
    return-void

    .line 207
    :goto_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

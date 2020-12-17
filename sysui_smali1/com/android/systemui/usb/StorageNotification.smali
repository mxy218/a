.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    }
.end annotation


# instance fields
.field private final mFinishReceiver:Landroid/content/BroadcastReceiver;

.field private final mListener:Landroid/os/storage/StorageEventListener;

.field private final mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private final mMoves:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/usb/StorageNotification$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mShowingAlertDialog:Landroid/app/AlertDialog;

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mListener:Landroid/os/storage/StorageEventListener;

    .line 132
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$3;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$4;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onDiskDestroyedInternal(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/StorageNotification;)Landroid/util/SparseArray;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->onMoveFinished(Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/usb/StorageNotification;->onMoveProgress(Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V

    return-void
.end method

.method private buildBrowsePendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .registers 10

    .line 982
    invoke-static {}, Landroid/os/StrictMode;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 984
    :try_start_4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v1, "StorageNotification"

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildBrowsePendingIntent for vol.getDiskId():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->fileManagerExists()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 990
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->external_storage_device_name:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 992
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getUuid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 990
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 993
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 994
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v4, "volumeInfo"

    .line 995
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "diskName"

    .line 996
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/high16 p1, 0x14200000

    .line 997
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 999
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 p1, 0x10000000

    invoke-static {p0, v3, v2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_76

    .line 1002
    :cond_63
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntentForUser(I)Landroid/content/Intent;

    move-result-object v4

    .line 1003
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_76
    .catchall {:try_start_4 .. :try_end_76} :catchall_7a

    .line 1009
    :goto_76
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-object p0

    :catchall_7a
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw p0
.end method

.method private buildForgetPendingIntent(Landroid/os/storage/VolumeRecord;)Landroid/app/PendingIntent;
    .registers 8

    .line 1050
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$PrivateVolumeForgetActivity"

    .line 1051
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private buildSdcardNotificationWhenMounted()Landroid/app/Notification;
    .registers 8

    .line 544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "com.android.settings"

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_14

    .line 545
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1f

    .line 550
    :cond_14
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.Settings$StorageDashboardActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    :goto_1f
    move-object v3, v0

    .line 556
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->ext_media_mounted_notification_title:I

    .line 559
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 560
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ext_media_mounted_notification_message:I

    .line 561
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 562
    sget v3, Lcom/android/systemui/R$drawable;->mz_stat_notify_sdcard_prepare:I

    .line 563
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 565
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 566
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 567
    sget v0, Lcom/android/systemui/R$drawable;->mz_stat_sys_notify_sdcard_prepare:I

    .line 568
    iget-object v1, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iput v0, v1, Landroid/app/NotificationExt;->notificationIcon:I

    .line 569
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method private buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 5

    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.SNOOZE_VOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.os.storage.extra.FS_UUID"

    .line 1041
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 1044
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v2, 0x10000000

    invoke-static {p0, p1, v0, v2, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private buildVolumeSettingsPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .registers 8

    .line 1014
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1015
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.android.tv.settings"

    .line 1016
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    .line 1017
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2e

    .line 1019
    :cond_16
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const-string v1, "com.android.settings"

    if-eqz v0, :cond_29

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    const/4 p0, 0x0

    return-object p0

    :cond_23
    const-string v0, "com.android.settings.Settings$PrivateVolumeSettingsActivity"

    .line 1021
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2e

    :cond_29
    const-string v0, "com.android.settings.Settings$PublicVolumeSettingsActivity"

    .line 1025
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    :goto_2e
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private buildWizardMigratePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;
    .registers 8

    .line 1061
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1062
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.android.tv.settings"

    .line 1063
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.tv.settings.action.MIGRATE_STORAGE"

    .line 1064
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1d

    :cond_16
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.deviceinfo.StorageWizardMigrateProgress"

    .line 1066
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    :goto_1d
    iget v0, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    const-string v1, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1073
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    :cond_37
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private buildWizardMovePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;
    .registers 8

    .line 1080
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1081
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.android.tv.settings"

    .line 1082
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.tv.settings.action.MOVE_APP"

    .line 1083
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1d

    :cond_16
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.deviceinfo.StorageWizardMoveProgress"

    .line 1085
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1088
    :goto_1d
    iget v0, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    const-string v1, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private buildWizardReadyPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;
    .registers 8

    .line 1095
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1096
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.android.tv.settings"

    .line 1097
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    .line 1098
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1d

    :cond_16
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.deviceinfo.StorageWizardReady"

    .line 1100
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    :goto_1d
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private fileManagerExists()Z
    .registers 3

    const/4 v0, 0x0

    .line 607
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.meizu.filemanager"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    const-string p0, "StorageNotification"

    const-string v1, "fileManager not exists"

    .line 609
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_16
    if-eqz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private isTv()Z
    .registers 2

    .line 1116
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    .line 1117
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeFormatNotification(Ljava/lang/String;)Landroid/app/Notification;
    .registers 9

    .line 298
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.meizu.settings.deviceinfo.ExternalMediaFormatActivity"

    .line 299
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "_ID"

    .line 300
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 303
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->ext_media_nofs_notification_title:I

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->ext_sdcard_description:I

    .line 307
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 308
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 303
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ext_media_nofs_notification_message:I

    .line 310
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 312
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->ext_sdcard_description:I

    .line 313
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 314
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 309
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    sget v3, Lcom/android/systemui/R$drawable;->mz_stat_notify_sdcard_usb:I

    .line 316
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 319
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 320
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 321
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 322
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 323
    sget p1, Lcom/android/systemui/R$drawable;->mz_stat_sys_notify_sdcard_usb:I

    .line 324
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iput p1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    return-object p0
.end method

.method private onDiskDestroyedInternal(Landroid/os/storage/DiskInfo;)V
    .registers 4

    .line 335
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v1, 0x5344534b

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V
    .registers 8

    const v0, 0x5344534b

    if-nez p2, :cond_2f

    .line 255
    iget-wide v1, p1, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_2f

    .line 281
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p2

    if-eqz p2, :cond_14

    return-void

    .line 284
    :cond_14
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/usb/StorageNotification;->makeFormatNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p2

    .line 285
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const-string p0, "StorageNotification"

    const-string p1, "No supported volumes found"

    .line 287
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 291
    :cond_2f
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_3a
    return-void
.end method

.method private onMoveFinished(Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V
    .registers 11

    .line 839
    iget-object v0, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    const v1, 0x534d4f56

    if-eqz v0, :cond_f

    .line 842
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    .line 847
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 848
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, v3, :cond_3c

    .line 853
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x104023b

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 854
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x104023a

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4e

    .line 856
    :cond_3c
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v2, 0x1040238

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 857
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x1040237

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4e
    if-eqz v0, :cond_5f

    .line 862
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 863
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->buildWizardReadyPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_67

    :cond_5f
    if-eqz v0, :cond_66

    .line 865
    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->buildVolumeSettingsPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    .line 870
    :goto_67
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x1080506

    .line 872
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x106001c

    .line 873
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 874
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 875
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 876
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 877
    invoke-virtual {v0, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 878
    invoke-virtual {p2, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 879
    invoke-virtual {p2, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string/jumbo v0, "sys"

    .line 880
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 881
    invoke-virtual {p2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 882
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v4}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 884
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 885
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 884
    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onMoveProgress(Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V
    .registers 11

    .line 799
    iget-object v0, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    .line 800
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x1040239

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 802
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x104023c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_23
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gez v3, :cond_2b

    const/4 p3, 0x0

    goto :goto_2f

    .line 809
    :cond_2b
    invoke-static {p3, p4}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object p3

    .line 813
    :goto_2f
    iget-object p4, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    if-eqz p4, :cond_38

    .line 814
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildWizardMovePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;

    move-result-object p4

    goto :goto_3c

    .line 816
    :cond_38
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildWizardMigratePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;

    move-result-object p4

    .line 819
    :goto_3c
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080506

    .line 821
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 822
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 823
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 824
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 825
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p4

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 826
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 827
    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 828
    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    const-string p4, "progress"

    .line 829
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p3

    const/16 p4, 0x64

    .line 830
    invoke-virtual {p3, p4, p2, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 831
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 832
    iget-object p3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p3, p2, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 834
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    const p3, 0x534d4f56

    .line 835
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 834
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onPrivateVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .registers 4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying about private volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StorageNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->updateMissingPrivateVolumes()V

    return-void
.end method

.method private onPublicVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .registers 6

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying about public volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    const/4 v0, 0x0

    goto :goto_4a

    .line 384
    :pswitch_23  #0x8
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeBadRemoval(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_4a

    .line 381
    :pswitch_28  #0x7
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeRemoved(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_4a

    .line 378
    :pswitch_2d  #0x6
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeUnmountable(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_4a

    .line 375
    :pswitch_32  #0x5
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeEjecting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_4a

    .line 372
    :pswitch_37  #0x4
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeFormatting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_4a

    .line 369
    :pswitch_3c  #0x2, 0x3
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_4a

    .line 365
    :pswitch_41  #0x1
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeChecking(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    goto :goto_4a

    .line 362
    :pswitch_46  #0x0
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeUnmounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    :goto_4a
    const-string v1, "sdcard_notification_tag"

    const v2, 0x53505542

    if-eqz v0, :cond_75

    .line 401
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    if-eqz v3, :cond_69

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 402
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_98

    .line 406
    :cond_69
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_98

    .line 410
    :cond_75
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 411
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_98

    .line 415
    :cond_8d
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_98
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_46  #00000000
        :pswitch_41  #00000001
        :pswitch_3c  #00000002
        :pswitch_3c  #00000003
        :pswitch_37  #00000004
        :pswitch_32  #00000005
        :pswitch_2d  #00000006
        :pswitch_28  #00000007
        :pswitch_23  #00000008
    .end packed-switch
.end method

.method private onVolumeBadRemoval(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 8

    .line 771
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 774
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v0, 0x1040230

    .line 775
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 777
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ext_sdcard_description:I

    .line 778
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 774
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 779
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v2, 0x104022f

    .line 780
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 782
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->ext_sdcard_description:I

    .line 783
    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 779
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 784
    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_notify_sdcard_usb:I

    .line 785
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10000000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 787
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 788
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 789
    sget p1, Lcom/android/systemui/R$drawable;->mz_stat_sys_notify_sdcard_usb:I

    .line 790
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iput p1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    .line 791
    iput-object v2, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 792
    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method private onVolumeChecking(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 6

    .line 446
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 449
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v0, 0x1040233

    .line 450
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 452
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->ext_sdcard_description:I

    .line 453
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 449
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 454
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v1, 0x1040232

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 456
    sget v1, Lcom/android/systemui/R$drawable;->mz_stat_notify_sdcard_prepare:I

    .line 457
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 459
    sget p1, Lcom/android/systemui/R$drawable;->mz_stat_sys_notify_sdcard_prepare:I

    .line 460
    iget-object v0, p0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iput p1, v0, Landroid/app/NotificationExt;->notificationIcon:I

    return-object p0
.end method

.method private onVolumeEjecting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 8

    .line 655
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 658
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->external_storage_unmounting_ticker:I

    .line 659
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 660
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->external_storage_unmounting_title:I

    .line 661
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 662
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->external_storage_device_name:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 664
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 662
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 665
    sget v2, Lcom/android/systemui/R$drawable;->mz_stat_sys_external_storage:I

    .line 666
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 668
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private onVolumeFormatting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method private onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 9

    .line 466
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 467
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    .line 471
    invoke-virtual {v0}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object v2

    .line 515
    :cond_1c
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 517
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "storage"

    .line 518
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 519
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 521
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_36
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 522
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 523
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 524
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 525
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-nez v5, :cond_6c

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_6c
    const/4 v1, 0x0

    goto :goto_36

    :cond_6e
    if-nez v1, :cond_71

    return-object v2

    .line 534
    :cond_71
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 535
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->showDialogAndNotification(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object p0

    return-object p0

    .line 536
    :cond_80
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->buildSdcardNotificationWhenMounted()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    :cond_8f
    return-object v2
.end method

.method private onVolumeRemoved(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 2

    .line 713
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->removeDialogIfNeeded(Landroid/os/storage/VolumeInfo;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .registers 4

    .line 340
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_11

    .line 342
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onPrivateVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_11

    .line 345
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onPublicVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    :goto_11
    return-void
.end method

.method private onVolumeUnmountable(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 3

    .line 687
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 690
    :cond_a
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->makeFormatNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private onVolumeUnmounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 2

    .line 424
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->removeDialogIfNeeded(Landroid/os/storage/VolumeInfo;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private removeDialog(Landroid/os/storage/VolumeInfo;)V
    .registers 2

    .line 744
    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_5

    return-void

    .line 747
    :cond_5
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 748
    iget-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_10
    const/4 p1, 0x0

    .line 750
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private removeDialogIfNeeded(Landroid/os/storage/VolumeInfo;)V
    .registers 9

    .line 719
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 722
    :cond_9
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    .line 723
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    .line 724
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 725
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1f

    return-void

    :cond_1f
    const/4 v2, 0x0

    .line 730
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "StorageNotification"

    if-eqz v3, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeDialogIfNeeded diskId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ---- v.getDiskId():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-nez v5, :cond_64

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_64
    const/4 v2, 0x1

    :cond_65
    if-nez v2, :cond_6f

    const-string v0, "really removeDialogIfNeeded"

    .line 738
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->removeDialog(Landroid/os/storage/VolumeInfo;)V

    :cond_6f
    return-void
.end method

.method private showConfirmDialog(Landroid/os/storage/VolumeInfo;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 5

    .line 575
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-direct {p2, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->open_usb_device:I

    .line 577
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/high16 v1, 0x1040000

    .line 579
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 578
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->external_storage_open_button:I

    .line 582
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/-$$Lambda$StorageNotification$fqbF-0YnvcruBz7ac7xfgoSzasY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/-$$Lambda$StorageNotification$fqbF-0YnvcruBz7ac7xfgoSzasY;-><init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V

    .line 581
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 598
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 599
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 600
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-object p0
.end method

.method private showDialogAndNotification(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 10

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDialogAndNotification vol.getDiskId():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->external_storage_device_name:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 618
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 616
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildBrowsePendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 620
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->external_storage_mounted_ticker:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 621
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 622
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->external_storage_mounted_title:I

    .line 623
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 624
    sget v4, Lcom/android/systemui/R$drawable;->mz_stat_sys_external_storage:I

    .line 625
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 627
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 628
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 629
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_76

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_80

    .line 631
    :cond_76
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/usb/StorageNotification;->showConfirmDialog(Landroid/os/storage/VolumeInfo;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mShowingAlertDialog:Landroid/app/AlertDialog;

    :cond_80
    return-object v1
.end method

.method private updateMissingPrivateVolumes()V
    .registers 12

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 217
    invoke-virtual {v1}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    goto :goto_11

    .line 219
    :cond_25
    invoke-virtual {v1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    const v5, 0x53505256

    if-eqz v4, :cond_3a

    .line 221
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-nez v4, :cond_40

    :cond_3a
    invoke-virtual {v1}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 223
    :cond_40
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v5, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_11

    .line 228
    :cond_48
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x1040236

    new-array v7, v3, [Ljava/lang/Object;

    .line 229
    invoke-virtual {v1}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 228
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 230
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x1040235

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 232
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v7, v8, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x1080506

    .line 234
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    .line 235
    invoke-virtual {v8, v10}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 237
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 238
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 239
    invoke-direct {p0, v1}, Lcom/android/systemui/usb/StorageNotification;->buildForgetPendingIntent(Landroid/os/storage/VolumeRecord;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 240
    invoke-virtual {v4, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v3, "sys"

    .line 243
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 244
    invoke-direct {p0, v2}, Lcom/android/systemui/usb/StorageNotification;->buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$TvExtender;

    invoke-direct {v3}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 245
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 246
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v9}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 248
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 249
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 248
    invoke-virtual {v3, v2, v5, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_11

    :cond_cf
    return-void
.end method


# virtual methods
.method public synthetic lambda$showConfirmDialog$0$StorageNotification(Landroid/os/storage/VolumeInfo;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 586
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->fileManagerExists()Z

    move-result p2

    if-nez p2, :cond_f

    .line 587
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/storage/VolumeInfo;->buildBrowseIntentForUser(I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_16

    .line 589
    :cond_f
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.meizu.flyme.filemanager.action.VIEW_DIRECTORY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_16
    const/high16 p2, 0x14000000

    .line 593
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    .line 595
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public start()V
    .registers 7

    .line 183
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.action.SNOOZE_VOLUME"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 196
    iget v2, v1, Landroid/os/storage/DiskInfo;->volumeCount:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/usb/StorageNotification;->onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    goto :goto_48

    .line 199
    :cond_5a
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 201
    invoke-direct {p0, v1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_64

    .line 204
    :cond_74
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->updateMissingPrivateVolumes()V

    return-void
.end method

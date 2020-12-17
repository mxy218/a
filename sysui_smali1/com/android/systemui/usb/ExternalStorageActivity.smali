.class public Lcom/android/systemui/usb/ExternalStorageActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDiskName:Ljava/lang/String;

.field private mStorageManager:Landroid/os/storage/IStorageManager;

.field private mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/android/systemui/usb/ExternalStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/ExternalStorageActivity$1;-><init>(Lcom/android/systemui/usb/ExternalStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/ExternalStorageActivity;)Landroid/os/storage/VolumeInfo;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/ExternalStorageActivity;)Landroid/os/storage/IStorageManager;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/IStorageManager;

    return-object p0
.end method

.method private fileManagerExists()Z
    .registers 3

    const/4 v0, 0x0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.meizu.filemanager"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    const-string p0, "ExternalStorageActivity"

    const-string v1, "fileManager not exists "

    .line 131
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_14
    if-eqz p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p1, -0x3

    if-eq p2, p1, :cond_50

    const/4 p1, -0x2

    if-eq p2, p1, :cond_4c

    const/4 p1, -0x1

    if-eq p2, p1, :cond_a

    goto :goto_5b

    .line 105
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->fileManagerExists()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 106
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.meizu.filemanager"

    const-string v0, "com.meizu.filemanager.managefile.FileManagerActivity"

    .line 107
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x14200000

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "otg://root/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "init_directory"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    :try_start_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_48

    :catch_41
    const-string p1, "ExternalStorageActivity"

    const-string p2, "Cannot find FileManager"

    .line 116
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_5b

    .line 89
    :cond_4c
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_5b

    .line 92
    :cond_50
    new-instance p1, Lcom/android/systemui/usb/ExternalStorageActivity$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/usb/ExternalStorageActivity$2;-><init>(Lcom/android/systemui/usb/ExternalStorageActivity;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :goto_5b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 36
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "mount"

    .line 38
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 39
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_18

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_18
    const-string/jumbo v0, "volumeInfo"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    const-string v0, "diskName"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mDiskName:Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 47
    sget v0, Lcom/android/systemui/R$string;->unmount_externalstorage:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mDiskName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 49
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    sget v0, Lcom/android/systemui/R$string;->external_storage_open_button:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v0, 0x1040000

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 55
    sget v0, Lcom/android/systemui/R$string;->external_storage_remove_button:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 73
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 63
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action.external.volume.removed"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action.external.volume.idle"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action.external.volume.unmounting"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

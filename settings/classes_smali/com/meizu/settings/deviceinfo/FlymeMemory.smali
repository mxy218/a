.class public Lcom/meizu/settings/deviceinfo/FlymeMemory;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeMemory.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;
.implements Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference$CategoryClickListener;


# static fields
.field public static final DUMMY_STORAGE_VOLUME:Landroid/os/storage/VolumeInfo;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBackupDataPreference:Landroid/preference/Preference;

.field private mBackupGoogleDrivePreference:Landroid/preference/Preference;

.field private mChangeHelperPreference:Landroid/preference/Preference;

.field private mCleanDataPreference:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

.field private mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

.field private mNeedOverridePending:Z

.field private mOtherConnectionWay:Landroid/preference/PreferenceScreen;

.field private mRootScreen:Landroid/preference/PreferenceScreen;

.field private mStorageDataInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUsbStateChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 99
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->DUMMY_STORAGE_VOLUME:Landroid/os/storage/VolumeInfo;

    .line 455
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeMemory$6;

    invoke-direct {v0}, Lcom/meizu/settings/deviceinfo/FlymeMemory$6;-><init>()V

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    .line 131
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeMemory$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsbStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeMemory$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory$2;-><init>(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->updateConnectionWaySummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->doUnmount()V

    const/4 p0, 0x0

    throw p0
.end method

.method private createPreferenceHierarchy()V
    .registers 3

    const v0, 0x7f16009c

    .line 214
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "other_connection_way"

    .line 216
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mOtherConnectionWay:Landroid/preference/PreferenceScreen;

    const-string v0, "backup_data"

    .line 217
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mBackupDataPreference:Landroid/preference/Preference;

    const-string v0, "backup_google_drive"

    .line 218
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mBackupGoogleDrivePreference:Landroid/preference/Preference;

    const-string v0, "change_phone_helper"

    .line 219
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mChangeHelperPreference:Landroid/preference/Preference;

    const-string v0, "clean_data"

    .line 220
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mCleanDataPreference:Landroid/preference/Preference;

    const-string v0, "data_info"

    .line 221
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageDataInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    .line 222
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageDataInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    instance-of v1, v0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;

    if-eqz v1, :cond_4a

    .line 223
    invoke-virtual {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->setOnCategoryClickListener(Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference$CategoryClickListener;)V

    .line 225
    :cond_4a
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->updateStoragePreference()V

    .line 226
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->updateOtherPeference()V

    return-void
.end method

.method private doUnmount()V
    .registers 2

    .line 431
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->setMountingPreferenceView(Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method private registerUsbStateChangeReceiver()V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsbStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showInstallReplacementAssistantDialog()V
    .registers 4

    .line 594
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120a23

    .line 595
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 596
    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeMemory$7;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory$7;-><init>(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V

    const p0, 0x7f120a1c

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120442

    const/4 v1, 0x0

    .line 602
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 603
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAppsFragment(II)V
    .registers 9

    .line 569
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "currentListType"

    .line 570
    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    const-class p1, Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startBackupRestoreActivity()V
    .registers 3

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "flyme.intent.action.BACKUP_RESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 578
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    :try_start_c
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_21

    :catch_12
    const-string v1, "android.intent.action.BACKUP_RESTORE"

    .line 582
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    :try_start_17
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 586
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 589
    :goto_21
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    return-void
.end method

.method private startForActivity(I)V
    .registers 6

    .line 555
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 556
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 557
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.filemanager"

    const-string v3, "com.meizu.flyme.filemanager.activity.CategoryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "category_type"

    .line 559
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    :try_start_1b
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    .line 563
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 565
    :goto_25
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    return-void
.end method

.method private startForJunkClean()V
    .registers 4

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.junkclean"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 541
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "content://com.meizu.safe.junkclean/source?event=settings_storage"

    .line 542
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 544
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    :try_start_18
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    .line 548
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 550
    :goto_22
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setOpenAnimationToNextPage(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 551
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    return-void
.end method

.method private unregisterUsbStateChangeReceiver()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsbStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateConnectionWaySummary()V
    .registers 3

    .line 341
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->getCurrentFunction()Ljava/lang/String;

    move-result-object p0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConnectionWaySummary, function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeMemory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mtp"

    .line 344
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_57

    :cond_24
    const-string/jumbo v0, "ptp"

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_57

    :cond_2e
    const-string v0, "none"

    .line 348
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    const-string v0, "charging"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_57

    :cond_3f
    const-string v0, "bicr"

    .line 350
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_57

    :cond_48
    const-string v0, "audio_source"

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_57

    :cond_51
    const-string v0, "midi"

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :cond_57
    :goto_57
    return-void
.end method

.method private updateOtherPeference()V
    .registers 6

    .line 263
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "change_phone_helper"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "clean_data"

    if-eqz v0, :cond_1f

    .line 266
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_66

    .line 268
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/RestrictedPreference;

    .line 270
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "no_factory_reset"

    .line 269
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 271
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 272
    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 273
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 272
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_62

    :cond_52
    if-eqz v1, :cond_58

    .line 276
    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_66

    .line 278
    :cond_58
    const-class v1, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_66

    :cond_62
    :goto_62
    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 282
    :goto_66
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.apps.docs"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "backup_google_drive"

    if-nez v0, :cond_7c

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_8b

    .line 285
    :cond_7c
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    .line 286
    const-class v0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    :goto_8b
    return-void
.end method

.method private updateStoragePreference()V
    .registers 8

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    .line 233
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 234
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    .line 235
    new-instance v2, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    .line 236
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v6, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {v2, v4, v6, v3, v0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/os/storage/VolumeInfo;Landroid/os/storage/StorageManager;)V

    iput-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    .line 237
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    invoke-virtual {v2}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->init()V

    move v2, v5

    goto :goto_13

    :cond_3a
    if-nez v2, :cond_47

    .line 248
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "key_internal_storage_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_47
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mRootScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "key_external_storage_catetory"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public onCategoryClick(Landroid/view/View;)V
    .registers 3

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_2c

    goto :goto_2a

    .line 516
    :sswitch_9
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->startForJunkClean()V

    .line 517
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    goto :goto_2a

    :sswitch_f
    const/4 p1, 0x2

    .line 523
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->startForActivity(I)V

    .line 524
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    goto :goto_2a

    .line 527
    :sswitch_16
    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->startForActivity(I)V

    .line 528
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    goto :goto_2a

    :sswitch_1c
    const/4 p1, 0x0

    .line 531
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->startForActivity(I)V

    .line 532
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    goto :goto_2a

    :sswitch_23
    const/4 p1, 0x6

    const v0, 0x7f120112

    .line 520
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->startAppsFragment(II)V

    :goto_2a
    return-void

    nop

    :sswitch_data_2c
    .sparse-switch
        0x7f0a0359 -> :sswitch_23
        0x7f0a035a -> :sswitch_1c
        0x7f0a035c -> :sswitch_16
        0x7f0a0360 -> :sswitch_f
        0x7f0a05cd -> :sswitch_9
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 142
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    .line 144
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 146
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 147
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->createPreferenceHierarchy()V

    .line 149
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->registerUsbStateChangeReceiver()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    const/4 v0, 0x1

    const v1, 0x7f120732

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_d

    :cond_d
    return-object v2

    .line 419
    :cond_e
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f12072f

    .line 420
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 421
    invoke-virtual {p0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f12072e

    .line 422
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 423
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 409
    :cond_2e
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121293

    .line 410
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeMemory$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory$4;-><init>(Lcom/meizu/settings/deviceinfo/FlymeMemory;)V

    .line 411
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120442

    .line 415
    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f12167b

    .line 416
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 417
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v1, :cond_b

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 167
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    if-eqz v0, :cond_12

    .line 168
    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->onDestroy()V

    .line 171
    :cond_12
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->unregisterUsbStateChangeReceiver()V

    .line 173
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 174
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsbStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsbStateChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_1f
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 207
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 208
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    if-eqz p0, :cond_a

    .line 209
    invoke-virtual {p0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->onPause()V

    :cond_a
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 293
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeMemory"

    invoke-virtual {v0, v2, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 294
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 297
    :cond_13
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backup_data"

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 299
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    const-string p2, "flyme.intent.action.BACKUP_RESTORE"

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->isActivityActionExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mContext:Landroid/content/Context;

    const-string p2, "android.intent.action.BACKUP_RESTORE"

    .line 300
    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->isActivityActionExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_38

    .line 303
    :cond_34
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->showInstallReplacementAssistantDialog()V

    goto :goto_3b

    .line 301
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->startBackupRestoreActivity()V

    :goto_3b
    const/4 p0, 0x1

    return p0

    .line 306
    :cond_3d
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "format_sdcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5d

    const-string v1, "mount_or_unmout_sdcard"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 337
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0

    .line 313
    :cond_57
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->getStorageVolume()Landroid/os/storage/VolumeInfo;

    throw v2

    .line 308
    :cond_5d
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mExternalStorageCategory:Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;

    invoke-virtual {p0}, Lcom/meizu/settings/MeizuExternalStoragePreferenceCategory;->getStorageVolume()Landroid/os/storage/VolumeInfo;

    throw v2
.end method

.method public onResume()V
    .registers 2

    .line 198
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 199
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mInternalStorageVolumePreferenceCategory:Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;

    if-eqz v0, :cond_a

    .line 200
    invoke-virtual {v0}, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory;->onResume()V

    .line 202
    :cond_a
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMemory;->updateConnectionWaySummary()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 181
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "FlymeMemory"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 184
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    if-eqz v0, :cond_18

    .line 185
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setCloseAnimationToPreviousPage(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mNeedOverridePending:Z

    :cond_18
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 192
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 193
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMemory;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "FlymeMemory"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method

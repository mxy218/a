.class public Lcom/meizu/settings/applications/InstalledAppDetails;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/meizu/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/meizu/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static mMovingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final APP_FUNCTION_MANAGER_ACTION:Ljava/lang/String;

.field private mAppControlRestricted:Z

.field private mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

.field private mAppPermissionView:Lcom/meizu/settings/applications/AppPermissionView;

.field private mAppSize:Landroid/widget/TextView;

.field mAppUninsatlled:Z

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mAutoLaunchApp:Landroid/widget/TextView;

.field private mAutoLaunchAppContainer:Landroid/view/View;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/meizu/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/meizu/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearCacheText:Landroid/widget/TextView;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mClearDataText:Landroid/widget/TextView;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataButtonPanel:Landroid/view/View;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mFunctionManager:Landroid/widget/TextView;

.field mFunctionManagerView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHasClearData:Z

.field private mHaveSizes:Z

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field mIntegrationAppPkgFetcher:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;

.field mIntegrationPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mOnSaveInstanceState:Z

.field private mPackageDeleteObserver:Landroid/content/pm/IPackageDeleteObserver2$Stub;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/meizu/settings/applications/ApplicationsState;

.field mSupportIntegration:Z

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/InstalledAppDetails;->mMovingPackages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 113
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 144
    iput-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 161
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 165
    iput-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    const-wide/16 v1, -0x1

    .line 166
    iput-wide v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 167
    iput-wide v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 168
    iput-wide v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 169
    iput-wide v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 170
    iput-wide v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 171
    iput-wide v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mIntegrationPkgs:Ljava/util/List;

    .line 226
    iput-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSupportIntegration:Z

    const-string v1, "meizu.intent.action.FUNCTION_MANAGER"

    .line 227
    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->APP_FUNCTION_MANAGER_ACTION:Ljava/lang/String;

    .line 228
    iput-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppUninsatlled:Z

    .line 245
    new-instance v0, Lcom/meizu/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/InstalledAppDetails$1;-><init>(Lcom/meizu/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1412
    new-instance v0, Lcom/meizu/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/InstalledAppDetails$2;-><init>(Lcom/meizu/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1654
    new-instance v0, Lcom/meizu/settings/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/InstalledAppDetails$3;-><init>(Lcom/meizu/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageDeleteObserver:Landroid/content/pm/IPackageDeleteObserver2$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/InstalledAppDetails;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/applications/InstalledAppDetails;Z)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/settings/applications/InstalledAppDetails;Z)V
    .registers 2

    .line 113
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/InstalledAppDetails;)I
    .registers 1

    .line 113
    iget p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    return p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/InstalledAppDetails;)Lcom/meizu/settings/applications/ApplicationsState;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/InstalledAppDetails;)V
    .registers 1

    .line 113
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .registers 4

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/applications/InstalledAppDetails;ZZ)V
    .registers 3

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/applications/InstalledAppDetails;)Landroid/widget/TextView;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    return-object p0
.end method

.method private checkForceStop()V
    .registers 14

    .line 1429
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1431
    invoke-direct {p0, v1}, Lcom/meizu/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_6d

    .line 1432
    :cond_13
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-nez v2, :cond_23

    .line 1435
    invoke-direct {p0, v3}, Lcom/meizu/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_6d

    .line 1437
    :cond_23
    new-instance v5, Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v4, "package"

    .line 1438
    invoke-static {v4, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-direct {v5, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-array v0, v3, [Ljava/lang/String;

    .line 1439
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1440
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1441
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1442
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_6d
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .registers 4

    .line 1401
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1403
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/meizu/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 1405
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/meizu/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 1407
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1409
    :cond_22
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->checkForceStop()V

    return-void
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 283
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_d
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/meizu/settings/utils/MzUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initDataButtons()V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    const v2, 0x7f1204ef

    const/4 v3, 0x0

    if-nez v1, :cond_38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 295
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 296
    :cond_21
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 297
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 302
    iput-boolean v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCanClearData:Z

    goto :goto_62

    .line 304
    :cond_38
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 305
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f120bd0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 307
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_58

    .line 310
    :cond_4e
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 312
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 315
    :goto_58
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    :goto_62
    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_70

    .line 322
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_70
    return-void
.end method

.method private initNotificationButton()V
    .registers 5

    const-string v0, "notification"

    .line 437
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 436
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 440
    :try_start_b
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v2, v3}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move v0, v1

    .line 445
    :goto_1d
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 446
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 447
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_54

    .line 448
    :cond_37
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_4a

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v0, v3

    if-nez v0, :cond_4a

    .line 450
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_54

    .line 452
    :cond_4a
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 456
    :goto_54
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void
.end method

.method private initUninstallButtons()V
    .registers 7

    .line 350
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_5

    return-void

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 353
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    .line 355
    :goto_22
    iget-boolean v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/meizu/settings/utils/MzUtils;->isSystemPackageCanUninstall(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 356
    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v5, 0x7f12016c

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 365
    iget-boolean v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 368
    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_91

    .line 370
    :cond_42
    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f12163d

    if-eqz v0, :cond_6d

    .line 371
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/meizu/settings/utils/MzUtils;->isSystemPackageCanUninstall(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 374
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_64

    .line 375
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_8a

    .line 378
    :cond_64
    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v4, 0x7f1207d9

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_91

    .line 382
    :cond_6d
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_8c

    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 384
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8c

    .line 387
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(I)V

    :goto_8a
    move v3, v2

    goto :goto_92

    .line 390
    :cond_8c
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(I)V

    :goto_91
    move v3, v1

    .line 395
    :goto_92
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    move v3, v2

    :cond_9f
    if-eqz v3, :cond_d8

    .line 405
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    if-eqz v0, :cond_b1

    move v0, v2

    goto :goto_d9

    .line 409
    :cond_b1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_ca

    .line 414
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-le v0, v1, :cond_c7

    goto :goto_c8

    :cond_c7
    move v1, v2

    :goto_c8
    move v0, v1

    goto :goto_d9

    .line 418
    :cond_ca
    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_d9

    :cond_d8
    move v0, v3

    .line 423
    :goto_d9
    iget-boolean v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-nez v1, :cond_f1

    .line 424
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isInAntiAddictionMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f2

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    const-string v3, "com.meizu.netcontactservice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    :cond_f1
    move v0, v2

    .line 428
    :cond_f2
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v0, :cond_fe

    .line 431
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_fe
    return-void
.end method

.method private initiateClearUserData()V
    .registers 6

    .line 1200
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1202
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1204
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_95

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_95

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_19

    goto/16 :goto_95

    .line 1208
    :cond_19
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstalledAppDetails"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v2, :cond_40

    .line 1211
    new-instance v2, Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v2, p0}, Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/meizu/settings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1214
    :cond_40
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1215
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mz_developer_option"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1219
    :cond_5b
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1220
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/meizu/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v2, v0, v4}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 1224
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_95

    .line 1226
    :cond_88
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f12116d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1228
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_95
    :goto_95
    return-void
.end method

.method private isExternalSdcardExist()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .registers 5

    .line 1170
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1171
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1172
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v2, 0x7f1204ef

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1174
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3e

    .line 1177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleared user data for package : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstalledAppDetails"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iput-boolean v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHasClearData:Z

    .line 1179
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {p1, v0, v1}, Lcom/meizu/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_48

    .line 1181
    :cond_3e
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1183
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1186
    :goto_48
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->checkForceStop()V

    return-void
.end method

.method private refreshButtons()V
    .registers 1

    .line 1190
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1191
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1192
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->initNotificationButton()V

    return-void
.end method

.method private refreshSizeInfo()V
    .registers 12

    .line 1066
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_108

    cmp-long v1, v1, v4

    if-nez v1, :cond_13

    goto/16 :goto_108

    :cond_13
    const/4 v1, 0x1

    .line 1087
    iput-boolean v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1088
    iget-wide v2, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 1089
    iget-wide v4, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 1092
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->isExternalSdcardExist()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1094
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    add-long/2addr v2, v7

    .line 1095
    iget-wide v7, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v4, v7

    goto :goto_53

    .line 1097
    :cond_29
    iget-wide v7, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_3e

    .line 1098
    iput-wide v9, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1099
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-direct {p0, v9, v10}, Lcom/meizu/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    :cond_3e
    iget-wide v7, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_53

    .line 1102
    iput-wide v9, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1103
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v9, v10}, Lcom/meizu/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    :cond_53
    :goto_53
    iget-wide v7, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v0, v7, v2

    if-eqz v0, :cond_64

    .line 1107
    iput-wide v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1108
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/meizu/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    :cond_64
    iget-wide v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_75

    .line 1111
    iput-wide v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1112
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_75
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v4, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long/2addr v2, v4

    .line 1115
    iget-wide v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8d

    .line 1116
    iput-wide v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1117
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/meizu/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    :cond_8d
    iget-wide v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_a2

    .line 1120
    iput-wide v7, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1121
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    invoke-direct {p0, v7, v8}, Lcom/meizu/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    :cond_a2
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-wide v7, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v4, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    const v4, 0x7f060036

    if-lez v0, :cond_d0

    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-eqz v0, :cond_d0

    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHasClearData:Z

    if-eqz v0, :cond_bb

    goto :goto_d0

    .line 1131
    :cond_bb
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1132
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1135
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_df

    .line 1125
    :cond_d0
    :goto_d0
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1127
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1129
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    :goto_df
    cmp-long v0, v2, v7

    if-gtz v0, :cond_f3

    .line 1139
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1141
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1143
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_152

    .line 1145
    :cond_f3
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1146
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1149
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_152

    .line 1068
    :cond_108
    :goto_108
    iput-wide v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1069
    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v0, :cond_13e

    .line 1070
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    :cond_13e
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1080
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1082
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1083
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1154
    :goto_152
    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_16a

    .line 1155
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1156
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1158
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1159
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_16a
    return-void
.end method

.method private refreshUi()Z
    .registers 8

    .line 908
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 914
    :cond_a
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_f

    return v2

    .line 919
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 920
    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 921
    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    move v3, v2

    .line 922
    :goto_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4e

    .line 923
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 924
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 925
    iget-object v6, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_4b

    const-string v6, "android.app.home.alternate"

    .line 930
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 931
    invoke-direct {p0, v4, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 932
    iget-object v5, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 938
    :cond_4e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 941
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 942
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v1, v0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " number of activities in preferred list"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InstalledAppDetails"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :try_start_7c
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v1, :cond_90

    .line 948
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_89} :catch_8a

    goto :goto_90

    :catch_8a
    move-exception v0

    const-string v1, "mUsbManager.hasDefaults"

    .line 951
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    :cond_90
    :goto_90
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 972
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0554

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 976
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 978
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 979
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 980
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 981
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 983
    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mInitialized:Z

    const/high16 v1, 0x800000

    const/4 v3, 0x1

    if-nez v0, :cond_d5

    .line 985
    iput-boolean v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 986
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_d2

    move v2, v3

    :cond_d2
    iput-boolean v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    goto :goto_f8

    .line 991
    :cond_d5
    :try_start_d5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2200

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 994
    iget-boolean v4, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v4, :cond_f8

    .line 1000
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_f7

    iget-boolean p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppUninsatlled:Z
    :try_end_f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d5 .. :try_end_f4} :catch_f9

    if-nez p0, :cond_f7

    move v2, v3

    :cond_f7
    return v2

    :cond_f8
    :goto_f8
    return v3

    :catch_f9
    return v2
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .registers 6

    .line 858
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string/jumbo v2, "package"

    .line 859
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_f
    move-object v2, v1

    :goto_10
    if-nez v2, :cond_3e

    if-nez v0, :cond_1d

    .line 862
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_25

    :cond_1d
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_25
    if-eqz v0, :cond_3e

    .line 864
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_36

    .line 865
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3e

    .line 867
    :cond_36
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 871
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/meizu/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 872
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    const-string v3, "InstalledAppDetails"

    if-eqz v0, :cond_78

    .line 875
    :try_start_4e
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x2240

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_5c} :catch_5d

    goto :goto_7f

    .line 880
    :catch_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFoundException when retrieving package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    :cond_78
    const-string v0, "Missing AppEntry; maybe reinstalling?"

    .line 883
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 887
    :goto_7f
    iput-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    return-object v2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 730
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00a8

    .line 735
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 736
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/meizu/settings/applications/ApplicationsState;->ensureIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V

    if-eqz p1, :cond_30

    .line 739
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_30

    .line 741
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v2

    .line 742
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 743
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_30
    const v1, 0x7f0a00ad

    .line 747
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 748
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a00b5

    .line 750
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    if-eqz p1, :cond_73

    .line 752
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_73

    .line 753
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v2, 0x7f12175d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 755
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 754
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 757
    :cond_73
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_79
    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .registers 5

    .line 1058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appChanged="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "InstalledAppDetails"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "chg"

    .line 1060
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1061
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 p2, -0x1

    .line 1062
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .registers 5

    .line 1468
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "notification"

    .line 1470
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1469
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1472
    :try_start_10
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 1473
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v0, v2, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_1f

    goto :goto_26

    .line 1475
    :catch_1f
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_26
    return-void
.end method

.method private showDialogInner(II)V
    .registers 5

    .line 1234
    invoke-static {p1, p2}, Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/meizu/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object p2

    const/4 v0, 0x0

    .line 1235
    invoke-virtual {p2, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1238
    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mOnSaveInstanceState:Z

    if-eqz v0, :cond_d

    return-void

    .line 1241
    :cond_d
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 895
    :try_start_4
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_e

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :catch_e
    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .registers 6

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1388
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 1389
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1391
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-eqz p1, :cond_35

    if-nez p2, :cond_35

    .line 1392
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageDeleteObserver:Landroid/content/pm/IPackageDeleteObserver2$Stub;

    .line 1393
    invoke-virtual {p1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "android.content.pm.extra.CALLBACK"

    .line 1392
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    :cond_35
    const/4 p1, 0x1

    .line 1396
    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1397
    iput-boolean p3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    return-void
.end method

.method private updateForceStopButton(Z)V
    .registers 3

    .line 1420
    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_b

    .line 1421
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_15

    .line 1423
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1424
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_15
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 697
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_80

    .line 699
    iget-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz p1, :cond_39

    const/4 p1, 0x0

    .line 700
    iput-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 702
    :try_start_d
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 705
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_39

    .line 706
    new-instance v0, Lcom/meizu/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/meizu/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/meizu/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 708
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3e

    .line 714
    iput-boolean p3, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppUninsatlled:Z

    .line 717
    :cond_3e
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_77

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 p2, -0x80000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_77

    iget-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppUninsatlled:Z

    if-eqz p1, :cond_77

    .line 719
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " report uninstallPkg "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InstalledAppDetails"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "application_uninstall"

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_77
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result p1

    if-nez p1, :cond_80

    .line 723
    invoke-direct {p0, p3, p3}, Lcom/meizu/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    :cond_80
    return-void
.end method

.method public onAllSizesComputed()V
    .registers 1

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 1601
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1603
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1604
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_1a

    .line 1605
    invoke-virtual {v1, v0, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    goto :goto_32

    .line 1606
    :cond_1a
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_22

    .line 1607
    invoke-virtual {v1, v0, p2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_32

    .line 1609
    :cond_22
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_32

    if-nez p2, :cond_2e

    const/4 p1, 0x7

    const/4 p2, 0x0

    .line 1611
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_32

    :cond_2e
    const/4 p1, 0x1

    .line 1613
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    :cond_32
    :goto_32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 1496
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 1497
    invoke-direct {p0, v1, v1}, Lcom/meizu/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void

    .line 1501
    :cond_9
    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1502
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v3, 0x2

    const-string v4, "InstalledAppDetails"

    const/4 v5, 0x0

    if-ne p1, v2, :cond_88

    .line 1503
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {p1, v0, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 1505
    iget-boolean v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-nez v2, :cond_2d

    .line 1506
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_7b

    .line 1507
    :cond_2d
    iget-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isSystemPackageCanUninstall(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 1508
    invoke-direct {p0, v3, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_7b

    .line 1510
    :cond_3f
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_69

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isSystemPackageCanUninstall(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-nez p1, :cond_69

    .line 1511
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5b

    const/4 p1, 0x6

    .line 1512
    invoke-direct {p0, p1, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_7b

    .line 1514
    :cond_5b
    new-instance v0, Lcom/meizu/settings/applications/InstalledAppDetails$DisableChanger;

    invoke-direct {v0, p0, p1, v5}, Lcom/meizu/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/meizu/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, p1, v5

    .line 1516
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7b

    .line 1518
    :cond_69
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr p1, v2

    if-nez p1, :cond_78

    .line 1519
    invoke-direct {p0, v0, v1, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_7b

    .line 1521
    :cond_78
    invoke-direct {p0, v0, v5, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 1525
    :goto_7b
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string/jumbo p1, "uninstall_clicked"

    const-string/jumbo v0, "uninstall"

    invoke-virtual {p0, p1, v4, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1528
    :cond_88
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_93

    const/16 p1, 0x8

    .line 1529
    invoke-direct {p0, p1, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_1c5

    .line 1530
    :cond_93
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-eq p1, v2, :cond_17f

    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    if-ne p1, v2, :cond_9d

    goto/16 :goto_17f

    .line 1548
    :cond_9d
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-eq p1, v1, :cond_151

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheText:Landroid/widget/TextView;

    if-ne p1, v1, :cond_a7

    goto/16 :goto_151

    .line 1563
    :cond_a7
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_ce

    .line 1564
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_bd

    iget-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-nez p1, :cond_bd

    .line 1566
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1565
    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_c1

    :cond_bd
    const/4 p1, 0x5

    .line 1568
    invoke-direct {p0, p1, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1572
    :goto_c1
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string/jumbo p1, "stop_clicked"

    const-string/jumbo v0, "stop"

    invoke-virtual {p0, p1, v4, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1575
    :cond_ce
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mFunctionManagerView:Landroid/view/View;

    if-ne p1, v0, :cond_108

    .line 1576
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "meizu.intent.action.FUNCTION_MANAGER"

    .line 1577
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    :try_start_e1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_e4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e1 .. :try_end_e4} :catch_f1

    .line 1585
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    const-string v0, "feature_management_click"

    const-string v1, "app_pkg"

    invoke-virtual {p1, v4, v0, v1, p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1582
    :catch_f1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ActivityNotFoundException   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1586
    :cond_108
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAutoLaunchAppContainer:Landroid/view/View;

    if-ne p1, v0, :cond_1c5

    .line 1587
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1588
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v0, "uid"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1590
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const-string/jumbo v0, "private_flags"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1591
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 1592
    const-class p1, Lcom/meizu/settings/applications/MzAppLaunchSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const p1, 0x7f1201f8

    .line 1593
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1592
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1c5

    .line 1549
    :cond_151
    :goto_151
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_163

    iget-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-nez p1, :cond_163

    .line 1551
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1550
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 1555
    :cond_163
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/meizu/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez p1, :cond_16e

    .line 1556
    new-instance p1, Lcom/meizu/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {p1, p0}, Lcom/meizu/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/meizu/settings/applications/InstalledAppDetails;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/meizu/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1558
    :cond_16e
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/meizu/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1560
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string p1, "clear_cache_clicked"

    const-string v0, "clear_cache"

    invoke-virtual {p0, p1, v4, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c5

    .line 1531
    :cond_17f
    :goto_17f
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_191

    iget-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-nez p1, :cond_191

    .line 1533
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1532
    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1bc

    .line 1534
    :cond_191
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p1, :cond_1b9

    .line 1535
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_1bc

    .line 1536
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1539
    invoke-virtual {p0, p1, v3}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1bc

    .line 1542
    :cond_1b9
    invoke-direct {p0, v1, v5}, Lcom/meizu/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1545
    :cond_1bc
    :goto_1bc
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string p1, "clear_data_clicked"

    const-string v0, "clear_data"

    invoke-virtual {p0, p1, v4, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c5
    :goto_1c5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 463
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 466
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 467
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1a

    .line 469
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    goto :goto_4b

    :cond_1a
    const/16 v0, -0x2710

    const-string v1, "android.intent.extra.USER_ID"

    .line 471
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    .line 472
    iget v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    if-ne v2, v0, :cond_4b

    .line 473
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4b

    const-string v0, ":settings:show_fragment_args"

    .line 475
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 477
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    goto :goto_4b

    .line 479
    :cond_45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    .line 486
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/meizu/settings/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 487
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/applications/ApplicationsState;->newSession(Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)Lcom/meizu/settings/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 488
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 489
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo p1, "usb"

    .line 490
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 491
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 492
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 493
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string p1, "isms"

    .line 494
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 496
    new-instance p1, Lcom/meizu/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {p1}, Lcom/meizu/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/meizu/settings/applications/CanBeOnSdCardChecker;

    .line 499
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->resume()V

    .line 501
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    const/4 p1, 0x1

    .line 502
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 505
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mIntegrationPkgs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 506
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isPermissionAllow(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 507
    new-instance p1, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mIntegrationAppPkgFetcher:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;

    .line 508
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mIntegrationAppPkgFetcher:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mIntegrationPkgs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->startFetch(Ljava/util/List;)V

    .line 510
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    const-string v0, "com.meizu.media.gallery"

    .line 511
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f9

    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    const-string v0, "com.meizu.media.video"

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_fd

    :cond_f9
    const/4 p1, 0x0

    .line 513
    iput-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSupportIntegration:Z

    goto :goto_10b

    .line 515
    :cond_fd
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    const-string v1, "meizu.intent.action.FUNCTION_MANAGER"

    invoke-static {p1, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSupportIntegration:Z

    :cond_10b
    :goto_10b
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    const/4 p0, 0x1

    const/4 p2, 0x0

    const v0, 0x7f12163b

    .line 659
    invoke-interface {p1, p2, p0, p0, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 660
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    const/4 p3, 0x0

    const v0, 0x7f0d01e7

    .line 524
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a061d

    .line 525
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    const p2, 0x7f0a0089

    .line 526
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 529
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/meizu/settings/utils/MzUtils;->setPageScrollbarStyle(Landroid/content/Context;Landroid/view/View;)V

    .line 532
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 533
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f120519

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    const p2, 0x7f0a076c

    .line 536
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    const p2, 0x7f0a00c0

    .line 537
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    const p2, 0x7f0a01da

    .line 538
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    const p2, 0x7f0a027f

    .line 539
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    const p2, 0x7f0a0281

    .line 540
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 549
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->isExternalSdcardExist()Z

    move-result p2

    const/16 v0, 0x8

    if-nez p2, :cond_85

    .line 550
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_85
    const p2, 0x7f0a01b2

    .line 556
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a05e4

    .line 563
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 564
    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v3, 0x7f1208d4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    const v2, 0x7f0a03b2

    .line 565
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 567
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    const p2, 0x7f0a044d

    .line 570
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 571
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 573
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0a01d3

    .line 576
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 577
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0a013f

    .line 580
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    const v1, 0x7f0a0182

    .line 581
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const v1, 0x7f0a0610

    .line 585
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    const v1, 0x7f0a00d0

    .line 586
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    const v1, 0x7f0a0256

    .line 587
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    const v1, 0x7f0a04ff

    .line 589
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const v1, 0x7f0a06bd

    .line 592
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03b3

    .line 593
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1214cd

    .line 594
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a05e7

    .line 595
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    .line 596
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearDataText:Landroid/widget/TextView;

    const v4, 0x7f1204ef

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a013c

    .line 598
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 599
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f120428

    .line 600
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 601
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheText:Landroid/widget/TextView;

    .line 602
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheText:Landroid/widget/TextView;

    const v4, 0x7f1204e1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0577

    .line 604
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 605
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f1201b7

    .line 606
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 607
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a00db

    .line 609
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAutoLaunchAppContainer:Landroid/view/View;

    .line 610
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAutoLaunchAppContainer:Landroid/view/View;

    const v2, 0x7f0a0157

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAutoLaunchApp:Landroid/widget/TextView;

    .line 611
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAutoLaunchApp:Landroid/widget/TextView;

    const v3, 0x7f1201f8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 612
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAutoLaunchAppContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDataButtonPanel:Landroid/view/View;

    .line 615
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDataButtonPanel:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    const p2, 0x7f0a00b0

    .line 620
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/applications/AppPermissionView;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppPermissionView:Lcom/meizu/settings/applications/AppPermissionView;

    .line 622
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz p2, :cond_1fc

    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_1fc

    .line 623
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;->isAppCanBeManage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1fc

    .line 624
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 625
    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 626
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 627
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 628
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f4

    .line 629
    iget-object v5, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    :cond_1f4
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppPermissionView:Lcom/meizu/settings/applications/AppPermissionView;

    iget-object v5, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v5, v3, v4, v1}, Lcom/meizu/settings/applications/AppPermissionView;->doCreate(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)V

    goto :goto_205

    .line 633
    :cond_1fc
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppPermissionView:Lcom/meizu/settings/applications/AppPermissionView;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v3, v4, v4}, Lcom/meizu/settings/applications/AppPermissionView;->doCreate(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)V

    :goto_205
    const p2, 0x7f0a02f0

    .line 638
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mFunctionManagerView:Landroid/view/View;

    .line 639
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mFunctionManagerView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mFunctionManager:Landroid/widget/TextView;

    .line 640
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mFunctionManagerView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-boolean p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSupportIntegration:Z

    if-eqz p2, :cond_24e

    .line 642
    iget-object p2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mIntegrationPkgs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 643
    :cond_227
    :goto_227
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 644
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 645
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mFunctionManager:Landroid/widget/TextView;

    const v1, 0x7f120bde

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 646
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mFunctionManagerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mFunctionManagerView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_227

    :cond_24e
    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 799
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 801
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mIntegrationAppPkgFetcher:Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;

    if-eqz p0, :cond_a

    .line 802
    invoke-virtual {p0}, Lcom/meizu/settings/applications/IntegrationAppPkgFetcher;->stopFetch()V

    :cond_a
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 793
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 794
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->release()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .registers 1

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .registers 1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 687
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    .line 689
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/meizu/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v1

    :cond_12
    return v0
.end method

.method public onPackageIconChanged()V
    .registers 1

    return-void
.end method

.method public onPackageListChanged()V
    .registers 1

    .line 816
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->refreshUi()Z

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_16

    .line 831
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 832
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 833
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 834
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    :cond_16
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 787
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 788
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->pause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5

    .line 666
    iget-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    goto :goto_34

    .line 668
    :cond_6
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_b

    goto :goto_34

    .line 670
    :cond_b
    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    goto :goto_34

    .line 672
    :cond_13
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_34

    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_34

    .line 674
    :cond_22
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_34

    .line 676
    :cond_29
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    .line 681
    :cond_34
    :goto_34
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPackageIconDone(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V
    .registers 2

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 763
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 764
    iput-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mHasClearData:Z

    .line 765
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    const-string v3, "no_control_apps"

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 767
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 769
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->resume()V

    .line 770
    invoke-direct {p0}, Lcom/meizu/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    .line 771
    invoke-direct {p0, v1, v1}, Lcom/meizu/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 775
    :cond_2f
    iput-boolean v0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mOnSaveInstanceState:Z

    .line 779
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mAppPermissionView:Lcom/meizu/settings/applications/AppPermissionView;

    if-eqz p0, :cond_38

    .line 780
    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppPermissionView;->resume()V

    :cond_38
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 1648
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1649
    iput-boolean p1, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mOnSaveInstanceState:Z

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1636
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 1637
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "InstalledAppDetails"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1642
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 1643
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetails;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "InstalledAppDetails"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method

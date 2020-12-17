.class public Lcom/meizu/settings/home/FlymeDashboardSummary;
.super Landroid/app/Fragment;
.source "FlymeDashboardSummary.java"

# interfaces
.implements Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;
    }
.end annotation


# static fields
.field public static CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

.field private static final PACKAGE_NEED_OVERRIDE_PEDDING:[Ljava/lang/String;

.field private static mDashboardTileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasRefreshViewed:Z

.field private isViewCreated:Z

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

.field private mFlymeAccountContentObserver:Landroid/database/ContentObserver;

.field private mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

.field private mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHasUpdate:Z

.field private mIsFlymeAccountLogin:Z

.field private mLoadingTask:Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;

.field private mNeedOverridePending:Z

.field private mNeedShowPermissionDialog:Z

.field private mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mOnSystemUpgradeBindListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;

.field private mOnThemeChangedListener:Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;

.field private mPenddingUpdateBadge:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

.field private mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollState:I

.field private mSettingsSharedPreferences:Landroid/content/SharedPreferences;

.field private mSettingsSharedPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSystemUpgradeBadgeIcon:Landroid/view/View;

.field private mUpdateChangeLocalCallback:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-string v0, "com.meizu.settings.MobileNetworkSettings"

    const-string v1, "com.android.settings.wifi.WifiSettings"

    const-string v2, "com.meizu.settings.wifi.AdvancedWifiSettings"

    const-string v3, "com.android.settings.bluetooth.BluetoothSettings"

    const-string v4, "com.android.settings.bluetooth.BluetoothAdvanceSettings"

    const-string v5, "com.android.settings.WirelessSettings"

    const-string v6, "com.android.settings.TetherSettings"

    const-string v7, "com.meizu.settings.TetherSettingsIndex"

    const-string v8, "com.meizu.settings.location.MzLocationSettings"

    const-string v9, "com.android.settings.vpn2.VpnSettings"

    const-string v10, "com.android.settings.ApnEditor"

    const-string v11, "com.android.settings.wfd.WifiDisplaySettings"

    const-string v12, "com.meizu.settings.nfc.NfcSettings"

    .line 77
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->CONNECTIVITY_SETTINGS_ENTRIES:[Ljava/lang/String;

    const-string v1, "com.meizu.account"

    const-string v2, "com.meizu.battery"

    const-string v3, "com.meizu.flyme.update"

    const-string v4, "com.android.dialer"

    const-string v5, "com.meizu.voiceassistant"

    const-string v6, "com.meizu.sceneinfo"

    .line 98
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->PACKAGE_NEED_OVERRIDE_PEDDING:[Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mDashboardTileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedOverridePending:Z

    .line 119
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mHandler:Landroid/os/Handler;

    .line 125
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mPenddingUpdateBadge:Z

    .line 126
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mHasUpdate:Z

    .line 127
    iput v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mScrollState:I

    .line 128
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$1;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    .line 160
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$2;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mUpdateChangeLocalCallback:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;

    .line 177
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$3;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnSystemUpgradeBindListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;

    .line 465
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;

    invoke-direct {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$8;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mPenddingUpdateBadge:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mPenddingUpdateBadge:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/home/FlymeDashboardSummary;)I
    .registers 1

    .line 71
    iget p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mScrollState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mIsFlymeAccountLogin:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mIsFlymeAccountLogin:Z

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/settings/home/FlymeDashboardSummary;I)I
    .registers 2

    .line 71
    iput p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mScrollState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/utils/FlymeAccountHelper;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/meizu/settings/home/FlymeDashboardSummary;Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/meizu/settings/home/FlymeDashboardSummary;ZLjava/lang/String;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateWifiStatus(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/net/wifi/WifiManager;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateWlanTetheringStatus(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateBluetoothStatus(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateNfcStatus(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/settings/home/FlymeDashboardSummary;Lcom/android/settingslib/drawer/Tile;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->reportDashboardTileViewClick(Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedOverridePending:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedOverridePending:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->showInstallDigitalHealthAppDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/view/View;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSystemUpgradeBadgeIcon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .registers 1

    .line 71
    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->PACKAGE_NEED_OVERRIDE_PEDDING:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/settings/home/FlymeDashboardSummary;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSystemUpgradeBadgeIcon:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/meizu/settings/home/FlymeDashboardSummary;Landroid/accounts/AccountManager;)Landroid/accounts/AccountManager;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAccountManager:Landroid/accounts/AccountManager;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->addOnAccountsUpdatedListener()V

    return-void
.end method

.method static synthetic access$2300()Ljava/util/List;
    .registers 1

    .line 71
    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mDashboardTileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->isViewCreated:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->refreshView()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mHasUpdate:Z

    return p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mHasUpdate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lflyme/support/v7/widget/MzRecyclerView;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedShowPermissionDialog:Z

    return p0
.end method

.method static synthetic access$602(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedShowPermissionDialog:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/content/SharedPreferences;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSettingsSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/meizu/settings/home/FlymeDashboardSummary;Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    return-object p1
.end method

.method private addOnAccountsUpdatedListener()V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    if-nez v0, :cond_14

    .line 272
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;

    invoke-direct {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$6;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 289
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 292
    :cond_14
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2e

    .line 293
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$7;

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/home/FlymeDashboardSummary$7;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountContentObserver:Landroid/database/ContentObserver;

    .line 308
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->registerFlymeAccountContentObserver(Landroid/database/ContentObserver;)V

    :cond_2e
    return-void
.end method

.method public static buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;
    .registers 7

    .line 824
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.meizu.connectivitysettings.CONNECTIVITY_SETTINGS"

    .line 825
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment"

    .line 826
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_args"

    .line 827
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title_res_package_name"

    .line 828
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title_resid"

    .line 830
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title"

    .line 831
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p1, "com.meizu.connectivitysettings"

    .line 832
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private createOnItemClickListener()Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;
    .registers 2

    .line 536
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$9;

    invoke-direct {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$9;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    return-object v0
.end method

.method private doOverridePeddingTransition()V
    .registers 4

    .line 402
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 406
    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 408
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-object v2, Lcom/meizu/settings/home/FlymeDashboardSummary;->PACKAGE_NEED_OVERRIDE_PEDDING:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedOverridePending:Z

    .line 411
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->setCloseAnimationToPreviousPage(Landroid/content/Context;)V

    :cond_46
    return-void
.end method

.method private initDashboardTileList(Z)V
    .registers 5

    .line 263
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;Lcom/meizu/settings/home/FlymeDashboardSummary$1;)V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mLoadingTask:Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;

    .line 264
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mLoadingTask:Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;

    if-eqz p0, :cond_22

    .line 265
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p0, "FlymeDashboardSummary"

    const-string p1, "mLoadingTask.execute().."

    .line 266
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method private initListView(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a03bc

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 379
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 380
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView;->setOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static isConnectivitySettingsFragment(Ljava/lang/String;)Z
    .registers 2

    .line 814
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private refreshView()V
    .registers 8

    .line 323
    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mDashboardTileList:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    const-string v1, "FlymeDashboardSummary"

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAdded():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAdapter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",hasRefreshViewed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->hasRefreshViewed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    if-eqz v1, :cond_db

    iget-boolean v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->hasRefreshViewed:Z

    if-eqz v1, :cond_41

    goto/16 :goto_db

    :cond_41
    const/4 v1, 0x1

    .line 329
    iput-boolean v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->hasRefreshViewed:Z

    .line 330
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 331
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->createOnItemClickListener()Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setOnItemClickListener(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;)V

    .line 332
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnSystemUpgradeBindListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;

    invoke-virtual {v2, v3}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setOnSystemUpgradeBindListener(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;)V

    .line 334
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_67

    move v2, v1

    goto :goto_68

    :cond_67
    move v2, v4

    .line 335
    :goto_68
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 336
    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v2, :cond_8d

    if-eqz v5, :cond_89

    .line 339
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateWifiStatus(ZLjava/lang/String;)V

    goto :goto_90

    .line 341
    :cond_89
    invoke-direct {p0, v1, v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateWifiStatus(ZLjava/lang/String;)V

    goto :goto_90

    .line 344
    :cond_8d
    invoke-direct {p0, v4, v6}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateWifiStatus(ZLjava/lang/String;)V

    .line 346
    :goto_90
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 347
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9c

    move v2, v1

    goto :goto_9d

    :cond_9c
    move v2, v4

    .line 346
    :goto_9d
    invoke-direct {p0, v2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateWlanTetheringStatus(Z)V

    .line 348
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 349
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v5, 0xc

    if-ne v2, v5, :cond_ae

    move v2, v1

    goto :goto_af

    :cond_ae
    move v2, v4

    :goto_af
    invoke-direct {p0, v2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateBluetoothStatus(Z)V

    .line 350
    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 351
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-ne v2, v3, :cond_bc

    move v2, v1

    goto :goto_bd

    :cond_bc
    move v2, v4

    .line 350
    :goto_bd
    invoke-direct {p0, v2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateWlanTetheringStatus(Z)V

    .line 352
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_d6

    .line 361
    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getNfcP2pState()I

    move-result v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_d6

    .line 362
    invoke-direct {p0, v1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateNfcStatus(Z)V

    goto :goto_d9

    .line 364
    :cond_d6
    invoke-direct {p0, v4}, Lcom/meizu/settings/home/FlymeDashboardSummary;->updateNfcStatus(Z)V

    .line 366
    :goto_d9
    monitor-exit v0

    return-void

    .line 326
    :cond_db
    :goto_db
    monitor-exit v0

    return-void

    :catchall_dd
    move-exception p0

    .line 366
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_3 .. :try_end_df} :catchall_dd

    throw p0
.end method

.method private registerNetworkChangeReceiver()V
    .registers 3

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.nfc.action.NFC_AND_EMULATION_STATE_CHANGED"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPermissionDialogSharedPreferenceChangeListener()V
    .registers 4

    .line 241
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSettingsSharedPreferences:Landroid/content/SharedPreferences;

    .line 243
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSettingsSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_permission_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedShowPermissionDialog:Z

    .line 244
    iget-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedShowPermissionDialog:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_3b

    .line 246
    :cond_2d
    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummary$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$5;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSettingsSharedPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 259
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSettingsSharedPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSettingsSharedPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private reportDashboardTileViewClick(Lcom/android/settingslib/drawer/Tile;)V
    .registers 4

    .line 698
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "usagestats.event"

    .line 699
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 702
    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "system_upgrade-click"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 703
    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->reportDataForUpdateSetting()V

    .line 704
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-virtual {v1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->queryUpdate()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 705
    :goto_27
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception p1

    .line 709
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :cond_32
    :goto_32
    if-nez v0, :cond_35

    move-object v0, p1

    .line 714
    :cond_35
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v1, "Settings"

    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportDataForUpdateSetting()V
    .registers 5

    .line 685
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 686
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-virtual {v1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->queryUpdate()Z

    move-result v1

    .line 687
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "redpoint"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v2, "FlymeDashboardSummary"

    const-string v3, "flyme_system_update_settings"

    invoke-virtual {p0, v3, v2, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 691
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reportDataForUpdateSetting hasUpdate = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setThemeChangedListener(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 217
    new-instance p1, Lcom/meizu/settings/home/FlymeDashboardSummary$4;

    invoke-direct {p1, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$4;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnThemeChangedListener:Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;

    goto :goto_d

    :cond_a
    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnThemeChangedListener:Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;

    .line 227
    :goto_d
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/FlymeSettingsApplication;

    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnThemeChangedListener:Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/FlymeSettingsApplication;->setOnThemeChangedListener(Lcom/meizu/settings/FlymeSettingsApplication$OnThemeChangedListener;)V

    return-void
.end method

.method private showInstallDigitalHealthAppDialog()V
    .registers 4

    .line 671
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120a1f

    .line 673
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 674
    new-instance v1, Lcom/meizu/settings/home/FlymeDashboardSummary$10;

    invoke-direct {v1, p0}, Lcom/meizu/settings/home/FlymeDashboardSummary$10;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V

    const p0, 0x7f120a1c

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120442

    const/4 v1, 0x0

    .line 680
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static startLocationServices(Landroid/content/Context;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .registers 8

    .line 852
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.connectivitysettings.LOCATION_SETTINGS"

    .line 853
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_args"

    .line 854
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title_resid"

    .line 855
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title"

    .line 856
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-nez p2, :cond_1f

    .line 858
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    .line 860
    :cond_1f
    invoke-virtual {p2, v0, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_22
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p6

    .line 839
    invoke-static/range {v0 .. v5}, Lcom/meizu/settings/home/FlymeDashboardSummary;->buildConnectivitySettingsFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    if-nez p3, :cond_10

    .line 842
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 844
    :cond_10
    invoke-virtual {p3, p1, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_13
    return-void
.end method

.method private updateBluetoothStatus(Z)V
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    if-eqz p1, :cond_8

    const p1, 0x7f120fa9

    goto :goto_b

    :cond_8
    const p1, 0x7f1204f2

    .line 528
    :goto_b
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 527
    invoke-virtual {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setBluetoothSummary(Ljava/lang/String;)V

    return-void
.end method

.method private updateNfcStatus(Z)V
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    if-eqz p1, :cond_8

    const p1, 0x7f120fa9

    goto :goto_b

    :cond_8
    const p1, 0x7f1204f2

    .line 532
    :goto_b
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 531
    invoke-virtual {v0, p0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setNfcSummary(Ljava/lang/String;)V

    return-void
.end method

.method private updateWifiStatus(ZLjava/lang/String;)V
    .registers 5

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWifiStatus: enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDashboardSummary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "<unknown ssid>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "0x"

    .line 509
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 510
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-virtual {p0, p2}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setWifiSummary(Ljava/lang/String;)V

    goto :goto_4c

    .line 512
    :cond_3a
    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    if-eqz p1, :cond_42

    const p1, 0x7f120fa9

    goto :goto_45

    :cond_42
    const p1, 0x7f1204f2

    .line 513
    :goto_45
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 512
    invoke-virtual {p2, p0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setWifiSummary(Ljava/lang/String;)V

    :goto_4c
    return-void
.end method

.method private updateWlanTetheringStatus(Z)V
    .registers 3

    if-eqz p1, :cond_14

    .line 519
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 520
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setWlanTetheringSummary(Ljava/lang/String;)V

    goto :goto_20

    .line 522
    :cond_14
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    const v0, 0x7f1204f2

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setWlanTetheringSummary(Ljava/lang/String;)V

    :goto_20
    return-void
.end method


# virtual methods
.method public onCategoriesChanged()V
    .registers 3

    const-string v0, "FlymeDashboardSummary"

    const-string v1, "onCategoriesChanged.."

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mDashboardTileList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 317
    :try_start_b
    iput-boolean v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->hasRefreshViewed:Z

    const/4 v1, 0x1

    .line 318
    invoke-direct {p0, v1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->initDashboardTileList(Z)V

    .line 319
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 198
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->registerPermissionDialogSharedPreferenceChangeListener()V

    .line 202
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    .line 203
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mUpdateChangeLocalCallback:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->addLocalCallback(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;)V

    .line 205
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SettingsBaseActivity;->addCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;)V

    .line 208
    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->registerNetworkChangeReceiver()V

    const/4 p1, 0x0

    .line 210
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->initDashboardTileList(Z)V

    const/4 p1, 0x1

    .line 212
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->setThemeChangedListener(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d00a4

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 373
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->initListView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 428
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 429
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mLoadingTask:Lcom/meizu/settings/home/FlymeDashboardSummary$LoadingTask;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 430
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 432
    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity;->remCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$CategoryListener;)V

    .line 434
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    if-eqz v0, :cond_24

    .line 435
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountContentObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1f

    .line 436
    invoke-virtual {v0, v1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->unregisterFlymeAccountContentObserver(Landroid/database/ContentObserver;)V

    .line 438
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->release()V

    .line 441
    :cond_24
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mOnAccountsUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v1, :cond_2f

    .line 442
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 445
    :cond_2f
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSettingsSharedPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v0, :cond_38

    .line 446
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mSettingsSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 449
    :cond_38
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 451
    invoke-direct {p0, v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->setThemeChangedListener(Z)V

    .line 453
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mUpdateChangeLocalCallback:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->removeLocalCallback(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 420
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->isViewCreated:Z

    .line 422
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->hasRefreshViewed:Z

    .line 423
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView;->setOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 458
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 460
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mIsFlymeAccountLogin:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->isFlymeAccountStateChange()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 461
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mAdapter:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 392
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 394
    iget-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedOverridePending:Z

    if-eqz v0, :cond_d

    .line 395
    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->doOverridePeddingTransition()V

    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->mNeedOverridePending:Z

    :cond_d
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 385
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 386
    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary;->isViewCreated:Z

    .line 387
    invoke-direct {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->refreshView()V

    return-void
.end method

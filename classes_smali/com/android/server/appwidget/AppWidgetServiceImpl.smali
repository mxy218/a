.class Lcom/android/server/appwidget/AppWidgetServiceImpl;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Lcom/android/server/WidgetBackupProvider;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static DEBUG:Z = false

.field private static final ID_PROVIDER_CHANGED:I = 0x1

.field private static final ID_VIEWS_UPDATE:I = 0x0

.field private static final KEYGUARD_HOST_ID:I = 0x4b455947

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final MIN_UPDATE_PERIOD:I

.field private static final NEW_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "com.android.keyguard"

.field private static final OLD_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "android"

.field private static final STATE_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"

.field private static final TAG_UNDEFINED:I = -0x1

.field private static final UNKNOWN_UID:I = -0x1

.field private static final UNKNOWN_USER_ID:I = -0xa

.field private static final UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field private final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field private mIconUtilities:Lcom/android/server/policy/IconUtilities;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private mMaxWidgetBitmapMemory:I

.field private final mNextAppWidgetIds:Landroid/util/SparseIntArray;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSafeMode:Z

.field private mSaveStateHandler:Landroid/os/Handler;

.field private mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

.field private mUserManager:Landroid/os/UserManager;

.field private final mWidgetPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 2622
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 154
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_8

    goto :goto_b

    :cond_8
    const v0, 0x1b7740

    :goto_b
    sput v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 249
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 171
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 219
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    .line 221
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 242
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 250
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 251
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 142
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 1

    .line 142
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .registers 7

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .registers 7

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 3

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .registers 7

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I
    .registers 3

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    return-object p0
.end method

.method static synthetic access$2800(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 1

    .line 142
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/appwidget/AppWidgetServiceImpl;IZ)V
    .registers 3

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .registers 3

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V
    .registers 4

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V

    return-void
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 8

    .line 2247
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2248
    return v1

    .line 2251
    :cond_d
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2252
    return v1

    .line 2255
    :cond_16
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 2259
    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object p1

    .line 2260
    if-eqz p1, :cond_79

    .line 2264
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 2268
    if-nez v3, :cond_45

    .line 2269
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 2270
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 2273
    :cond_45
    if-eqz v3, :cond_72

    .line 2274
    iget-boolean v0, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez v0, :cond_77

    .line 2276
    iput-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2277
    iput-boolean v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 2278
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2279
    sget-boolean p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz p1, :cond_77

    .line 2280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Provider placeholder now reified: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppWidgetServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 2284
    :cond_72
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2286
    :cond_77
    :goto_77
    const/4 p1, 0x1

    return p1

    .line 2289
    :cond_79
    return v1
.end method

.method private bindLoadedWidgetsLocked(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)V"
        }
    .end annotation

    .line 2782
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2783
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_3e

    .line 2784
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    .line 2785
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2787
    iget v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2788
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v3, :cond_1d

    .line 2791
    goto :goto_3b

    .line 2794
    :cond_1d
    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2795
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-nez v1, :cond_2a

    .line 2797
    goto :goto_3b

    .line 2800
    :cond_2a
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2801
    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2802
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2783
    :goto_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2804
    :cond_3e
    return-void
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 8

    .line 3495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3497
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 3501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3502
    nop

    .line 3503
    return-void

    .line 3501
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 5

    .line 1848
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 1849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelBroadcastsLocked() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_1a
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2d

    .line 1852
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 1853
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1857
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 1859
    :cond_2d
    return-void
.end method

.method private clearProvidersAndHostsTagsLocked()V
    .registers 6

    .line 2967
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2968
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, -0x1

    if-ge v2, v0, :cond_18

    .line 2969
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2970
    iput v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 2968
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2973
    :cond_18
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2974
    nop

    :goto_1f
    if-ge v1, v0, :cond_2e

    .line 2975
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2976
    iput v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 2974
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 2978
    :cond_2e
    return-void
.end method

.method private static cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .line 2163
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    .line 2164
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0

    .line 2166
    :cond_d
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 2173
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    .line 2174
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    .line 2176
    :cond_f
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2

    .line 2156
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    .line 2157
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 2159
    :cond_d
    return-object p0
.end method

.method private computeMaximumWidgetBitmapMemory()V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 276
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 281
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 282
    return-void
.end method

.method private createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 572
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 573
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 572
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2

    .line 574
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 575
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 577
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {p2}, Lcom/android/server/policy/IconUtilities;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 578
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {p2, p1}, Lcom/android/server/policy/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2e} :catch_34
    .catchall {:try_start_4 .. :try_end_2e} :catchall_32

    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    return-object p1

    .line 585
    :catchall_32
    move-exception p1

    goto :goto_41

    .line 579
    :catch_34
    move-exception p1

    .line 580
    :try_start_35
    const-string p2, "AppWidgetServiceImpl"

    const-string v2, "Fail to get application icon"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .line 583
    const/4 p1, 0x0

    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    return-object p1

    .line 585
    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .registers 7

    .line 591
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x109012f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 593
    if-eqz p1, :cond_16

    .line 594
    const v1, 0x10204fb

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 596
    :cond_16
    if-nez p2, :cond_1f

    .line 597
    const p1, 0x10204fc

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 599
    :cond_1f
    if-eqz p3, :cond_27

    .line 600
    const p1, 0x10204fd

    invoke-virtual {v0, p1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 602
    :cond_27
    return-object v0
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6

    .line 1909
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 1910
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1911
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1912
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1913
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1914
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1917
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1918
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1919
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1922
    :cond_3e
    goto :goto_a

    .line 1923
    :cond_3f
    return-void
.end method

.method private deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 4

    .line 1821
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1823
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1824
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1825
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1827
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1829
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1830
    if-eqz v0, :cond_2e

    .line 1831
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1832
    iget-boolean v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v1, :cond_2e

    .line 1834
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1836
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1838
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1841
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1845
    :cond_2e
    return-void
.end method

.method private deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 4

    .line 1806
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1807
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1808
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1809
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1807
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1811
    :cond_18
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1814
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1815
    return-void
.end method

.method private deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 3

    .line 2313
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 2314
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2317
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2318
    return-void
.end method

.method private deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V
    .registers 7

    .line 2294
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2295
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3d

    .line 2296
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2297
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1d

    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2298
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v2

    if-ne p2, v2, :cond_3a

    .line 2299
    :cond_1d
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2301
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 2303
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2304
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2305
    iput-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2306
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 2307
    iput-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2295
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2310
    :cond_3d
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 8

    .line 1863
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 1883
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1885
    :try_start_9
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v4, 0x2000001

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1887
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p2

    .line 1885
    invoke-virtual {v3, p1, v0, v4, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 1889
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1890
    nop

    .line 1891
    return-void

    .line 1889
    :catchall_1e
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private static dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 2424
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const/16 p1, 0x5d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 2425
    const-string p1, " user="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2426
    const-string p1, " package="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    return-void
.end method

.method private static dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .registers 4

    .line 2416
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "] hostId="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2417
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2418
    const-string p1, "    callbacks="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2419
    const-string p1, "    widgets.size="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2420
    const-string p1, " zombie="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2421
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 7

    .line 798
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 799
    const-string v1, "Providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    .line 801
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 804
    :cond_1d
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 805
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    const-string v3, "Widgets:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    move v3, v1

    :goto_2e
    if-ge v3, v0, :cond_3e

    .line 808
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-static {v4, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V

    .line 807
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 811
    :cond_3e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 812
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    const-string v3, "Hosts:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    move v3, v1

    :goto_4d
    if-ge v3, v0, :cond_5d

    .line 815
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-static {v4, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 814
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 818
    :cond_5d
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 819
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    const-string v2, "Grants:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    nop

    :goto_6c
    if-ge v1, v0, :cond_7c

    .line 822
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 823
    invoke-static {v2, v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V

    .line 821
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 825
    :cond_7c
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 5

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump proto for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widgets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 764
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 765
    const/4 v1, 0x0

    :goto_2d
    if-ge v1, p1, :cond_3d

    .line 766
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-direct {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 768
    :cond_3d
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 769
    return-void
.end method

.method private dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 11

    .line 772
    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_b8

    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_a

    goto/16 :goto_b8

    .line 777
    :cond_a
    const-wide v0, 0x20b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 778
    const-wide v2, 0x10800000001L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 779
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2a

    move v4, v6

    goto :goto_2b

    :cond_2a
    move v4, v7

    .line 778
    :goto_2b
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 780
    const-wide v2, 0x10800000002L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v6, v7

    :goto_3b
    invoke-virtual {p1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 781
    const-wide v2, 0x10900000003L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 782
    const-wide v2, 0x10900000004L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 783
    const-wide v2, 0x10900000005L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 784
    iget-object v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_b4

    .line 785
    const-wide v2, 0x10500000006L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 786
    const-string v5, "appWidgetMinWidth"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 785
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 787
    const-wide v2, 0x10500000007L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 788
    const-string v5, "appWidgetMinHeight"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 787
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 789
    const-wide v2, 0x10500000008L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 790
    const-string v5, "appWidgetMaxWidth"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 789
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 791
    const-wide v2, 0x10500000009L

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 792
    const-string v4, "appWidgetMaxHeight"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 791
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 794
    :cond_b4
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 795
    return-void

    .line 773
    :cond_b8
    :goto_b8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "skip dumping widget because host or provider is null: widget.host="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " widget.provider="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppWidgetServiceImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method private static dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .registers 5

    .line 2393
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2394
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "] provider "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2395
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2396
    const-string p1, "    min=("

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2397
    const-string/jumbo p1, "x"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2398
    const-string v1, ")   minResize=("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2399
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2400
    const-string p1, ") updatePeriodMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2401
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2402
    const-string p1, " resizeMode="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2403
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2404
    const-string p1, " widgetCategory="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2406
    const-string p1, " autoAdvanceViewId="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2407
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2408
    const-string p1, " initialLayout=#"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2409
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    const-string p1, " initialKeyguardLayout=#"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2411
    iget p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    const-string p1, " zombie="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2413
    return-void
.end method

.method private static dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V
    .registers 4

    .line 2430
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "] id="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2431
    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 2432
    const-string p1, "    host="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2433
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2434
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p1, :cond_2e

    .line 2435
    const-string p1, "    provider="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2437
    :cond_2e
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz p1, :cond_3e

    .line 2438
    const-string p1, "    host.callbacks="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2440
    :cond_3e
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_4c

    .line 2441
    const-string p1, "    views="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2443
    :cond_4c
    return-void
.end method

.method private ensureGroupStateLoadedLocked(I)V
    .registers 3

    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 695
    return-void
.end method

.method private ensureGroupStateLoadedLocked(IZ)V
    .registers 9

    .line 698
    if-eqz p2, :cond_25

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_25

    .line 699
    :cond_9
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be unlocked for widgets to be available"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 702
    :cond_25
    :goto_25
    if-eqz p2, :cond_4a

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result p2

    if-nez p2, :cond_2e

    goto :goto_4a

    .line 703
    :cond_2e
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must have unlocked parent"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 706
    :cond_4a
    :goto_4a
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object p1

    .line 711
    nop

    .line 712
    array-length p2, p1

    .line 713
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_55
    const/4 v3, -0x1

    if-ge v1, p2, :cond_6a

    .line 714
    aget v4, p1, v1

    .line 715
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_65

    .line 716
    aput v3, p1, v1

    goto :goto_67

    .line 718
    :cond_65
    add-int/lit8 v2, v2, 0x1

    .line 713
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 722
    :cond_6a
    if-gtz v2, :cond_6d

    .line 723
    return-void

    .line 726
    :cond_6d
    nop

    .line 727
    new-array v1, v2, [I

    .line 728
    move v2, v0

    :goto_71
    if-ge v0, p2, :cond_83

    .line 729
    aget v4, p1, v0

    .line 730
    if-eq v4, v3, :cond_80

    .line 731
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 732
    aput v4, v1, v2

    .line 733
    add-int/lit8 v2, v2, 0x1

    .line 728
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 737
    :cond_83
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearProvidersAndHostsTagsLocked()V

    .line 739
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupWidgetProvidersLocked([I)V

    .line 740
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupStateLocked([I)V

    .line 741
    return-void
.end method

.method private findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 7

    .line 2821
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 2822
    return-object v0

    .line 2824
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2825
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 2826
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2827
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    if-ne v4, p1, :cond_1a

    .line 2828
    return-object v3

    .line 2825
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2831
    :cond_1d
    return-object v0
.end method

.method private findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7

    .line 2807
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 2808
    return-object v0

    .line 2810
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2811
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 2812
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2813
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    if-ne v4, p1, :cond_1a

    .line 2814
    return-object v3

    .line 2811
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2817
    :cond_1d
    return-object v0
.end method

.method private getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .line 3465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3468
    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v2, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_18
    .catchall {:try_start_5 .. :try_end_11} :catchall_16

    .line 3470
    nop

    .line 3479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3470
    return-object p1

    .line 3479
    :catchall_16
    move-exception p1

    goto :goto_39

    .line 3471
    :catch_18
    move-exception p2

    .line 3472
    :try_start_19
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    aput-object p1, p3, v2

    .line 3473
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3474
    if-eqz p1, :cond_33

    array-length p2, p1

    if-lez p2, :cond_33

    .line 3475
    aget-object p1, p1, v2
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_16

    .line 3479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3475
    return-object p1

    .line 3479
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3480
    nop

    .line 3481
    const/4 p1, 0x0

    return-object p1

    .line 3479
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 5

    .line 2652
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2655
    invoke-direct {p0, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 2657
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1e

    .line 2658
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p1

    .line 2661
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getSavedStateFile(I)Landroid/util/AtomicFile;
    .registers 4

    .line 3249
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3250
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 3251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    if-nez p0, :cond_23

    .line 3252
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_19

    .line 3253
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3256
    :cond_19
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/appwidgets.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3261
    :cond_23
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method private static getStateFile(I)Ljava/io/File;
    .registers 3

    .line 3245
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "appwidgets.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 7

    .line 2633
    nop

    .line 2635
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2637
    :try_start_5
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_15
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 2641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2642
    goto :goto_1a

    .line 2641
    :catchall_10
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2638
    :catch_15
    move-exception p1

    .line 2641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2642
    const/4 p1, 0x0

    .line 2644
    :goto_1a
    if-eqz p1, :cond_26

    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_21

    goto :goto_26

    .line 2648
    :cond_21
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    return p1

    .line 2645
    :cond_26
    :goto_26
    const/4 p1, -0x1

    return p1
.end method

.method private static getWidgetIds(Ljava/util/ArrayList;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;)[I"
        }
    .end annotation

    .line 2384
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2385
    new-array v1, v0, [I

    .line 2386
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    .line 2387
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    aput v3, v1, v2

    .line 2386
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2389
    :cond_16
    return-object v1
.end method

.method private handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .registers 8

    .line 1986
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V

    .line 1987
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_7

    .line 1992
    goto :goto_9

    .line 1988
    :catch_7
    move-exception p2

    .line 1991
    move-object p2, v0

    .line 1996
    :goto_9
    iget-object p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1997
    if-nez p2, :cond_5a

    .line 1998
    :try_start_e
    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2000
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 2001
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 2002
    iget-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_59

    .line 2003
    new-instance p5, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    invoke-direct {p5, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 2022
    iget-object p6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    .line 2023
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent$FilterComparison;

    invoke-virtual {p2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 2026
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, p2, p5, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 2028
    :cond_59
    goto :goto_1a

    .line 2030
    :cond_5a
    monitor-exit p4

    .line 2031
    return-void

    .line 2030
    :catchall_5c
    move-exception p1

    monitor-exit p4
    :try_end_5e
    .catchall {:try_start_e .. :try_end_5e} :catchall_5c

    throw p1
.end method

.method private handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .registers 7

    .line 2095
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2096
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2102
    goto :goto_26

    .line 2097
    :catch_6
    move-exception p2

    .line 2098
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2099
    :try_start_a
    const-string p4, "AppWidgetServiceImpl"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Widget host dead: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2100
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2101
    monitor-exit p3

    .line 2103
    :goto_26
    return-void

    .line 2101
    :catchall_27
    move-exception p1

    monitor-exit p3
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw p1
.end method

.method private handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 7

    .line 2142
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2148
    goto :goto_24

    .line 2143
    :catch_4
    move-exception p2

    .line 2144
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2145
    :try_start_8
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widget host dead: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2146
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2147
    monitor-exit v0

    .line 2149
    :goto_24
    return-void

    .line 2147
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .registers 7

    .line 2058
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2059
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2065
    goto :goto_26

    .line 2060
    :catch_6
    move-exception p2

    .line 2061
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 2062
    :try_start_a
    const-string p4, "AppWidgetServiceImpl"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Widget host dead: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2063
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2064
    monitor-exit p3

    .line 2066
    :goto_26
    return-void

    .line 2064
    :catchall_27
    move-exception p1

    monitor-exit p3
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw p1
.end method

.method private incrementAndGetAppWidgetIdLocked(I)I
    .registers 4

    .line 1772
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1773
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    return v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;)V"
        }
    .end annotation

    .line 1897
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1898
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    goto :goto_1c

    .line 1900
    :cond_11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1901
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v0

    .line 1903
    :goto_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1904
    return-void
.end method

.method private static isLocalBinder()Z
    .registers 2

    .line 2152
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isProfileWithLockedParent(I)Z
    .registers 5

    .line 3557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3559
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3560
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3561
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3562
    if-eqz p1, :cond_2d

    .line 3563
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_33

    if-nez p1, :cond_2d

    .line 3564
    const/4 p1, 0x1

    .line 3568
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3564
    return p1

    .line 3568
    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3569
    nop

    .line 3570
    const/4 p1, 0x0

    return p1

    .line 3568
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isProfileWithUnlockedParent(I)Z
    .registers 3

    .line 3574
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3575
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3576
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3577
    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 3578
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 3579
    const/4 p1, 0x1

    return p1

    .line 3582
    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method private isUserRunningAndUnlocked(I)Z
    .registers 3

    .line 744
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    return p1
.end method

.method private loadGroupStateLocked([I)V
    .registers 11

    .line 2746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2748
    nop

    .line 2750
    array-length v1, p1

    .line 2751
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_a
    const-string v5, "AppWidgetServiceImpl"

    if-ge v3, v1, :cond_44

    .line 2752
    aget v6, p1, v3

    .line 2755
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v7

    .line 2756
    :try_start_14
    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_2c

    const/4 v8, 0x0

    .line 2757
    :try_start_19
    invoke-direct {p0, v7, v6, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    move-result v4
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_23

    .line 2758
    if-eqz v7, :cond_22

    :try_start_1f
    invoke-static {v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2c

    .line 2760
    :cond_22
    goto :goto_41

    .line 2756
    :catchall_23
    move-exception v6

    :try_start_24
    throw v6
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 2758
    :catchall_25
    move-exception v8

    if-eqz v7, :cond_2b

    :try_start_28
    invoke-static {v6, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2b
    throw v8
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v6

    .line 2759
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2763
    :cond_44
    if-ltz v4, :cond_4d

    .line 2765
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindLoadedWidgetsLocked(Ljava/util/List;)V

    .line 2768
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->performUpgradeLocked(I)V

    goto :goto_73

    .line 2771
    :cond_4d
    const-string p1, "Failed to read state, clearing widgets and hosts."

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearWidgetsLocked()V

    .line 2773
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2774
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2775
    nop

    :goto_61
    if-ge v2, p1, :cond_73

    .line 2776
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2775
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 2779
    :cond_73
    :goto_73
    return-void
.end method

.method private loadGroupWidgetProvidersLocked([I)V
    .registers 9

    .line 2223
    nop

    .line 2224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2226
    array-length v1, p1

    .line 2227
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_2a

    .line 2228
    aget v5, p1, v3

    .line 2230
    invoke-direct {p0, v0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2231
    if-eqz v5, :cond_27

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_27

    .line 2232
    if-nez v4, :cond_24

    .line 2233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2235
    :cond_24
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2227
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2239
    :cond_2a
    if-nez v4, :cond_2e

    move p1, v2

    goto :goto_32

    :cond_2e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    .line 2240
    :goto_32
    nop

    :goto_33
    if-ge v2, p1, :cond_41

    .line 2241
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2242
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 2240
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 2244
    :cond_41
    return-void
.end method

.method private lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 6

    .line 2203
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2204
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2205
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2206
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2207
    return-object v2

    .line 2204
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2210
    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 4

    .line 1793
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1794
    if-eqz v0, :cond_7

    .line 1795
    return-object v0

    .line 1798
    :cond_7
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1799
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 1800
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    return-object v0
.end method

.method private lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 6

    .line 2192
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2193
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2194
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2195
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2196
    return-object v2

    .line 2193
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2199
    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 8

    .line 2180
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2181
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 2182
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2183
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v3, p1, :cond_1e

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 2184
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2185
    return-object v2

    .line 2181
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2188
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method private maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 15

    .line 610
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 611
    if-nez v0, :cond_9

    .line 612
    return-void

    .line 614
    :cond_9
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v2

    .line 616
    invoke-direct {p0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 617
    if-nez v3, :cond_1c

    .line 618
    return-void

    .line 622
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 624
    :try_start_20
    iget-boolean v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_51

    .line 625
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 626
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    .line 627
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v9, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 629
    const-string v10, "android"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 630
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v1, v2, v8}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4f

    .line 633
    :cond_45
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 634
    invoke-virtual {v8, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v8

    .line 635
    invoke-static {v1, v9, v8, v2}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;I)Landroid/content/Intent;

    move-result-object v1

    .line 638
    :goto_4f
    move v8, v6

    goto :goto_69

    :cond_51
    iget-boolean v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-eqz v1, :cond_5b

    .line 639
    nop

    .line 640
    invoke-static {v2}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_69

    .line 643
    :cond_5b
    nop

    .line 644
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v7, v7, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 646
    if-eqz v1, :cond_69

    .line 647
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 651
    :cond_69
    :goto_69
    const/4 v2, 0x0

    :goto_6a
    if-ge v2, v0, :cond_9c

    .line 652
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 653
    if-eqz p2, :cond_79

    if-eq p2, v6, :cond_79

    goto :goto_99

    .line 654
    :cond_79
    nop

    .line 655
    if-eqz v1, :cond_87

    .line 656
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v10, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v1, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    goto :goto_88

    .line 655
    :cond_87
    move-object v9, v7

    .line 659
    :goto_88
    invoke-direct {p0, v3, v8, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 660
    invoke-static {v6, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$900(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 661
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-direct {p0, v6, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    :try_end_99
    .catchall {:try_start_20 .. :try_end_99} :catchall_a1

    .line 651
    :cond_99
    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 665
    :cond_9c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    nop

    .line 667
    return-void

    .line 665
    :catchall_a1
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private onConfigurationChanged()V
    .registers 9

    .line 334
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 335
    const-string v0, "AppWidgetServiceImpl"

    const-string/jumbo v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 340
    :cond_1c
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 342
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    const/4 v1, 0x0

    .line 348
    :try_start_22
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 351
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 352
    add-int/lit8 v4, v4, -0x1

    :goto_34
    if-ltz v4, :cond_83

    .line 353
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 355
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    .line 356
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 357
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 358
    goto :goto_80

    .line 360
    :cond_4f
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 362
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_80

    .line 363
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 364
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    .line 363
    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v6

    .line 367
    if-eqz v6, :cond_80

    .line 368
    if-nez v1, :cond_73

    .line 369
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 371
    :cond_73
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 372
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v5

    .line 371
    invoke-virtual {v6, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v5

    .line 373
    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    :cond_80
    :goto_80
    add-int/lit8 v4, v4, -0x1

    goto :goto_34

    .line 378
    :cond_83
    if-eqz v1, :cond_96

    .line 379
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 380
    const/4 v3, 0x0

    :goto_8a
    if-ge v3, v2, :cond_96

    .line 381
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 382
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 385
    :cond_96
    monitor-exit v0

    .line 387
    :cond_97
    return-void

    .line 385
    :catchall_98
    move-exception v1

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_22 .. :try_end_9a} :catchall_98

    throw v1
.end method

.method private onPackageBroadcastReceived(Landroid/content/Intent;I)V
    .registers 11

    .line 390
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    nop

    .line 392
    nop

    .line 393
    nop

    .line 396
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_fc

    :cond_12
    goto :goto_3b

    :sswitch_13
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v4

    goto :goto_3c

    :sswitch_1d
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v5

    goto :goto_3c

    :sswitch_27
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v3

    goto :goto_3c

    :sswitch_31
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_3c

    :goto_3b
    const/4 v1, -0x1

    :goto_3c
    if-eqz v1, :cond_71

    if-eq v1, v4, :cond_71

    if-eq v1, v3, :cond_68

    if-eq v1, v2, :cond_66

    .line 409
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 410
    if-nez v1, :cond_4b

    .line 411
    return-void

    .line 413
    :cond_4b
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 414
    if-nez v1, :cond_52

    .line 415
    return-void

    .line 417
    :cond_52
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v5

    .line 418
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 419
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_7a

    .line 396
    :cond_66
    move v0, v5

    goto :goto_69

    .line 403
    :cond_68
    move v0, v4

    .line 406
    :goto_69
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 407
    move v1, v5

    goto :goto_7a

    .line 399
    :cond_71
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 400
    nop

    .line 401
    move v1, v4

    move v0, v5

    .line 422
    :goto_7a
    if-eqz v2, :cond_fa

    array-length v3, v2

    if-nez v3, :cond_81

    goto/16 :goto_fa

    .line 426
    :cond_81
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 427
    :try_start_84
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 428
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v6

    if-eqz v6, :cond_94

    goto/16 :goto_f5

    .line 431
    :cond_94
    invoke-direct {p0, p2, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 433
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 435
    if-nez v0, :cond_c0

    if-eqz v1, :cond_a0

    goto :goto_c0

    .line 456
    :cond_a0
    if-eqz p1, :cond_ad

    const-string v0, "android.intent.extra.REPLACING"

    .line 457
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_ab

    goto :goto_ad

    :cond_ab
    move v4, v5

    goto :goto_ae

    :cond_ad
    :goto_ad
    nop

    .line 459
    :goto_ae
    if-eqz v4, :cond_be

    .line 460
    array-length p1, v2

    move v0, v5

    :goto_b2
    if-ge v5, p1, :cond_eb

    aget-object v1, v2, v5

    .line 461
    invoke-direct {p0, v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 460
    add-int/lit8 v5, v5, 0x1

    goto :goto_b2

    .line 459
    :cond_be
    move v0, v5

    goto :goto_eb

    .line 436
    :cond_c0
    :goto_c0
    if-eqz v0, :cond_cd

    if-eqz p1, :cond_cc

    const-string v0, "android.intent.extra.REPLACING"

    .line 437
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_cd

    :cond_cc
    goto :goto_ce

    :cond_cd
    move v4, v5

    .line 439
    :goto_ce
    array-length p1, v2

    move v0, v5

    :goto_d0
    if-ge v5, p1, :cond_ea

    aget-object v1, v2, v5

    .line 441
    const/4 v6, 0x0

    invoke-direct {p0, v1, p2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 446
    if-eqz v4, :cond_e7

    if-nez p2, :cond_e7

    .line 447
    invoke-direct {p0, v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v6

    .line 448
    if-ltz v6, :cond_e7

    .line 449
    invoke-direct {p0, v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resolveHostUidLocked(Ljava/lang/String;I)V

    .line 439
    :cond_e7
    add-int/lit8 v5, v5, 0x1

    goto :goto_d0

    .line 453
    :cond_ea
    nop

    .line 467
    :cond_eb
    :goto_eb
    if-eqz v0, :cond_f3

    .line 468
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 471
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 473
    :cond_f3
    monitor-exit v3

    .line 474
    return-void

    .line 429
    :cond_f5
    :goto_f5
    monitor-exit v3

    return-void

    .line 473
    :catchall_f7
    move-exception p1

    monitor-exit v3
    :try_end_f9
    .catchall {:try_start_84 .. :try_end_f9} :catchall_f7

    throw p1

    .line 423
    :cond_fa
    :goto_fa
    return-void

    nop

    :sswitch_data_fc
    .sparse-switch
        -0x53ae571d -> :sswitch_31
        -0x4fc097e4 -> :sswitch_27
        -0x3bb3e592 -> :sswitch_1d
        0x4cef8b35 -> :sswitch_13
    .end sparse-switch
.end method

.method private onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 8

    .line 2878
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_5

    return-void

    .line 2880
    :cond_5
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 2881
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 2882
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2883
    if-nez v1, :cond_20

    .line 2884
    return-void

    .line 2888
    :cond_20
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2889
    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_52

    .line 2890
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2891
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v5, :cond_36

    goto :goto_4f

    .line 2892
    :cond_36
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v5

    if-ne v5, v0, :cond_4f

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2893
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2894
    return-void

    .line 2889
    :cond_4f
    :goto_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 2897
    :cond_52
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2898
    return-void
.end method

.method private onWidgetsClearedLocked()V
    .registers 2

    .line 2910
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2911
    return-void
.end method

.method private parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 20

    .line 2535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, " for user "

    const-string v5, "AppWidgetServiceImpl"

    const/4 v6, 0x0

    :try_start_d
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2536
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v2, v7, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_165
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_17} :catch_165
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_17} :catch_165

    .line 2535
    nop

    .line 2537
    if-nez v7, :cond_42

    .line 2538
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " meta-data for AppWidget provider \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_15a

    .line 2540
    nop

    .line 2622
    if-eqz v7, :cond_41

    :try_start_3e
    invoke-static {v6, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_165
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_41} :catch_165
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_41} :catch_165

    .line 2540
    :cond_41
    return-object v6

    .line 2543
    :cond_42
    :try_start_42
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 2546
    :goto_46
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v8, v10, :cond_51

    if-eq v8, v9, :cond_51

    goto :goto_46

    .line 2551
    :cond_51
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2552
    const-string v11, "appwidget-provider"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_80

    .line 2553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_42 .. :try_end_7b} :catchall_15a

    .line 2556
    nop

    .line 2622
    :try_start_7c
    invoke-static {v6, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_165
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_7f} :catch_165
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7c .. :try_end_7f} :catch_165

    .line 2556
    return-object v6

    .line 2559
    :cond_80
    :try_start_80
    new-instance v8, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v8}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 2560
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2561
    iput-object v2, v8, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 2564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_15a

    .line 2566
    :try_start_8f
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2567
    iget v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 2568
    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v13, v15, v6, v14}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 2570
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13
    :try_end_a6
    .catchall {:try_start_8f .. :try_end_a6} :catchall_155

    .line 2572
    :try_start_a6
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2573
    nop

    .line 2575
    sget-object v11, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v13, v3, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2581
    nop

    .line 2582
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 2583
    if-eqz v11, :cond_ba

    iget v11, v11, Landroid/util/TypedValue;->data:I

    goto :goto_bb

    :cond_ba
    move v11, v6

    :goto_bb
    iput v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 2584
    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 2585
    if-eqz v11, :cond_c6

    iget v11, v11, Landroid/util/TypedValue;->data:I

    goto :goto_c7

    :cond_c6
    move v11, v6

    :goto_c7
    iput v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 2586
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 2588
    if-eqz v11, :cond_d4

    iget v11, v11, Landroid/util/TypedValue;->data:I

    goto :goto_d6

    :cond_d4
    iget v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    :goto_d6
    iput v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 2589
    const/16 v11, 0x9

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 2591
    if-eqz v11, :cond_e3

    iget v11, v11, Landroid/util/TypedValue;->data:I

    goto :goto_e5

    :cond_e3
    iget v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    :goto_e5
    iput v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 2592
    invoke-virtual {v3, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v8, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 2594
    const/4 v9, 0x3

    invoke-virtual {v3, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 2596
    const/16 v9, 0xa

    invoke-virtual {v3, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 2599
    const/4 v9, 0x4

    .line 2600
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2601
    if-eqz v9, :cond_110

    .line 2602
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v8, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 2605
    :cond_110
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2606
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 2607
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 2609
    const/4 v0, 0x6

    const/4 v2, -0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 2611
    const/4 v0, 0x7

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 2614
    const/16 v0, 0xb

    invoke-virtual {v3, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 2617
    const/16 v0, 0xc

    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 2620
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_14f
    .catchall {:try_start_a6 .. :try_end_14f} :catchall_15a

    .line 2621
    nop

    .line 2622
    const/4 v2, 0x0

    :try_start_151
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_154} :catch_165
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_151 .. :try_end_154} :catch_165
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_151 .. :try_end_154} :catch_165

    .line 2621
    return-object v8

    .line 2572
    :catchall_155
    move-exception v0

    :try_start_156
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_15a
    .catchall {:try_start_156 .. :try_end_15a} :catchall_15a

    .line 2535
    :catchall_15a
    move-exception v0

    move-object v2, v0

    :try_start_15c
    throw v2
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15d

    .line 2622
    :catchall_15d
    move-exception v0

    move-object v3, v0

    if-eqz v7, :cond_164

    :try_start_161
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_164
    throw v3
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_165} :catch_165
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_161 .. :try_end_165} :catch_165
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_161 .. :try_end_165} :catch_165

    :catch_165
    move-exception v0

    .line 2626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML parsing failed for AppWidget provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2628
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 6

    .line 2515
    nop

    .line 2516
    const/4 v0, 0x0

    if-eqz p3, :cond_15

    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2517
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    goto :goto_16

    .line 2519
    :cond_15
    move-object p3, v0

    :goto_16
    if-nez p3, :cond_20

    .line 2520
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string p3, "android.appwidget.provider"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p3

    .line 2523
    :cond_20
    if-nez p3, :cond_23

    .line 2524
    return-object v0

    .line 2527
    :cond_23
    new-instance p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {p2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 2528
    iput-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2529
    iput-object p3, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2530
    return-object p2
.end method

.method private peekNextAppWidgetIdLocked(I)I
    .registers 3

    .line 1785
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_a

    .line 1786
    const/4 p1, 0x1

    return p1

    .line 1788
    :cond_a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method private performUpgradeLocked(I)V
    .registers 7

    .line 3215
    const/4 v0, 0x1

    if-ge p1, v0, :cond_21

    .line 3216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading widget database from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :cond_21
    nop

    .line 3223
    if-nez p1, :cond_49

    .line 3224
    new-instance p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const v2, 0x4b455947  # 1.2933447E7f

    const-string v3, "android"

    invoke-direct {p1, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 3227
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    .line 3228
    if-eqz p1, :cond_48

    .line 3229
    const/4 v1, 0x0

    const-string v3, "com.android.keyguard"

    invoke-direct {p0, v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 3231
    if-ltz v1, :cond_48

    .line 3232
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3236
    :cond_48
    move p1, v0

    .line 3239
    :cond_49
    if-ne p1, v0, :cond_4c

    .line 3242
    return-void

    .line 3240
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to upgrade widget database"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 4

    .line 2214
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_2d

    .line 2215
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pruning host "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_28
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2220
    :cond_2d
    return-void
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 2665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2667
    nop

    .line 2671
    const v2, 0x10000080

    .line 2676
    :try_start_8
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithUnlockedParent(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2677
    const v2, 0x100c0080

    .line 2683
    :cond_11
    or-int/lit16 v2, v2, 0x400

    .line 2685
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2686
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 2685
    invoke-interface {v3, p1, v4, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 2687
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_27} :catch_2d
    .catchall {:try_start_8 .. :try_end_27} :catchall_2b

    .line 2691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2685
    return-object p1

    .line 2691
    :catchall_2b
    move-exception p1

    goto :goto_36

    .line 2688
    :catch_2d
    move-exception p1

    .line 2689
    :try_start_2e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_2b

    .line 2691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2689
    return-object p1

    .line 2691
    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)I"
        }
    .end annotation

    .line 3045
    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "h"

    const-string/jumbo v4, "p"

    .line 3047
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 3048
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3050
    nop

    .line 3051
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 3054
    :cond_1c
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 3055
    const/4 v11, 0x2

    if-ne v10, v11, :cond_226

    .line 3056
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 3057
    const-string v13, "gs"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_43

    .line 3058
    const-string/jumbo v9, "version"

    invoke-interface {v6, v15, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_37} :catch_22d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_37} :catch_22d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_37} :catch_22d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_37} :catch_22d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_37} :catch_22d

    .line 3060
    :try_start_37
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3b} :catch_22d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_3b} :catch_22d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_22d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_37 .. :try_end_3b} :catch_22d

    .line 3063
    goto :goto_3e

    .line 3061
    :catch_3c
    move-exception v0

    .line 3062
    const/4 v14, 0x0

    .line 3064
    :goto_3e
    move-object/from16 v5, p3

    move v9, v14

    goto/16 :goto_228

    :cond_43
    :try_start_43
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_47} :catch_22d
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_47} :catch_22d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_47} :catch_22d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_22d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_43 .. :try_end_47} :catch_22d

    const-string/jumbo v14, "tag"

    const-string/jumbo v5, "pkg"

    if-eqz v13, :cond_df

    .line 3065
    add-int/lit8 v7, v7, 0x1

    .line 3068
    :try_start_51
    invoke-interface {v6, v15, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3069
    const-string v11, "cl"

    invoke-interface {v6, v15, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3071
    invoke-direct {v1, v5, v11, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3072
    if-nez v5, :cond_63

    .line 3073
    goto/16 :goto_db

    .line 3076
    :cond_63
    invoke-direct {v1, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v13

    .line 3077
    if-gez v13, :cond_6b

    .line 3078
    goto/16 :goto_db

    .line 3081
    :cond_6b
    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v5, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    invoke-direct {v1, v12, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 3084
    if-nez v5, :cond_77

    .line 3085
    goto :goto_db

    .line 3088
    :cond_77
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-direct {v11, v13, v12, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3089
    invoke-direct {v1, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v12

    .line 3091
    if-nez v12, :cond_a6

    iget-boolean v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v13, :cond_a6

    .line 3093
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v12, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3094
    new-instance v13, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v13}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3095
    iget-object v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v15, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v15, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3096
    iget-object v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v5, v13, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 3097
    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 3098
    iput-object v11, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3099
    iget-object v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3102
    :cond_a6
    const/4 v13, 0x0

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3103
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b8

    .line 3104
    const/16 v13, 0x10

    invoke-static {v14, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    goto :goto_b9

    :cond_b8
    move v13, v7

    .line 3105
    :goto_b9
    iput v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 3107
    const-string v13, "info_tag"

    const/4 v14, 0x0

    invoke-interface {v6, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 3108
    iget-object v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_da

    iget-boolean v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez v13, :cond_da

    .line 3109
    iget-object v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-direct {v1, v11, v5, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 3111
    if-eqz v5, :cond_da

    .line 3112
    iput-object v5, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3115
    :cond_da
    nop

    .line 3201
    :goto_db
    move-object/from16 v5, p3

    goto/16 :goto_228

    .line 3115
    :cond_df
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_e3
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_e3} :catch_22d
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_e3} :catch_22d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_e3} :catch_22d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_e3} :catch_22d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_51 .. :try_end_e3} :catch_22d

    const-string v13, "id"

    if-eqz v12, :cond_134

    .line 3116
    add-int/lit8 v8, v8, 0x1

    .line 3117
    :try_start_e9
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3120
    invoke-interface {v6, v12, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3122
    invoke-direct {v1, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v12

    .line 3123
    if-gez v12, :cond_fc

    .line 3124
    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 3127
    :cond_fc
    iget-boolean v15, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v15, :cond_104

    iget-boolean v15, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v15, :cond_130

    .line 3130
    :cond_104
    const/4 v15, 0x0

    invoke-interface {v6, v15, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x10

    invoke-static {v13, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 3133
    const/4 v15, 0x0

    invoke-interface {v6, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3134
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_121

    .line 3135
    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    goto :goto_122

    :cond_121
    move v14, v8

    .line 3137
    :goto_122
    iput v14, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 3138
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v14, v12, v13, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v14, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3139
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3141
    :cond_130
    move-object/from16 v5, p3

    goto/16 :goto_228

    :cond_134
    const-string v5, "b"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15b

    .line 3142
    const-string/jumbo v5, "packageName"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3143
    invoke-direct {v1, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v11

    .line 3144
    if-ltz v11, :cond_157

    .line 3145
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 3146
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v11, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3148
    :cond_157
    move-object/from16 v5, p3

    goto/16 :goto_228

    :cond_15b
    const-string v5, "g"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_223

    .line 3149
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v11, 0x0

    invoke-direct {v5, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3150
    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v11, 0x10

    invoke-static {v12, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 3152
    iget v11, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    invoke-direct {v1, v2, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setMinAppWidgetIdLocked(II)V

    .line 3155
    const-string/jumbo v11, "rid"

    const/4 v12, 0x0

    invoke-interface {v6, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3156
    if-nez v11, :cond_188

    const/4 v14, 0x0

    goto :goto_18e

    .line 3157
    :cond_188
    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    :goto_18e
    iput v14, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 3159
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 3160
    const-string v12, "min_width"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3161
    if-eqz v12, :cond_1a9

    .line 3162
    const-string v13, "appWidgetMinWidth"

    .line 3163
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 3162
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3165
    :cond_1a9
    const-string v12, "min_height"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3166
    if-eqz v12, :cond_1bd

    .line 3167
    const-string v13, "appWidgetMinHeight"

    .line 3168
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 3167
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3170
    :cond_1bd
    const-string v12, "max_width"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3171
    if-eqz v12, :cond_1d1

    .line 3172
    const-string v13, "appWidgetMaxWidth"

    .line 3173
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 3172
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3175
    :cond_1d1
    const-string v12, "max_height"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3176
    if-eqz v12, :cond_1e5

    .line 3177
    const-string v13, "appWidgetMaxHeight"

    .line 3178
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 3177
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3180
    :cond_1e5
    const-string v12, "host_category"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3181
    if-eqz v12, :cond_1f9

    .line 3182
    const-string v13, "appWidgetCategory"

    .line 3183
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 3182
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3185
    :cond_1f9
    iput-object v11, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 3187
    const/4 v11, 0x0

    invoke-interface {v6, v11, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 3189
    invoke-interface {v6, v11, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3190
    if-eqz v13, :cond_217

    .line 3191
    invoke-interface {v6, v11, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3190
    const/16 v13, 0x10

    invoke-static {v11, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    goto :goto_218

    .line 3191
    :cond_217
    const/4 v11, -0x1

    .line 3196
    :goto_218
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    invoke-direct {v13, v1, v5, v12, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V

    .line 3198
    move-object/from16 v5, p3

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_222
    .catch Ljava/lang/NullPointerException; {:try_start_e9 .. :try_end_222} :catch_22d
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_222} :catch_22d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e9 .. :try_end_222} :catch_22d
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_222} :catch_22d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e9 .. :try_end_222} :catch_22d

    goto :goto_228

    .line 3148
    :cond_223
    move-object/from16 v5, p3

    goto :goto_228

    .line 3055
    :cond_226
    move-object/from16 v5, p3

    .line 3201
    :goto_228
    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    .line 3209
    nop

    .line 3211
    return v9

    .line 3202
    :catch_22d
    move-exception v0

    move-object v1, v0

    .line 3207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    const/4 v1, -0x1

    return v1
.end method

.method private registerBroadcastReceiver()V
    .registers 13

    .line 287
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v0, "package"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 299
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 309
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 315
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 320
    return-void
.end method

.method private registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 10

    .line 2355
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_58

    .line 2359
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 2360
    :goto_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2361
    const-string v3, "appWidgetIds"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2362
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2365
    :try_start_25
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2366
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    .line 2365
    invoke-static {p2, v1, v2, v5, v6}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_53

    .line 2368
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2369
    nop

    .line 2370
    if-nez v0, :cond_58

    .line 2373
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    sget v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-long v0, p2

    .line 2374
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 2375
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;JLandroid/app/PendingIntent;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_58

    .line 2368
    :catchall_53
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2381
    :cond_58
    :goto_58
    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_7

    .line 325
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    .line 327
    :cond_7
    return-void
.end method

.method private reloadWidgetsMaskedState(I)V
    .registers 14

    .line 495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 497
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 499
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v4

    .line 500
    :goto_16
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v2

    .line 501
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 502
    move v6, v4

    :goto_21
    if-ge v6, v5, :cond_72

    .line 503
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 504
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    .line 505
    if-eq v8, p1, :cond_32

    .line 506
    goto :goto_6f

    .line 509
    :cond_32
    invoke-virtual {v7, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByLockedProfileLocked(Z)Z

    move-result v8

    .line 510
    invoke-virtual {v7, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByQuietProfileLocked(Z)Z

    move-result v9
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_77

    or-int/2addr v8, v9

    .line 514
    :try_start_3b
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 515
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v11

    .line 514
    invoke-interface {v9, v10, v11}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v9
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_4d} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4d} :catch_4e
    .catchall {:try_start_3b .. :try_end_4d} :catchall_77

    .line 519
    goto :goto_52

    .line 521
    :catch_4e
    move-exception v9

    goto :goto_58

    .line 516
    :catch_50
    move-exception v9

    .line 518
    move v9, v4

    .line 520
    :goto_52
    :try_start_52
    invoke-virtual {v7, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v9
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_56} :catch_4e
    .catchall {:try_start_52 .. :try_end_56} :catchall_77

    or-int/2addr v8, v9

    .line 523
    goto :goto_5f

    .line 522
    :goto_58
    :try_start_58
    const-string v10, "AppWidgetServiceImpl"

    const-string v11, "Failed to query application info"

    invoke-static {v10, v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    :goto_5f
    if-eqz v8, :cond_6f

    .line 525
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 526
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_6f

    .line 528
    :cond_6c
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_77

    .line 502
    :cond_6f
    :goto_6f
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 533
    :cond_72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    nop

    .line 535
    return-void

    .line 533
    :catchall_77
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8

    .line 3446
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v0

    .line 3451
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3452
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_2d

    .line 3453
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3454
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3455
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2a

    .line 3456
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3457
    move v0, v2

    .line 3452
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3461
    :cond_2d
    return v0
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8

    .line 3431
    nop

    .line 3433
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3434
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_2f

    .line 3435
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3436
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3437
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2c

    .line 3438
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3439
    move v2, v1

    .line 3434
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3442
    :cond_2f
    return v2
.end method

.method private removeWidgetsForPackageLocked(Ljava/lang/String;II)V
    .registers 8

    .line 3419
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3420
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_33

    .line 3421
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3422
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3423
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_30

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 3424
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 3425
    invoke-direct {p0, v2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 3420
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3428
    :cond_33
    return-void
.end method

.method private resolveHostUidLocked(Ljava/lang/String;I)V
    .registers 8

    .line 680
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 681
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_59

    .line 682
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 683
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_56

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 684
    sget-boolean p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz p1, :cond_46

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "host "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resolved to uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppWidgetServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_46
    new-instance p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object p1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 688
    return-void

    .line 681
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 691
    :cond_59
    return-void
.end method

.method private saveGroupStateAsync(I)V
    .registers 4

    .line 1926
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1927
    return-void
.end method

.method private saveStateLocked(I)V
    .registers 8

    .line 2928
    const-string v0, "AppWidgetServiceImpl"

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    .line 2930
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object p1

    .line 2932
    array-length v1, p1

    .line 2933
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_44

    .line 2934
    aget v3, p1, v2

    .line 2936
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v4

    .line 2939
    :try_start_15
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 2940
    invoke-direct {p0, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2941
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2b

    .line 2943
    :cond_23
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2944
    const-string v3, "Failed to save state, restoring backup."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2b} :catch_2c

    .line 2948
    :goto_2b
    goto :goto_41

    .line 2946
    :catch_2c
    move-exception v3

    .line 2947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2950
    :cond_44
    return-void
.end method

.method private scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .registers 7

    .line 1955
    if-eqz p2, :cond_56

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    goto :goto_56

    .line 1960
    :cond_6
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 1961
    if-eqz p1, :cond_13

    .line 1962
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1964
    :cond_13
    if-eqz p1, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v2, :cond_30

    goto :goto_55

    .line 1970
    :cond_30
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1971
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1972
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1973
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1974
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1975
    iput p2, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1977
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1979
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1980
    return-void

    .line 1967
    :cond_55
    :goto_55
    return-void

    .line 1958
    :cond_56
    :goto_56
    return-void
.end method

.method private scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .registers 10

    .line 2106
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object p1

    .line 2108
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2109
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_51

    .line 2110
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2112
    nop

    .line 2113
    array-length v3, p1

    .line 2114
    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    if-ge v5, v3, :cond_2c

    .line 2115
    aget v6, p1, v5

    .line 2116
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-ne v7, v6, :cond_29

    .line 2117
    nop

    .line 2118
    move v4, v1

    goto :goto_2c

    .line 2114
    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 2122
    :cond_2c
    :goto_2c
    if-nez v4, :cond_2f

    .line 2123
    goto :goto_4e

    .line 2126
    :cond_2f
    if-eqz v2, :cond_4e

    iget-boolean v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v3, :cond_4e

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v3, :cond_3a

    .line 2127
    goto :goto_4e

    .line 2130
    :cond_3a
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 2131
    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2132
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2134
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2136
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2109
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 2138
    :cond_51
    return-void
.end method

.method private scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6

    .line 2069
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2070
    if-eqz p1, :cond_13

    .line 2072
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    .line 2073
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 2075
    :cond_13
    if-eqz p1, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v2, :cond_2c

    goto :goto_55

    .line 2080
    :cond_2c
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2081
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2082
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2083
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2084
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2085
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2087
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2089
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2090
    return-void

    .line 2077
    :cond_55
    :goto_55
    return-void
.end method

.method private scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .registers 7

    .line 2034
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2035
    if-eqz p1, :cond_e

    .line 2036
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2038
    :cond_e
    if-eqz p1, :cond_54

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_54

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v2, :cond_27

    goto :goto_54

    .line 2043
    :cond_27
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2044
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2045
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2046
    if-eqz p2, :cond_3c

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    goto :goto_3d

    :cond_3c
    const/4 p2, 0x0

    :goto_3d
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2047
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2048
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2050
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2052
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2053
    return-void

    .line 2040
    :cond_54
    :goto_54
    return-void
.end method

.method private sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6

    .line 3485
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3487
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 3489
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3490
    nop

    .line 3491
    return-void

    .line 3489
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5

    .line 2334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2335
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2336
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2337
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2338
    return-void
.end method

.method private sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4

    .line 2341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2342
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2343
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2344
    return-void
.end method

.method private sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4

    .line 2321
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2322
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2323
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2324
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 5

    .line 2327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2328
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2329
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2330
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2331
    return-void
.end method

.method private static serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2465
    const-string v0, "g"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2466
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2467
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rid"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2468
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2469
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_3c

    .line 2470
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "p"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2472
    :cond_3c
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_a6

    .line 2473
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v3, "appWidgetMinWidth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2474
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v4, "appWidgetMinHeight"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2475
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxWidth"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2476
    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v6, "appWidgetMaxHeight"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2477
    const/4 v6, 0x0

    if-lez v2, :cond_64

    goto :goto_65

    :cond_64
    move v2, v6

    :goto_65
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "min_width"

    invoke-interface {p0, v1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2478
    if-lez v3, :cond_71

    goto :goto_72

    :cond_71
    move v3, v6

    :goto_72
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "min_height"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2479
    if-lez v4, :cond_7e

    goto :goto_7f

    :cond_7e
    move v4, v6

    :goto_7f
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "max_width"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2480
    if-lez v5, :cond_8b

    goto :goto_8c

    :cond_8b
    move v5, v6

    :goto_8c
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "max_height"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2481
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetCategory"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "host_category"

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2484
    :cond_a6
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2485
    return-void
.end method

.method private static serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2457
    const-string v0, "h"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2458
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "pkg"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2459
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2460
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "tag"

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2461
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    return-void
.end method

.method private static serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2446
    const-string/jumbo v0, "p"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2447
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2448
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cl"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2449
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tag"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2450
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 2451
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    const-string v2, "info_tag"

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2453
    :cond_3d
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2454
    return-void
.end method

.method private setMinAppWidgetIdLocked(II)V
    .registers 4

    .line 1778
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    .line 1779
    if-ge v0, p2, :cond_b

    .line 1780
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    :cond_b
    return-void
.end method

.method private tagProvidersAndHosts()V
    .registers 5

    .line 2953
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2954
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_17

    .line 2955
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2956
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 2954
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2959
    :cond_17
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2960
    nop

    :goto_1e
    if-ge v1, v0, :cond_2d

    .line 2961
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2962
    iput v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 2960
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2964
    :cond_2d
    return-void
.end method

.method private unbindService(Landroid/content/ServiceConnection;)V
    .registers 5

    .line 3506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3508
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 3510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3511
    nop

    .line 3512
    return-void

    .line 3510
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 6

    .line 670
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 671
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 672
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 673
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 674
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 671
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 677
    :cond_21
    return-void
.end method

.method private updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .registers 10

    .line 1744
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1746
    if-eqz p2, :cond_31

    array-length v1, p2

    if-nez v1, :cond_a

    goto :goto_31

    .line 1751
    :cond_a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1752
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1753
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1755
    array-length v0, p2

    .line 1756
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_2c

    .line 1757
    aget v3, p2, v2

    .line 1761
    nop

    .line 1762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1761
    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v3

    .line 1764
    if-eqz v3, :cond_29

    .line 1765
    invoke-direct {p0, v3, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1756
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1768
    :cond_2c
    monitor-exit v1

    .line 1769
    return-void

    .line 1768
    :catchall_2e
    move-exception p1

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2e

    throw p1

    .line 1747
    :cond_31
    :goto_31
    return-void
.end method

.method private updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    .registers 5

    .line 1931
    if-eqz p1, :cond_6b

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_6b

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v0, :cond_6b

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v0, :cond_6b

    .line 1934
    if-eqz p3, :cond_1e

    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_1e

    .line 1936
    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p3, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_20

    .line 1939
    :cond_1e
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1942
    :goto_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_64

    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz p2, :cond_64

    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1944
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result p2

    iget p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-gt p2, p3, :cond_3b

    goto :goto_64

    .line 1945
    :cond_3b
    const/4 p3, 0x0

    iput-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1946
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", max: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1950
    :cond_64
    :goto_64
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 1952
    :cond_6b
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;",
            ">;)Z"
        }
    .end annotation

    .line 3341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 3343
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3344
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3345
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3346
    invoke-direct {v0, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 3349
    if-nez v5, :cond_1f

    const/4 v7, 0x0

    goto :goto_23

    :cond_1f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 3350
    :goto_23
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_25
    const/4 v10, 0x1

    if-ge v8, v7, :cond_a1

    .line 3351
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 3352
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3354
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x40000

    and-int/2addr v13, v14

    if-eqz v13, :cond_3a

    .line 3355
    goto :goto_9e

    .line 3358
    :cond_3a
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9e

    .line 3359
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v15, Landroid/content/ComponentName;

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v13, v14, v15, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3362
    invoke-direct {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v12

    .line 3363
    if-nez v12, :cond_66

    .line 3364
    invoke-direct {v0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 3365
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3366
    move v9, v10

    goto :goto_9e

    .line 3369
    :cond_66
    invoke-direct {v0, v13, v11, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v9

    .line 3370
    if-eqz v9, :cond_9d

    .line 3371
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3373
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v9, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3375
    iget-object v9, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3376
    if-lez v9, :cond_9d

    .line 3377
    iget-object v11, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v11

    .line 3381
    invoke-direct {v0, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3382
    invoke-direct {v0, v12, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 3385
    const/4 v13, 0x0

    :goto_88
    if-ge v13, v9, :cond_9a

    .line 3386
    iget-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3387
    iput-object v6, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 3388
    invoke-direct {v0, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3385
    add-int/lit8 v13, v13, 0x1

    goto :goto_88

    .line 3391
    :cond_9a
    invoke-direct {v0, v12, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 3394
    :cond_9d
    move v9, v10

    .line 3350
    :cond_9e
    :goto_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 3400
    :cond_a1
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3401
    sub-int/2addr v5, v10

    :goto_a8
    if-ltz v5, :cond_dc

    .line 3402
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3403
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d9

    .line 3404
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    if-ne v7, v2, :cond_d9

    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3405
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d9

    .line 3406
    if-eqz v3, :cond_d5

    .line 3407
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3409
    :cond_d5
    invoke-direct {v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3410
    move v9, v10

    .line 3401
    :cond_d9
    add-int/lit8 v5, v5, -0x1

    goto :goto_a8

    .line 3414
    :cond_dc
    return v9
.end method

.method private updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V
    .registers 9

    .line 542
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 543
    if-nez p1, :cond_9

    .line 544
    return-void

    .line 546
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 547
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 548
    :try_start_15
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 549
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_52

    .line 550
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 551
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    .line 552
    if-ne v4, p3, :cond_4f

    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 553
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 554
    goto :goto_4f

    .line 556
    :cond_3b
    invoke-virtual {v3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 557
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 558
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_4f

    .line 560
    :cond_4c
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 549
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 564
    :cond_52
    monitor-exit p1

    .line 565
    return-void

    .line 564
    :catchall_54
    move-exception p2

    monitor-exit p1
    :try_end_56
    .catchall {:try_start_15 .. :try_end_56} :catchall_54

    throw p2
.end method

.method private writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z
    .registers 12

    .line 2984
    const-string v0, "b"

    const-string v1, "gs"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2985
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2986
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2987
    invoke-interface {v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2988
    const-string/jumbo v4, "version"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2990
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2991
    move v6, v2

    :goto_30
    if-ge v6, v4, :cond_4d

    .line 2992
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2994
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_41

    .line 2995
    goto :goto_4a

    .line 2997
    :cond_41
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 2998
    invoke-static {v3, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2991
    :cond_4a
    :goto_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 3002
    :cond_4d
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3003
    move v6, v2

    :goto_54
    if-ge v6, v4, :cond_6b

    .line 3004
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3006
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_65

    .line 3007
    goto :goto_68

    .line 3009
    :cond_65
    invoke-static {v3, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3003
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 3012
    :cond_6b
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3013
    move v6, v2

    :goto_72
    if-ge v6, v4, :cond_8b

    .line 3014
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3016
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_85

    .line 3017
    goto :goto_88

    .line 3019
    :cond_85
    invoke-static {v3, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3013
    :goto_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 3022
    :cond_8b
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3023
    :goto_91
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 3024
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 3026
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, p2, :cond_a8

    .line 3027
    goto :goto_91

    .line 3029
    :cond_a8
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3030
    const-string/jumbo v7, "packageName"

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3031
    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3032
    goto :goto_91

    .line 3034
    :cond_b9
    invoke-interface {v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3035
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_bf} :catch_c0

    .line 3036
    return p1

    .line 3037
    :catch_c0
    move-exception p1

    .line 3038
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppWidgetServiceImpl"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    return v2
.end method


# virtual methods
.method addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 3

    .line 2838
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2840
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2841
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 8

    .line 902
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 904
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allocateAppWidgetId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_26
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 914
    const-string p2, "AppWidgetServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot host app widgets"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 p1, 0x0

    monitor-exit v1

    return p1

    .line 918
    :cond_4c
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 920
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_5d

    .line 921
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    :cond_5d
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result v2

    .line 928
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 929
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    .line 931
    new-instance p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v3, 0x0

    invoke-direct {p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 932
    iput v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 933
    iput-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 935
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 938
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 940
    sget-boolean p2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz p2, :cond_a7

    .line 941
    const-string p2, "AppWidgetServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocated widget id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for host "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_a7
    monitor-exit v1

    return v2

    .line 946
    :catchall_a9
    move-exception p1

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_26 .. :try_end_ab} :catchall_a9

    throw p1
.end method

.method public bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 12

    .line 1090
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1092
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidgetId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1100
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 1101
    return v2

    .line 1106
    :cond_2d
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 1107
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1106
    invoke-virtual {v1, v3, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1108
    return v2

    .line 1111
    :cond_3a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1112
    :try_start_3d
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1115
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1117
    monitor-exit v1

    return v2

    .line 1122
    :cond_4a
    nop

    .line 1123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1122
    invoke-direct {p0, p2, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    .line 1125
    if-nez p1, :cond_6d

    .line 1126
    const-string p1, "AppWidgetServiceImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad widget id "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    monitor-exit v1

    return v2

    .line 1130
    :cond_6d
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_95

    .line 1131
    const-string p3, "AppWidgetServiceImpl"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Widget id "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already bound to: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    monitor-exit v1

    return v2

    .line 1136
    :cond_95
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v3

    .line 1138
    if-gez v3, :cond_c3

    .line 1139
    const-string p1, "AppWidgetServiceImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Package "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not installed  for profile "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    monitor-exit v1

    return v2

    .line 1146
    :cond_c3
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v5, 0x0

    invoke-direct {v4, v3, p4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1147
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1149
    if-nez v3, :cond_ef

    .line 1150
    const-string p1, "AppWidgetServiceImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "No widget provider "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " for profile "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    monitor-exit v1

    return v2

    .line 1155
    :cond_ef
    iget-boolean p3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz p3, :cond_10b

    .line 1156
    const-string p1, "AppWidgetServiceImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t bind to a 3rd party provider in safe mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    monitor-exit v1

    return v2

    .line 1161
    :cond_10b
    iput-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1162
    if-eqz p5, :cond_114

    invoke-static {p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_119

    :cond_114
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :goto_119
    iput-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 1165
    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string p4, "appWidgetCategory"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_12d

    .line 1166
    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string p5, "appWidgetCategory"

    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1170
    :cond_12d
    iget-object p3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1174
    iget-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1175
    if-ne p1, p4, :cond_140

    .line 1177
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1184
    :cond_140
    new-array p1, p4, [I

    aput p2, p1, v2

    invoke-direct {p0, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1187
    iget-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1189
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1191
    sget-boolean p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz p1, :cond_177

    .line 1192
    const-string p1, "AppWidgetServiceImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Bound widget "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to provider "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_177
    monitor-exit v1

    .line 1196
    return p4

    .line 1194
    :catchall_179
    move-exception p1

    monitor-exit v1
    :try_end_17b
    .catchall {:try_start_3d .. :try_end_17b} :catchall_179

    throw p1
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z
    .registers 24

    .line 1257
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v11, p3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1258
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_24

    .line 1259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindRemoteViewsService() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppWidgetServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_24
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1263
    :try_start_27
    invoke-direct {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1267
    nop

    .line 1268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1267
    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v13

    .line 1270
    if-eqz v13, :cond_d8

    .line 1275
    iget-object v2, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_c1

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1284
    iget-object v3, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1285
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1286
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 1293
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v4, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1294
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    .line 1293
    invoke-virtual {v3, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V

    .line 1299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14
    :try_end_62
    .catchall {:try_start_27 .. :try_end_62} :catchall_e0

    .line 1303
    :try_start_62
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1305
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1306
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1307
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v10

    .line 1303
    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a8

    .line 1312
    iget-object v2, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 1313
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v11}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1312
    invoke-direct {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_a2} :catch_b1
    .catchall {:try_start_62 .. :try_end_a2} :catchall_ac

    .line 1314
    const/4 v0, 0x1

    .line 1319
    :try_start_a3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v12

    .line 1314
    return v0

    .line 1319
    :cond_a8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b5

    :catchall_ac
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1316
    :catch_b1
    move-exception v0

    .line 1319
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1320
    :goto_b5
    nop

    .line 1321
    monitor-exit v12

    .line 1324
    const/4 v0, 0x0

    return v0

    .line 1287
    :cond_b9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The taget service not in the same package as the widget provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider for widget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad widget id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :catchall_e0
    move-exception v0

    monitor-exit v12
    :try_end_e2
    .catchall {:try_start_a3 .. :try_end_e2} :catchall_e0

    throw v0
.end method

.method clearWidgetsLocked()V
    .registers 2

    .line 2904
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2906
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetsClearedLocked()V

    .line 2907
    return-void
.end method

.method public createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .registers 12

    .line 1039
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1041
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAppWidgetConfigIntentSender() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1048
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1049
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1053
    nop

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1053
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    .line 1056
    if-eqz p1, :cond_8c

    .line 1060
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1061
    if-eqz p1, :cond_75

    .line 1066
    and-int/lit16 p3, p3, -0xc4

    .line 1068
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    const-string v0, "appWidgetId"

    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1070
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1071
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2
    :try_end_54
    .catchall {:try_start_26 .. :try_end_54} :catchall_a3

    .line 1076
    :try_start_54
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    .line 1079
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result p1

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1076
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1080
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_70

    .line 1082
    :try_start_6b
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    .line 1076
    return-object p1

    .line 1082
    :catchall_70
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1062
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Widget not bound "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1057
    :cond_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad widget id "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1084
    :catchall_a3
    move-exception p1

    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_6b .. :try_end_a5} :catchall_a3

    throw p1
.end method

.method public deleteAllHosts()V
    .registers 9

    .line 1362
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1364
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAllHosts() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1369
    :try_start_21
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1371
    const/4 v2, 0x0

    .line 1373
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1374
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_2d
    if-ltz v3, :cond_65

    .line 1375
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1378
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-ne v6, v7, :cond_62

    .line 1379
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1380
    nop

    .line 1382
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v2, :cond_61

    .line 1383
    const-string v2, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted host "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_61
    move v2, v4

    :cond_62
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    .line 1388
    :cond_65
    if-eqz v2, :cond_6a

    .line 1389
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1391
    :cond_6a
    monitor-exit v1

    .line 1392
    return-void

    .line 1391
    :catchall_6c
    move-exception v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_21 .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public deleteAppWidgetId(Ljava/lang/String;I)V
    .registers 7

    .line 951
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 953
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppWidgetId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 961
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 965
    nop

    .line 966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 965
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    .line 968
    if-nez p1, :cond_36

    .line 969
    monitor-exit v1

    return-void

    .line 972
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 974
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 976
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_62

    .line 977
    const-string v0, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted widget id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for host "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_62
    monitor-exit v1

    .line 981
    return-void

    .line 980
    :catchall_64
    move-exception p1

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_64

    throw p1
.end method

.method public deleteHost(Ljava/lang/String;I)V
    .registers 7

    .line 1329
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1331
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteHost() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1339
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1343
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1344
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    .line 1346
    if-nez p1, :cond_3a

    .line 1347
    monitor-exit v1

    return-void

    .line 1350
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1352
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1354
    sget-boolean p2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz p2, :cond_5c

    .line 1355
    const-string p2, "AppWidgetServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted host "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_5c
    monitor-exit v1

    .line 1358
    return-void

    .line 1357
    :catchall_5e
    move-exception p1

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_26 .. :try_end_60} :catchall_5e

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 749
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 751
    :cond_b
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_e
    array-length v1, p3

    if-lez v1, :cond_20

    const-string v1, "--proto"

    const/4 v2, 0x0

    aget-object p3, p3, v2

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_23

    .line 755
    :cond_20
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 757
    :goto_23
    monitor-exit v0

    .line 758
    return-void

    .line 757
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw p1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 6

    .line 1201
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1203
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetIds() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1211
    :try_start_2a
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1215
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1216
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object p1

    .line 1218
    if-eqz p1, :cond_45

    .line 1219
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1222
    :cond_45
    const/4 p1, 0x0

    new-array p1, p1, [I

    monitor-exit v1

    return-object p1

    .line 1223
    :catchall_4a
    move-exception p1

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    .registers 6

    .line 1228
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1230
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetIdsForHost() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1237
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1238
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1242
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1243
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    .line 1245
    if-eqz p1, :cond_40

    .line 1246
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1249
    :cond_40
    const/4 p1, 0x0

    new-array p1, p1, [I

    monitor-exit v1

    return-object p1

    .line 1250
    :catchall_45
    move-exception p1

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 6

    .line 1396
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1398
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetInfo() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1405
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1406
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1410
    nop

    .line 1411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1410
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    .line 1413
    if-eqz p1, :cond_48

    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p2, :cond_48

    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez p2, :cond_48

    .line 1414
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1417
    :cond_48
    const/4 p1, 0x0

    monitor-exit v1

    return-object p1

    .line 1418
    :catchall_4b
    move-exception p1

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_4b

    throw p1
.end method

.method public getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6

    .line 1483
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1485
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetOptions() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1492
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1493
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1497
    nop

    .line 1498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1497
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    .line 1500
    if-eqz p1, :cond_40

    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz p2, :cond_40

    .line 1501
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1504
    :cond_40
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v1

    return-object p1

    .line 1505
    :catchall_44
    move-exception p1

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .registers 6

    .line 1423
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1425
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetViews() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1432
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1433
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1437
    nop

    .line 1438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1437
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    .line 1440
    if-eqz p1, :cond_3e

    .line 1441
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1444
    :cond_3e
    const/4 p1, 0x0

    monitor-exit v1

    return-object p1

    .line 1445
    :catchall_41
    move-exception p1

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1694
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1696
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstalledProvidersForProfiles() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1702
    const/4 p1, 0x0

    return-object p1

    .line 1705
    :cond_28
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1706
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1707
    const-string p1, "AppWidgetServiceImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instant uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " cannot access widget providers"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1712
    :cond_58
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1717
    const/4 v3, 0x0

    move v4, v3

    :goto_68
    if-ge v4, v2, :cond_b8

    .line 1718
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1719
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1723
    if-eqz p3, :cond_87

    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 1724
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    goto :goto_87

    :cond_85
    move v7, v3

    goto :goto_88

    :cond_87
    :goto_87
    const/4 v7, 0x1

    .line 1725
    :goto_88
    iget-boolean v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v8, :cond_b5

    iget v8, v6, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v8, p1

    if-eqz v8, :cond_b5

    if-nez v7, :cond_94

    .line 1726
    goto :goto_b5

    .line 1730
    :cond_94
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1731
    if-ne v7, p2, :cond_b5

    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 1733
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1732
    invoke-virtual {v8, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 1734
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    :cond_b5
    :goto_b5
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 1738
    :cond_b8
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p1

    .line 1739
    :catchall_bf
    move-exception p1

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_2b .. :try_end_c1} :catchall_bf

    throw p1
.end method

.method public getWidgetParticipants(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2489
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 4

    .line 2494
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method handleUserUnlocked(I)V
    .registers 12

    .line 2701
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2702
    return-void

    .line 2704
    :cond_7
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer unlocked - exiting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppWidgetServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    return-void

    .line 2708
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2709
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2710
    :try_start_32
    const-string v3, "appwidget ensure"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2711
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2712
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2713
    const-string v3, "appwidget reload"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2714
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 2715
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2717
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2718
    const/4 v6, 0x0

    :goto_57
    if-ge v6, v3, :cond_a1

    .line 2719
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2722
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-eq v8, p1, :cond_68

    .line 2723
    goto :goto_9e

    .line 2726
    :cond_68
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9e

    .line 2727
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appwidget init "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2728
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2727
    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2729
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2730
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v8

    .line 2731
    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2732
    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2733
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2718
    :cond_9e
    :goto_9e
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 2736
    :cond_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_32 .. :try_end_a2} :catchall_cb

    .line 2737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing of handleUserUnlocked u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " took "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2738
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2737
    const-string v0, "AppWidgetServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    return-void

    .line 2736
    :catchall_cb
    move-exception p1

    :try_start_cc
    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw p1
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .registers 5

    .line 985
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasBindAppWidgetPermission() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_1e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 994
    :try_start_26
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 996
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 997
    if-gez v1, :cond_32

    .line 998
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 1001
    :cond_32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1002
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1003
    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .registers 5

    .line 2915
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_21

    .line 2918
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2919
    :try_start_b
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 2920
    if-eqz p2, :cond_1b

    .line 2921
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2923
    :cond_1b
    monitor-exit v0

    .line 2924
    const/4 p1, 0x0

    return p1

    .line 2923
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw p1

    .line 2916
    :cond_21
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Only the system process can call this"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRequestPinAppWidgetSupported()Z
    .registers 5

    .line 1649
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1650
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1651
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instant uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " query information about app widgets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1655
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_40

    .line 1656
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 1657
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutServiceInternal;->isRequestPinItemSupported(II)Z

    move-result v0

    .line 1656
    return v0

    .line 1655
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public synthetic lambda$cancelBroadcastsLocked$0$AppWidgetServiceImpl(Landroid/app/PendingIntent;)V
    .registers 3

    .line 1854
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1855
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    .line 1856
    return-void
.end method

.method public synthetic lambda$registerForBroadcastsLocked$1$AppWidgetServiceImpl(JLandroid/app/PendingIntent;)V
    .registers 11

    .line 2376
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v2, v1, p1

    .line 2376
    const/4 v1, 0x2

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    .registers 9

    .line 1531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1533
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAppWidgetViewDataChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1540
    if-eqz p2, :cond_4c

    array-length v1, p2

    if-nez v1, :cond_2a

    goto :goto_4c

    .line 1544
    :cond_2a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1545
    :try_start_2d
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1547
    array-length v0, p2

    .line 1548
    const/4 v2, 0x0

    :goto_32
    if-ge v2, v0, :cond_47

    .line 1549
    aget v3, p2, v2

    .line 1553
    nop

    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1553
    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v3

    .line 1556
    if-eqz v3, :cond_44

    .line 1557
    invoke-direct {p0, v3, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V

    .line 1548
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 1560
    :cond_47
    monitor-exit v1

    .line 1561
    return-void

    .line 1560
    :catchall_49
    move-exception p1

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_49

    throw p1

    .line 1541
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3516
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    .line 3520
    if-eq v0, p1, :cond_73

    .line 3521
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3522
    nop

    .line 3524
    :try_start_c
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3525
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3526
    const/4 v4, 0x0

    move v5, v4

    :goto_19
    if-ge v5, v3, :cond_37

    .line 3527
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3528
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    if-ne v7, p1, :cond_34

    .line 3529
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3526
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 3533
    :cond_37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 3534
    move v5, v4

    move v6, v5

    :goto_3d
    if-ge v5, v3, :cond_51

    .line 3535
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3536
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3537
    const/4 v8, 0x0

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v7

    or-int/2addr v6, v7

    .line 3534
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 3542
    :cond_51
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p2

    .line 3543
    nop

    :goto_56
    if-ge v4, p2, :cond_64

    .line 3544
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetsForPackageLocked(Ljava/lang/String;II)V

    .line 3543
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 3548
    :cond_64
    if-nez v6, :cond_68

    if-lez p2, :cond_6e

    .line 3549
    :cond_68
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 3550
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 3552
    :cond_6e
    monitor-exit v1

    goto :goto_73

    :catchall_70
    move-exception p1

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_c .. :try_end_72} :catchall_70

    throw p1

    .line 3554
    :cond_73
    :goto_73
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 254
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 255
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 256
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 257
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 258
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 259
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 260
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 261
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 262
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 264
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 265
    new-instance v0, Lcom/android/server/policy/IconUtilities;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/IconUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    .line 267
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 268
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerBroadcastReceiver()V

    .line 269
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerOnCrossProfileProvidersChangedListener()V

    .line 271
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;

    invoke-direct {v2, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method onUserStopped(I)V
    .registers 10

    .line 3265
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3266
    nop

    .line 3269
    :try_start_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3270
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    const/4 v3, 0x0

    if-ltz v1, :cond_55

    .line 3271
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3273
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v5

    if-ne v5, p1, :cond_21

    move v5, v2

    goto :goto_22

    :cond_21
    move v5, v3

    .line 3274
    :goto_22
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_28

    move v6, v2

    goto :goto_29

    :cond_28
    move v6, v3

    .line 3275
    :goto_29
    if-eqz v6, :cond_34

    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    if-ne v7, p1, :cond_34

    move v3, v2

    .line 3280
    :cond_34
    if-eqz v5, :cond_52

    if-eqz v6, :cond_3a

    if-eqz v3, :cond_52

    .line 3281
    :cond_3a
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3282
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3283
    const/4 v3, 0x0

    iput-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3284
    if-eqz v6, :cond_52

    .line 3285
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3286
    iput-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3270
    :cond_52
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3292
    :cond_55
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3293
    sub-int/2addr v1, v2

    move v4, v3

    :goto_5d
    if-ltz v1, :cond_7f

    .line 3294
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3295
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v6

    if-ne v6, p1, :cond_7c

    .line 3296
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_77

    move v6, v2

    goto :goto_78

    :cond_77
    move v6, v3

    :goto_78
    or-int/2addr v4, v6

    .line 3297
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3293
    :cond_7c
    add-int/lit8 v1, v1, -0x1

    goto :goto_5d

    .line 3305
    :cond_7f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 3306
    sub-int/2addr v1, v2

    :goto_86
    if-ltz v1, :cond_a2

    .line 3307
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 3308
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_9f

    .line 3309
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 3306
    :cond_9f
    add-int/lit8 v1, v1, -0x1

    goto :goto_86

    .line 3314
    :cond_a2
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 3315
    if-ltz v1, :cond_af

    .line 3316
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3320
    :cond_af
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 3321
    if-ltz v1, :cond_bc

    .line 3322
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3327
    :cond_bc
    if-eqz v4, :cond_c1

    .line 3328
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 3330
    :cond_c1
    monitor-exit v0

    .line 3331
    return-void

    .line 3330
    :catchall_c3
    move-exception p1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_4 .. :try_end_c5} :catchall_c3

    throw p1
.end method

.method onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5

    .line 2848
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_5

    return-void

    .line 2850
    :cond_5
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 2851
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2852
    if-nez v1, :cond_20

    .line 2853
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    .line 2855
    :cond_20
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2859
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2860
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_3e

    .line 2862
    :cond_3b
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    .line 2864
    :goto_3e
    return-void
.end method

.method public partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 6

    .line 1521
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "partiallyUpdateAppWidgetIds() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_1f
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1526
    return-void
.end method

.method reloadWidgetsMaskedStateForGroup(I)V
    .registers 6

    .line 482
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 483
    return-void

    .line 485
    :cond_9
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 487
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    .line 488
    array-length v1, p1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_21

    aget v3, p1, v2

    .line 489
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 491
    :cond_21
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw p1
.end method

.method removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 3

    .line 2872
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2874
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2875
    return-void
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 12

    .line 1664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1665
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1667
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_23

    .line 1668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPinAppWidget() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_23
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1674
    :try_start_26
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1677
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object p2

    .line 1678
    const/4 v0, 0x0

    if-eqz p2, :cond_57

    iget-boolean v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v2, :cond_3b

    goto :goto_57

    .line 1681
    :cond_3b
    iget-object v3, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1682
    iget p2, v3, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_45

    .line 1683
    monitor-exit v1

    return v0

    .line 1685
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_59

    .line 1687
    const-class p2, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 1688
    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z

    move-result p1

    .line 1687
    return p1

    .line 1679
    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v1

    return v0

    .line 1685
    :catchall_59
    move-exception p1

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public restoreFinished(I)V
    .registers 3

    .line 2509
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreFinished(I)V

    .line 2510
    return-void
.end method

.method public restoreStarting(I)V
    .registers 3

    .line 2499
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreStarting(I)V

    .line 2500
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 5

    .line 2504
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2505
    return-void
.end method

.method public sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5

    .line 2347
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2348
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2349
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2350
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetOptions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2351
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2352
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .registers 6

    .line 1009
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBindAppWidgetPermission() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_1f
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1018
    :try_start_27
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 1021
    if-gez v1, :cond_32

    .line 1022
    monitor-exit v0

    return-void

    .line 1025
    :cond_32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1026
    if-eqz p3, :cond_42

    .line 1027
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1029
    :cond_42
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1032
    :goto_47
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1033
    monitor-exit v0

    .line 1034
    return-void

    .line 1033
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public setSafeMode(Z)V
    .registers 2

    .line 330
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    .line 331
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I[I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation

    .line 830
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 832
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startListening() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 839
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_27
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 842
    const-string p1, "AppWidgetServiceImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Instant package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot host app widgets"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 846
    :cond_50
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 850
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2, p3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 851
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p2

    .line 852
    iput-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 854
    sget-object p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 855
    array-length p1, p4

    .line 856
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 857
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 858
    const/4 v4, 0x0

    move v5, v4

    :goto_75
    if-ge v5, p1, :cond_95

    .line 859
    aget v6, p4, v5

    invoke-virtual {p2, v6, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 862
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    .line 863
    move v7, v4

    :goto_84
    if-ge v7, v6, :cond_92

    .line 864
    invoke-virtual {v0, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/appwidget/PendingHostUpdate;

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 858
    :cond_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 869
    :cond_95
    iput-wide v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 870
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p1

    .line 871
    :catchall_9e
    move-exception p1

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_27 .. :try_end_a0} :catchall_9e

    throw p1
.end method

.method public stopListening(Ljava/lang/String;I)V
    .registers 6

    .line 876
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 878
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopListening() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    const/4 v2, 0x0

    :try_start_28
    invoke-direct {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 890
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v2, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 891
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object p1

    .line 893
    if-eqz p1, :cond_40

    .line 894
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 895
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 897
    :cond_40
    monitor-exit v1

    .line 898
    return-void

    .line 897
    :catchall_42
    move-exception p1

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 6

    .line 1511
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppWidgetIds() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1516
    return-void
.end method

.method public updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    .line 1450
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1452
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetOptions() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1459
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1460
    :try_start_27
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1464
    nop

    .line 1465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1464
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object p1

    .line 1467
    if-nez p1, :cond_37

    .line 1468
    monitor-exit v1

    return-void

    .line 1472
    :cond_37
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1475
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1477
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1478
    monitor-exit v1

    .line 1479
    return-void

    .line 1478
    :catchall_44
    move-exception p1

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 8

    .line 1565
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1567
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetProvider() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1574
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1575
    :try_start_2b
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1579
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1580
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object p1

    .line 1582
    if-nez p1, :cond_56

    .line 1583
    const-string p1, "AppWidgetServiceImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider doesn\'t exist "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    monitor-exit v1

    return-void

    .line 1587
    :cond_56
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 1588
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1589
    const/4 v2, 0x0

    move v3, v2

    :goto_5e
    if-ge v3, v0, :cond_6c

    .line 1590
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1591
    invoke-direct {p0, v4, p2, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1589
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1593
    :cond_6c
    monitor-exit v1

    .line 1594
    return-void

    .line 1593
    :catchall_6e
    move-exception p1

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_2b .. :try_end_70} :catchall_6e

    throw p1
.end method

.method public updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 9

    .line 1598
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1599
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetProvider() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1606
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1607
    :try_start_2b
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1611
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1612
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1613
    if-eqz v3, :cond_9d

    .line 1617
    iget-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1619
    monitor-exit v1

    return-void

    .line 1622
    :cond_48
    if-nez p2, :cond_4d

    .line 1623
    const-string p1, "android.appwidget.provider"

    goto :goto_4e

    :cond_4d
    move-object p1, p2

    .line 1624
    :goto_4e
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 1625
    invoke-direct {p0, v2, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 1626
    if-eqz v2, :cond_81

    .line 1631
    iput-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1632
    iput-object p2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 1635
    iget-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1636
    const/4 p2, 0x0

    move v2, p2

    :goto_64
    if-ge v2, p1, :cond_79

    .line 1637
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1638
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1639
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1636
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1642
    :cond_79
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1643
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 1644
    monitor-exit v1

    .line 1645
    return-void

    .line 1627
    :cond_81
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " meta-data to a valid AppWidget provider"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1614
    :cond_9d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid AppWidget provider"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1644
    :catchall_b4
    move-exception p1

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_2b .. :try_end_b6} :catchall_b4

    throw p1
.end method

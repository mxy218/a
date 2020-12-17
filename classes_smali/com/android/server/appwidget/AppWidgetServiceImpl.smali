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
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 2636
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 155
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_8

    goto :goto_b

    :cond_8
    const v0, 0x1b7740

    :goto_b
    sput v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 250
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 172
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 220
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    .line 222
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 243
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 251
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 252
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 143
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"  # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"  # I
    .param p4, "x4"  # Landroid/widget/RemoteViews;
    .param p5, "x5"  # J

    .line 143
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"  # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"  # I
    .param p4, "x4"  # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "x5"  # J

    .line 143
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"  # Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"  # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # J

    .line 143
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # I

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "x0"  # Landroid/widget/RemoteViews;

    .line 143
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/appwidget/AppWidgetServiceImpl;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # I

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # I

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 2
    .param p0, "x0"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 2
    .param p0, "x0"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2
    .param p0, "x0"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # I

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Landroid/content/Intent;
    .param p2, "x2"  # I

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # I

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Landroid/content/Intent;
    .param p2, "x2"  # Landroid/os/UserHandle;

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"  # Landroid/content/Intent;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V

    return-void
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 10
    .param p1, "ri"  # Landroid/content/pm/ResolveInfo;

    .line 2257
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2258
    return v1

    .line 2261
    :cond_d
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2262
    return v1

    .line 2265
    :cond_16
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 2269
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 2270
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_7a

    .line 2274
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 2278
    .local v5, "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v5, :cond_46

    .line 2279
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v4, v6

    .line 2280
    .local v4, "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 2283
    .end local v4  # "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :cond_46
    if-eqz v5, :cond_73

    .line 2284
    iget-boolean v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v4, :cond_78

    iget-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez v4, :cond_78

    .line 2286
    iput-object v2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2287
    iput-boolean v1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 2288
    iget-object v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2289
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_78

    .line 2290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider placeholder now reified: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AppWidgetServiceImpl"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 2294
    :cond_73
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2296
    :cond_78
    :goto_78
    const/4 v1, 0x1

    return v1

    .line 2299
    .end local v5  # "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_7a
    return v1
.end method

.method private bindLoadedWidgetsLocked(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)V"
        }
    .end annotation

    .line 2796
    .local p1, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2797
    .local v0, "loadedWidgetCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3e

    .line 2798
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    .line 2799
    .local v2, "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2801
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2802
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v4, :cond_1d

    .line 2805
    goto :goto_3b

    .line 2808
    :cond_1d
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2809
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-nez v4, :cond_2a

    .line 2811
    goto :goto_3b

    .line 2814
    :cond_2a
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2815
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2816
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2797
    .end local v2  # "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v3  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2818
    .end local v1  # "i":I
    :cond_3e
    return-void
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "connection"  # Landroid/content/ServiceConnection;
    .param p3, "userHandle"  # Landroid/os/UserHandle;

    .line 3519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3521
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 3525
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3526
    nop

    .line 3527
    return-void

    .line 3525
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 5
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1858
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelBroadcastsLocked() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_1a
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2d

    .line 1862
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 1863
    .local v0, "broadcast":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$TEG8Dmf_tnBoLQ8rTg9_1sFaVu8;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1867
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 1869
    .end local v0  # "broadcast":Landroid/app/PendingIntent;
    :cond_2d
    return-void
.end method

.method private clearProvidersAndHostsTagsLocked()V
    .registers 6

    .line 2991
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2992
    .local v0, "providerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, -0x1

    if-ge v1, v0, :cond_17

    .line 2993
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2994
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 2992
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2997
    .end local v1  # "i":I
    :cond_17
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2998
    .local v1, "hostCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v1, :cond_2d

    .line 2999
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3000
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v2, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 2998
    .end local v4  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 3002
    .end local v3  # "i":I
    :cond_2d
    return-void
.end method

.method private static cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2
    .param p0, "info"  # Landroid/appwidget/AppWidgetProviderInfo;

    .line 2173
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    .line 2174
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0

    .line 2176
    :cond_d
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "bundle"  # Landroid/os/Bundle;

    .line 2183
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    .line 2184
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0

    .line 2186
    :cond_f
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "rv"  # Landroid/widget/RemoteViews;

    .line 2166
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    .line 2167
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 2169
    :cond_d
    return-object p0
.end method

.method private computeMaximumWidgetBitmapMemory()V
    .registers 6

    .line 276
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 277
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 278
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 279
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 282
    iget v3, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x6

    iget v4, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 283
    return-void
.end method

.method private createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "providerPackage"  # Ljava/lang/String;
    .param p2, "providerUserId"  # I

    .line 578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 582
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 583
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 582
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 584
    .local v2, "userContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 585
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 587
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {v5}, Lcom/android/server/policy/IconUtilities;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 588
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2e} :catch_34
    .catchall {:try_start_4 .. :try_end_2e} :catchall_32

    .line 595
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    return-object v5

    .line 595
    .end local v2  # "userContext":Landroid/content/Context;
    .end local v3  # "pm":Landroid/content/pm/PackageManager;
    .end local v4  # "icon":Landroid/graphics/drawable/Drawable;
    :catchall_32
    move-exception v2

    goto :goto_41

    .line 589
    :catch_34
    move-exception v2

    .line 590
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_35
    const-string v3, "AppWidgetServiceImpl"

    const-string v4, "Fail to get application icon"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .line 593
    const/4 v3, 0x0

    .line 595
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    return-object v3

    .line 595
    .end local v2  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "icon"  # Landroid/graphics/Bitmap;
    .param p2, "showBadge"  # Z
    .param p3, "onClickIntent"  # Landroid/app/PendingIntent;

    .line 601
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x109012d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 603
    .local v0, "views":Landroid/widget/RemoteViews;
    if-eqz p1, :cond_16

    .line 604
    const v1, 0x10204fc

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 606
    :cond_16
    if-nez p2, :cond_1f

    .line 607
    const v1, 0x10204fd

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 609
    :cond_1f
    if-eqz p3, :cond_27

    .line 610
    const v1, 0x10204fe

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 612
    :cond_27
    return-object v0
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1919
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 1920
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1921
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1922
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1923
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1924
    .local v2, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1927
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1928
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1929
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1932
    .end local v1  # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v2  # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3e
    goto :goto_a

    .line 1933
    :cond_3f
    return-void
.end method

.method private deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1831
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1833
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1834
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1835
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1837
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1839
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1840
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v1, :cond_2e

    .line 1841
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1842
    iget-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_2e

    .line 1844
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1846
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1848
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1851
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1855
    :cond_2e
    return-void
.end method

.method private deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 5
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1816
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1817
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 1818
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1819
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1817
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1821
    .end local v1  # "i":I
    :cond_18
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1824
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1825
    return-void
.end method

.method private deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 3
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2323
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 2324
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2327
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2328
    return-void
.end method

.method private deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V
    .registers 8
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "userId"  # I

    .line 2304
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2305
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_3d

    .line 2306
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2307
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1d

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2308
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v3

    if-ne p2, v3, :cond_3a

    .line 2309
    :cond_1d
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2311
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 2313
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2314
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2315
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2316
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 2317
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2305
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2320
    .end local v1  # "i":I
    :cond_3d
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 9
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1873
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 1893
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1895
    .local v1, "token":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v4, 0x2000001

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1897
    invoke-virtual {v5}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    .line 1895
    invoke-virtual {v3, p1, v0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 1899
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1900
    nop

    .line 1901
    return-void

    .line 1899
    :catchall_1e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    .registers 4
    .param p1, "index"  # I
    .param p2, "pw"  # Ljava/io/PrintWriter;
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

    .line 2438
    .local p0, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2439
    const-string v0, " user="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2440
    const-string v0, " package="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2441
    return-void
.end method

.method private static dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .registers 4
    .param p0, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p1, "index"  # I
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 2430
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2431
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2432
    const-string v0, "    callbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2433
    const-string v0, "    widgets.size="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2434
    const-string v0, " zombie="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2435
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 808
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 809
    .local v0, "N":I
    const-string v1, "Providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1c

    .line 811
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-static {v2, v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 814
    .end local v1  # "i":I
    :cond_1c
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 815
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const-string v2, "Widgets:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    if-ge v2, v0, :cond_3d

    .line 818
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 821
    .end local v2  # "i":I
    :cond_3d
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 822
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    const-string v2, "Hosts:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_4c
    if-ge v2, v0, :cond_5c

    .line 825
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 828
    .end local v2  # "i":I
    :cond_5c
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 829
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    const-string v1, "Grants:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_6b
    if-ge v1, v0, :cond_7b

    .line 832
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 833
    .local v2, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v2, v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V

    .line 831
    .end local v2  # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 835
    .end local v1  # "i":I
    :cond_7b
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 771
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

    .line 773
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 774
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 775
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    if-ge v2, v1, :cond_3d

    .line 776
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-direct {p0, v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 778
    .end local v2  # "i":I
    :cond_3d
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 779
    return-void
.end method

.method private dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 782
    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_b8

    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_a

    goto/16 :goto_b8

    .line 787
    :cond_a
    const-wide v0, 0x20b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 788
    .local v0, "token":J
    const-wide v2, 0x10800000001L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 789
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

    .line 788
    :goto_2b
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 790
    const-wide v2, 0x10800000002L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v6, v7

    :goto_3b
    invoke-virtual {p1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 791
    const-wide v2, 0x10900000003L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 792
    const-wide v2, 0x10900000004L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 793
    const-wide v2, 0x10900000005L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 794
    iget-object v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_b4

    .line 795
    const-wide v2, 0x10500000006L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 796
    const-string v5, "appWidgetMinWidth"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 795
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 797
    const-wide v2, 0x10500000007L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 798
    const-string v5, "appWidgetMinHeight"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 797
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 799
    const-wide v2, 0x10500000008L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 800
    const-string v5, "appWidgetMaxWidth"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 799
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 801
    const-wide v2, 0x10500000009L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 802
    const-string v5, "appWidgetMaxHeight"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 801
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 804
    :cond_b4
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 805
    return-void

    .line 783
    .end local v0  # "token":J
    :cond_b8
    :goto_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skip dumping widget because host or provider is null: widget.host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " widget.provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void
.end method

.method private static dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .registers 6
    .param p0, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p1, "index"  # I
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 2407
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2408
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2409
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2410
    const-string v1, "    min=("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2411
    const-string/jumbo v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2412
    const-string v2, ")   minResize=("

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2413
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2414
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2415
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2416
    const-string v1, " resizeMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2417
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2418
    const-string v1, " widgetCategory="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2419
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2420
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2422
    const-string v1, " initialLayout=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    const-string v1, " initialKeyguardLayout=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2425
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2426
    const-string v1, " zombie="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2427
    return-void
.end method

.method private static dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V
    .registers 4
    .param p0, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p1, "index"  # I
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 2444
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2446
    const-string v0, "    host="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2447
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2448
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_2e

    .line 2449
    const-string v0, "    provider="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2451
    :cond_2e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_3e

    .line 2452
    const-string v0, "    host.callbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2454
    :cond_3e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4c

    .line 2455
    const-string v0, "    views="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2457
    :cond_4c
    return-void
.end method

.method private ensureGroupStateLoadedLocked(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 704
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 705
    return-void
.end method

.method private ensureGroupStateLoadedLocked(IZ)V
    .registers 12
    .param p1, "userId"  # I
    .param p2, "enforceUserUnlockingOrUnlocked"  # Z

    .line 708
    if-eqz p2, :cond_25

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_25

    .line 709
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be unlocked for widgets to be available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_25
    :goto_25
    if-eqz p2, :cond_4a

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_4a

    .line 713
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must have unlocked parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    .line 721
    .local v0, "profileIds":[I
    const/4 v1, 0x0

    .line 722
    .local v1, "newMemberCount":I
    array-length v2, v0

    .line 723
    .local v2, "profileIdCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_53
    const/4 v4, -0x1

    if-ge v3, v2, :cond_68

    .line 724
    aget v5, v0, v3

    .line 725
    .local v5, "profileId":I
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_63

    .line 726
    aput v4, v0, v3

    goto :goto_65

    .line 728
    :cond_63
    add-int/lit8 v1, v1, 0x1

    .line 723
    .end local v5  # "profileId":I
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 732
    .end local v3  # "i":I
    :cond_68
    if-gtz v1, :cond_6b

    .line 733
    return-void

    .line 736
    :cond_6b
    const/4 v3, 0x0

    .line 737
    .local v3, "newMemberIndex":I
    new-array v5, v1, [I

    .line 738
    .local v5, "newProfileIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6f
    if-ge v6, v2, :cond_81

    .line 739
    aget v7, v0, v6

    .line 740
    .local v7, "profileId":I
    if-eq v7, v4, :cond_7e

    .line 741
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 742
    aput v7, v5, v3

    .line 743
    add-int/lit8 v3, v3, 0x1

    .line 738
    .end local v7  # "profileId":I
    :cond_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 747
    .end local v6  # "i":I
    :cond_81
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearProvidersAndHostsTagsLocked()V

    .line 749
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupWidgetProvidersLocked([I)V

    .line 750
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupStateLocked([I)V

    .line 751
    return-void
.end method

.method private findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 7
    .param p1, "tag"  # I

    .line 2835
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 2836
    return-object v0

    .line 2838
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2839
    .local v1, "hostCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 2840
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2841
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    if-ne v4, p1, :cond_1a

    .line 2842
    return-object v3

    .line 2839
    .end local v3  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2845
    .end local v2  # "i":I
    :cond_1d
    return-object v0
.end method

.method private findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7
    .param p1, "tag"  # I

    .line 2821
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 2822
    return-object v0

    .line 2824
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2825
    .local v1, "providerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 2826
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2827
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    if-ne v4, p1, :cond_1a

    .line 2828
    return-object v3

    .line 2825
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2831
    .end local v2  # "i":I
    :cond_1d
    return-object v0
.end method

.method private getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "className"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 3489
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3492
    .local v0, "identity":J
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

    .line 3494
    nop

    .line 3503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3494
    return-object p1

    .line 3503
    :catchall_16
    move-exception v2

    goto :goto_39

    .line 3495
    :catch_18
    move-exception v3

    .line 3496
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_19
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    .line 3497
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3498
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_33

    array-length v5, v4

    if-lez v5, :cond_33

    .line 3499
    aget-object v2, v4, v2
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_16

    .line 3503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3499
    return-object v2

    .line 3503
    .end local v3  # "re":Landroid/os/RemoteException;
    .end local v4  # "packageNames":[Ljava/lang/String;
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3504
    nop

    .line 3505
    const/4 v2, 0x0

    return-object v2

    .line 3503
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 2666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2667
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2669
    invoke-direct {p0, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2671
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2672
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v2

    .line 2675
    :cond_1e
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getSavedStateFile(I)Landroid/util/AtomicFile;
    .registers 5
    .param p0, "userId"  # I

    .line 3273
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3274
    .local v0, "dir":Ljava/io/File;
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 3275
    .local v1, "settingsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    if-nez p0, :cond_23

    .line 3276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 3277
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3280
    :cond_19
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/appwidgets.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3283
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3285
    .end local v2  # "oldFile":Ljava/io/File;
    :cond_23
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method private static getStateFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"  # I

    .line 3269
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2647
    const/4 v0, 0x0

    .line 2649
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2651
    .local v1, "identity":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_13
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    move-object v0, v3

    goto :goto_14

    .line 2655
    :catchall_e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2652
    :catch_13
    move-exception v3

    .line 2655
    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2656
    nop

    .line 2658
    if-eqz v0, :cond_24

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1f

    goto :goto_24

    .line 2662
    :cond_1f
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    return v3

    .line 2659
    :cond_24
    :goto_24
    const/4 v3, -0x1

    return v3
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

    .line 2398
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2399
    .local v0, "instancesSize":I
    new-array v1, v0, [I

    .line 2400
    .local v1, "appWidgetIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 2401
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    aput v3, v1, v2

    .line 2400
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2403
    .end local v2  # "i":I
    :cond_16
    return-object v1
.end method

.method private handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .registers 15
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"  # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"  # I
    .param p4, "viewId"  # I
    .param p5, "requestId"  # J

    .line 1996
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V

    .line 1997
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2002
    goto :goto_8

    .line 1998
    :catch_6
    move-exception v0

    .line 2001
    .local v0, "re":Landroid/os/RemoteException;
    const/4 p2, 0x0

    .line 2006
    .end local v0  # "re":Landroid/os/RemoteException;
    :goto_8
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2007
    if-nez p2, :cond_5a

    .line 2008
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2010
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2011
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2012
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 2013
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    invoke-direct {v4, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 2032
    .local v4, "connection":Landroid/content/ServiceConnection;
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2033
    .local v5, "userId":I
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2036
    .local v6, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 2038
    .end local v3  # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v4  # "connection":Landroid/content/ServiceConnection;
    .end local v5  # "userId":I
    .end local v6  # "intent":Landroid/content/Intent;
    :cond_59
    goto :goto_1a

    .line 2040
    .end local v1  # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_5a
    monitor-exit v0

    .line 2041
    return-void

    .line 2040
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_e .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .registers 12
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"  # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"  # I
    .param p4, "info"  # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "requestId"  # J

    .line 2105
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2106
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2112
    goto :goto_26

    .line 2107
    :catch_6
    move-exception v0

    .line 2108
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2109
    :try_start_a
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2110
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2111
    monitor-exit v1

    .line 2113
    .end local v0  # "re":Landroid/os/RemoteException;
    :goto_26
    return-void

    .line 2111
    .restart local v0  # "re":Landroid/os/RemoteException;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw v2
.end method

.method private handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 8
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"  # Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2152
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2158
    goto :goto_24

    .line 2153
    :catch_4
    move-exception v0

    .line 2154
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2155
    :try_start_8
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2156
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2157
    monitor-exit v1

    .line 2159
    .end local v0  # "re":Landroid/os/RemoteException;
    :goto_24
    return-void

    .line 2157
    .restart local v0  # "re":Landroid/os/RemoteException;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v2
.end method

.method private handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .registers 12
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"  # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"  # I
    .param p4, "views"  # Landroid/widget/RemoteViews;
    .param p5, "requestId"  # J

    .line 2068
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2069
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2075
    goto :goto_26

    .line 2070
    :catch_6
    move-exception v0

    .line 2071
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2072
    :try_start_a
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2073
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2074
    monitor-exit v1

    .line 2076
    .end local v0  # "re":Landroid/os/RemoteException;
    :goto_26
    return-void

    .line 2074
    .restart local v0  # "re":Landroid/os/RemoteException;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw v2
.end method

.method private incrementAndGetAppWidgetIdLocked(I)I
    .registers 4
    .param p1, "userId"  # I

    .line 1782
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1783
    .local v0, "appWidgetId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    return v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    .registers 5
    .param p1, "appWidgetId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;)V"
        }
    .end annotation

    .line 1907
    .local p2, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1908
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_1b

    .line 1910
    .end local v0  # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1911
    .restart local v0  # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    :goto_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1914
    return-void
.end method

.method private static isLocalBinder()Z
    .registers 2

    .line 2162
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
    .registers 7
    .param p1, "userId"  # I

    .line 3581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3583
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3584
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3585
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 3586
    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2d

    .line 3587
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v4
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_33

    if-nez v4, :cond_2d

    .line 3588
    const/4 v4, 0x1

    .line 3592
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3588
    return v4

    .line 3592
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3  # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3593
    nop

    .line 3594
    const/4 v2, 0x0

    return v2

    .line 3592
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isProfileWithUnlockedParent(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 3598
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3599
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3600
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3601
    .local v1, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_24

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 3602
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3603
    const/4 v2, 0x1

    return v2

    .line 3606
    .end local v1  # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method private isUserRunningAndUnlocked(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 754
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method private loadGroupStateLocked([I)V
    .registers 12
    .param p1, "profileIds"  # [I

    .line 2760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2762
    .local v0, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/4 v1, 0x0

    .line 2764
    .local v1, "version":I
    array-length v2, p1

    .line 2765
    .local v2, "profileIdCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    const-string v4, "AppWidgetServiceImpl"

    if-ge v3, v2, :cond_43

    .line 2766
    aget v5, p1, v3

    .line 2769
    .local v5, "profileId":I
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v6

    .line 2770
    .local v6, "file":Landroid/util/AtomicFile;
    :try_start_12
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_2b

    .local v7, "stream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 2771
    :try_start_17
    invoke-direct {p0, v7, v5, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    move-result v9
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_22

    move v1, v9

    .line 2772
    if-eqz v7, :cond_21

    :try_start_1e
    invoke-static {v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2b

    .line 2774
    .end local v7  # "stream":Ljava/io/FileInputStream;
    :cond_21
    goto :goto_40

    .line 2770
    .restart local v7  # "stream":Ljava/io/FileInputStream;
    :catchall_22
    move-exception v8

    .end local v0  # "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    .end local v1  # "version":I
    .end local v2  # "profileIdCount":I
    .end local v3  # "i":I
    .end local v5  # "profileId":I
    .end local v6  # "file":Landroid/util/AtomicFile;
    .end local v7  # "stream":Ljava/io/FileInputStream;
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "profileIds":[I
    :try_start_23
    throw v8
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 2772
    .restart local v0  # "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    .restart local v1  # "version":I
    .restart local v2  # "profileIdCount":I
    .restart local v3  # "i":I
    .restart local v5  # "profileId":I
    .restart local v6  # "file":Landroid/util/AtomicFile;
    .restart local v7  # "stream":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "profileIds":[I
    :catchall_24
    move-exception v9

    if-eqz v7, :cond_2a

    :try_start_27
    invoke-static {v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    .end local v1  # "version":I
    .end local v2  # "profileIdCount":I
    .end local v3  # "i":I
    .end local v5  # "profileId":I
    .end local v6  # "file":Landroid/util/AtomicFile;
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "profileIds":[I
    :cond_2a
    throw v9
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2b} :catch_2b

    .end local v7  # "stream":Ljava/io/FileInputStream;
    .restart local v0  # "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    .restart local v1  # "version":I
    .restart local v2  # "profileIdCount":I
    .restart local v3  # "i":I
    .restart local v5  # "profileId":I
    .restart local v6  # "file":Landroid/util/AtomicFile;
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "profileIds":[I
    :catch_2b
    move-exception v7

    .line 2773
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    .end local v5  # "profileId":I
    .end local v6  # "file":Landroid/util/AtomicFile;
    .end local v7  # "e":Ljava/io/IOException;
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2777
    .end local v3  # "i":I
    :cond_43
    if-ltz v1, :cond_4c

    .line 2779
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindLoadedWidgetsLocked(Ljava/util/List;)V

    .line 2782
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->performUpgradeLocked(I)V

    goto :goto_72

    .line 2785
    :cond_4c
    const-string v3, "Failed to read state, clearing widgets and hosts."

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearWidgetsLocked()V

    .line 2787
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2788
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2789
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_60
    if-ge v4, v3, :cond_72

    .line 2790
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2789
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 2793
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_72
    :goto_72
    return-void
.end method

.method private loadGroupWidgetProvidersLocked([I)V
    .registers 9
    .param p1, "profileIds"  # [I

    .line 2233
    const/4 v0, 0x0

    .line 2234
    .local v0, "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2236
    .local v1, "intent":Landroid/content/Intent;
    array-length v2, p1

    .line 2237
    .local v2, "profileCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_28

    .line 2238
    aget v4, p1, v3

    .line 2240
    .local v4, "profileId":I
    invoke-direct {p0, v1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2241
    .local v5, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_25

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_25

    .line 2242
    if-nez v0, :cond_22

    .line 2243
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 2245
    :cond_22
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2237
    .end local v4  # "profileId":I
    .end local v5  # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2249
    .end local v3  # "i":I
    :cond_28
    if-nez v0, :cond_2c

    const/4 v3, 0x0

    goto :goto_30

    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 2250
    .local v3, "N":I
    :goto_30
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v3, :cond_3f

    .line 2251
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2252
    .local v5, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 2250
    .end local v5  # "receiver":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 2254
    .end local v4  # "i":I
    :cond_3f
    return-void
.end method

.method private lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 6
    .param p1, "hostId"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 2213
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2214
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2215
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2216
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2217
    return-object v2

    .line 2214
    .end local v2  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2220
    .end local v1  # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 5
    .param p1, "id"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 1803
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1804
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_7

    .line 1805
    return-object v0

    .line 1808
    :cond_7
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v0, v1

    .line 1809
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 1810
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    return-object v0
.end method

.method private lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 6
    .param p1, "id"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2202
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2203
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2204
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2205
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2206
    return-object v2

    .line 2203
    .end local v2  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2209
    .end local v1  # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 8
    .param p1, "appWidgetId"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 2190
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2191
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 2192
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2193
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v3, p1, :cond_1e

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 2194
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2195
    return-object v2

    .line 2191
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2198
    .end local v1  # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method private maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 19
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "targetWidget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 620
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 621
    .local v4, "widgetCount":I
    if-nez v4, :cond_f

    .line 622
    return-void

    .line 624
    :cond_f
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, "providerPackage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    .line 626
    .local v6, "providerUserId":I
    invoke-direct {v1, v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 627
    .local v7, "iconBitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_22

    .line 628
    return-void

    .line 632
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 634
    .local v8, "identity":J
    :try_start_26
    iget-boolean v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    if-eqz v0, :cond_56

    .line 635
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 636
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    .line 637
    .local v10, "showBadge":Z
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 639
    .local v11, "suspendingPackage":Ljava/lang/String;
    const-string v12, "android"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 640
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v13, 0x1

    invoke-virtual {v12, v6, v13}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v12

    .local v12, "onClickIntent":Landroid/content/Intent;
    goto :goto_55

    .line 643
    .end local v12  # "onClickIntent":Landroid/content/Intent;
    :cond_4a
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 644
    invoke-virtual {v12, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v12

    .line 645
    .local v12, "dialogInfo":Landroid/content/pm/SuspendDialogInfo;
    invoke-static {v5, v11, v12, v6}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/SuspendDialogInfo;I)Landroid/content/Intent;

    move-result-object v13

    move-object v12, v13

    .line 648
    .end local v0  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11  # "suspendingPackage":Ljava/lang/String;
    .local v12, "onClickIntent":Landroid/content/Intent;
    :goto_55
    goto :goto_71

    .end local v10  # "showBadge":Z
    .end local v12  # "onClickIntent":Landroid/content/Intent;
    :cond_56
    iget-boolean v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-eqz v0, :cond_61

    .line 649
    const/4 v10, 0x1

    .line 650
    .restart local v10  # "showBadge":Z
    invoke-static {v6}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    move-object v12, v0

    .restart local v12  # "onClickIntent":Landroid/content/Intent;
    goto :goto_71

    .line 653
    .end local v10  # "showBadge":Z
    .end local v12  # "onClickIntent":Landroid/content/Intent;
    :cond_61
    const/4 v10, 0x1

    .line 654
    .restart local v10  # "showBadge":Z
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v11, v6}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    move-object v12, v0

    .line 656
    .restart local v12  # "onClickIntent":Landroid/content/Intent;
    if-eqz v12, :cond_71

    .line 657
    const/high16 v0, 0x10800000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 661
    :cond_71
    :goto_71
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_72
    if-ge v0, v4, :cond_a5

    .line 662
    iget-object v11, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 663
    .local v11, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v3, :cond_81

    if-eq v3, v11, :cond_81

    goto :goto_a0

    .line 664
    :cond_81
    const/4 v13, 0x0

    .line 665
    .local v13, "intent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_8f

    .line 666
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v15, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/high16 v2, 0x8000000

    invoke-static {v14, v15, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object v13, v2

    .line 669
    :cond_8f
    invoke-direct {v1, v7, v10, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 670
    .local v2, "views":Landroid/widget/RemoteViews;
    invoke-static {v11, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$900(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z

    move-result v14

    if-eqz v14, :cond_a0

    .line 671
    invoke-virtual {v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v14

    invoke-direct {v1, v11, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    :try_end_a0
    .catchall {:try_start_26 .. :try_end_a0} :catchall_aa

    .line 661
    .end local v2  # "views":Landroid/widget/RemoteViews;
    .end local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13  # "intent":Landroid/app/PendingIntent;
    :cond_a0
    :goto_a0
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    goto :goto_72

    .line 675
    .end local v0  # "j":I
    :cond_a5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    nop

    .line 677
    return-void

    .line 675
    .end local v10  # "showBadge":Z
    .end local v12  # "onClickIntent":Landroid/content/Intent;
    :catchall_aa
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private onConfigurationChanged()V
    .registers 13

    .line 335
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 336
    const-string v0, "AppWidgetServiceImpl"

    const-string/jumbo v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 340
    .local v0, "revised":Ljava/util/Locale;
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 341
    :cond_1c
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 343
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    const/4 v2, 0x0

    .line 349
    .local v2, "changedGroups":Landroid/util/SparseIntArray;
    :try_start_22
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v3, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v4, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 353
    .local v5, "N":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_34
    if-ltz v6, :cond_84

    .line 354
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 356
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    .line 357
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9, v8}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v9

    if-eqz v9, :cond_81

    .line 358
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 359
    goto :goto_81

    .line 361
    :cond_4f
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 363
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_81

    .line 364
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 365
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 366
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v10

    .line 364
    invoke-direct {p0, v9, v10, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v9

    .line 368
    .local v9, "changed":Z
    if-eqz v9, :cond_81

    .line 369
    if-nez v2, :cond_74

    .line 370
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    move-object v2, v10

    .line 372
    :cond_74
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 373
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v11

    .line 372
    invoke-virtual {v10, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v10

    .line 374
    .local v10, "groupId":I
    invoke-virtual {v2, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    .end local v7  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v8  # "userId":I
    .end local v9  # "changed":Z
    .end local v10  # "groupId":I
    :cond_81
    :goto_81
    add-int/lit8 v6, v6, -0x1

    goto :goto_34

    .line 379
    .end local v6  # "i":I
    :cond_84
    if-eqz v2, :cond_97

    .line 380
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 381
    .local v6, "groupCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8b
    if-ge v7, v6, :cond_97

    .line 382
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 383
    .local v8, "groupId":I
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 381
    .end local v8  # "groupId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_8b

    .line 386
    .end local v2  # "changedGroups":Landroid/util/SparseIntArray;
    .end local v3  # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v4  # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    .end local v5  # "N":I
    .end local v6  # "groupCount":I
    .end local v7  # "i":I
    :cond_97
    monitor-exit v1

    .line 388
    :cond_98
    return-void

    .line 386
    :catchall_99
    move-exception v2

    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_22 .. :try_end_9b} :catchall_99

    throw v2
.end method

.method private onPackageBroadcastReceived(Landroid/content/Intent;I)V
    .registers 15
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userId"  # I

    .line 391
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 393
    .local v1, "added":Z
    const/4 v2, 0x0

    .line 394
    .local v2, "changed":Z
    const/4 v3, 0x0

    .line 398
    .local v3, "componentsModified":Z
    const/4 v4, 0x0

    .line 400
    .local v4, "pkgList":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v5, :sswitch_data_102

    :cond_13
    goto :goto_3c

    :sswitch_14
    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v8

    goto :goto_3d

    :sswitch_1e
    const-string v5, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v9

    goto :goto_3d

    :sswitch_28
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v7

    goto :goto_3d

    :sswitch_32
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v6

    goto :goto_3d

    :goto_3c
    const/4 v5, -0x1

    :goto_3d
    if-eqz v5, :cond_7b

    if-eq v5, v8, :cond_7b

    if-eq v5, v7, :cond_73

    if-eq v5, v6, :cond_74

    .line 413
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 414
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_4c

    .line 415
    return-void

    .line 417
    :cond_4c
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 418
    .local v6, "pkgName":Ljava/lang/String;
    if-nez v6, :cond_53

    .line 419
    return-void

    .line 421
    :cond_53
    new-array v7, v8, [Ljava/lang/String;

    aput-object v6, v7, v9

    move-object v4, v7

    .line 422
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 423
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 426
    if-eqz v2, :cond_83

    const-string v7, "com.meizu.setup"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 427
    invoke-static {}, Lcom/android/server/pm/SetupPackageHandler;->disableListToArray()[Ljava/lang/String;

    move-result-object v4

    goto :goto_83

    .line 407
    .end local v5  # "uri":Landroid/net/Uri;
    .end local v6  # "pkgName":Ljava/lang/String;
    :cond_73
    const/4 v1, 0x1

    .line 410
    :cond_74
    const-string v5, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 411
    goto :goto_83

    .line 403
    :cond_7b
    const-string v5, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 404
    const/4 v2, 0x1

    .line 405
    nop

    .line 432
    :cond_83
    :goto_83
    if-eqz v4, :cond_101

    array-length v5, v4

    if-nez v5, :cond_8a

    goto/16 :goto_101

    .line 436
    :cond_8a
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 437
    :try_start_8d
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 438
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v6

    if-eqz v6, :cond_9d

    goto/16 :goto_fc

    .line 441
    :cond_9d
    invoke-direct {p0, p2, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 443
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 445
    .local v6, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_c7

    if-eqz v2, :cond_a9

    goto :goto_c7

    .line 466
    :cond_a9
    if-eqz v6, :cond_b6

    const-string v7, "android.intent.extra.REPLACING"

    .line 467
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_b4

    goto :goto_b6

    :cond_b4
    move v8, v9

    goto :goto_b7

    :cond_b6
    :goto_b6
    nop

    :goto_b7
    move v7, v8

    .line 469
    .local v7, "packageRemovedPermanently":Z
    if-eqz v7, :cond_f2

    .line 470
    array-length v8, v4

    :goto_bb
    if-ge v9, v8, :cond_f2

    aget-object v10, v4, v9

    .line 471
    .local v10, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v10, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v11

    or-int/2addr v3, v11

    .line 470
    .end local v10  # "pkgName":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_bb

    .line 446
    .end local v7  # "packageRemovedPermanently":Z
    :cond_c7
    :goto_c7
    if-eqz v1, :cond_d4

    if-eqz v6, :cond_d3

    const-string v7, "android.intent.extra.REPLACING"

    .line 447
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_d4

    :cond_d3
    goto :goto_d5

    :cond_d4
    move v8, v9

    :goto_d5
    move v7, v8

    .line 449
    .local v7, "newPackageAdded":Z
    array-length v8, v4

    :goto_d7
    if-ge v9, v8, :cond_f1

    aget-object v10, v4, v9

    .line 451
    .restart local v10  # "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-direct {p0, v10, p2, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v11

    or-int/2addr v3, v11

    .line 456
    if-eqz v7, :cond_ee

    if-nez p2, :cond_ee

    .line 457
    invoke-direct {p0, v10, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v11

    .line 458
    .local v11, "uid":I
    if-ltz v11, :cond_ee

    .line 459
    invoke-direct {p0, v10, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resolveHostUidLocked(Ljava/lang/String;I)V

    .line 449
    .end local v10  # "pkgName":Ljava/lang/String;
    .end local v11  # "uid":I
    :cond_ee
    add-int/lit8 v9, v9, 0x1

    goto :goto_d7

    .line 463
    .end local v7  # "newPackageAdded":Z
    :cond_f1
    nop

    .line 477
    :cond_f2
    if-eqz v3, :cond_fa

    .line 478
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 481
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 483
    .end local v6  # "extras":Landroid/os/Bundle;
    :cond_fa
    monitor-exit v5

    .line 484
    return-void

    .line 439
    :cond_fc
    :goto_fc
    monitor-exit v5

    return-void

    .line 483
    :catchall_fe
    move-exception v6

    monitor-exit v5
    :try_end_100
    .catchall {:try_start_8d .. :try_end_100} :catchall_fe

    throw v6

    .line 433
    :cond_101
    :goto_101
    return-void

    :sswitch_data_102
    .sparse-switch
        -0x53ae571d -> :sswitch_32
        -0x4fc097e4 -> :sswitch_28
        -0x3bb3e592 -> :sswitch_1e
        0x4cef8b35 -> :sswitch_14
    .end sparse-switch
.end method

.method private onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 9
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2897
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_5

    return-void

    .line 2899
    :cond_5
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 2900
    .local v0, "userId":I
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2901
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2902
    .local v2, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_20

    .line 2903
    return-void

    .line 2907
    :cond_20
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2908
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v3, :cond_52

    .line 2909
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2910
    .local v5, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v6, :cond_36

    goto :goto_4f

    .line 2911
    :cond_36
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    if-ne v6, v0, :cond_4f

    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2912
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 2913
    return-void

    .line 2908
    .end local v5  # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4f
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2916
    .end local v4  # "i":I
    :cond_52
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2920
    invoke-static {v1}, Lcom/android/server/appwidget/WidgetInjector;->removeWidget(Ljava/lang/String;)V

    .line 2922
    return-void
.end method

.method private onWidgetsClearedLocked()V
    .registers 2

    .line 2934
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2935
    return-void
.end method

.method private parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 24
    .param p1, "providerId"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "activityInfo"  # Landroid/content/pm/ActivityInfo;
    .param p3, "metadataKey"  # Ljava/lang/String;

    .line 2549
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, " for user "

    const-string v6, "AppWidgetServiceImpl"

    const/4 v7, 0x0

    :try_start_d
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2550
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_179
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_17} :catch_179
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_17} :catch_179

    move-object v8, v0

    .line 2549
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    nop

    .line 2551
    if-nez v8, :cond_43

    .line 2552
    :try_start_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " meta-data for AppWidget provider \'"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v9, 0x27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_16e

    .line 2554
    nop

    .line 2636
    if-eqz v8, :cond_42

    :try_start_3f
    invoke-static {v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_179
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_42} :catch_179
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_42} :catch_179

    .line 2554
    :cond_42
    return-object v7

    .line 2557
    :cond_43
    :try_start_43
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v9, v0

    .line 2560
    .local v9, "attrs":Landroid/util/AttributeSet;
    :goto_48
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v10, v0

    .local v10, "type":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_54

    if-eq v10, v11, :cond_54

    goto :goto_48

    .line 2565
    :cond_54
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 2566
    .local v13, "nodeName":Ljava/lang/String;
    const-string v0, "appwidget-provider"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 2567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_43 .. :try_end_7f} :catchall_16e

    .line 2570
    nop

    .line 2636
    :try_start_80
    invoke-static {v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_179
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_83} :catch_179
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_83} :catch_179

    .line 2570
    return-object v7

    .line 2573
    :cond_84
    :try_start_84
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object v14, v0

    .line 2574
    .local v14, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v0, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2575
    iput-object v3, v14, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 2578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_94
    .catchall {:try_start_84 .. :try_end_94} :catchall_16e

    .line 2580
    .local v15, "identity":J
    :try_start_94
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2581
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2582
    .local v7, "userId":I
    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 2584
    .local v11, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v18
    :try_end_ab
    .catchall {:try_start_94 .. :try_end_ab} :catchall_169

    move-object/from16 v0, v18

    .line 2586
    .end local v7  # "userId":I
    .end local v11  # "app":Landroid/content/pm/ApplicationInfo;
    .local v0, "resources":Landroid/content/res/Resources;
    :try_start_ad
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2587
    nop

    .line 2589
    sget-object v7, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v0, v9, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2595
    .local v7, "sa":Landroid/content/res/TypedArray;
    nop

    .line 2596
    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 2597
    .local v11, "value":Landroid/util/TypedValue;
    if-eqz v11, :cond_c1

    iget v12, v11, Landroid/util/TypedValue;->data:I

    goto :goto_c2

    :cond_c1
    const/4 v12, 0x0

    :goto_c2
    iput v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 2598
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v19

    move-object/from16 v11, v19

    .line 2599
    if-eqz v11, :cond_d0

    iget v12, v11, Landroid/util/TypedValue;->data:I

    goto :goto_d1

    :cond_d0
    const/4 v12, 0x0

    :goto_d1
    iput v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 2600
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    move-object v11, v12

    .line 2602
    if-eqz v11, :cond_df

    iget v12, v11, Landroid/util/TypedValue;->data:I

    goto :goto_e1

    :cond_df
    iget v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    :goto_e1
    iput v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 2603
    const/16 v12, 0x9

    invoke-virtual {v7, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    move-object v11, v12

    .line 2605
    if-eqz v11, :cond_ef

    iget v12, v11, Landroid/util/TypedValue;->data:I

    goto :goto_f1

    :cond_ef
    iget v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    :goto_f1
    iput v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 2606
    move-object/from16 v17, v0

    const/4 v0, 0x0

    const/4 v12, 0x2

    .end local v0  # "resources":Landroid/content/res/Resources;
    .local v17, "resources":Landroid/content/res/Resources;
    invoke-virtual {v7, v12, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 2608
    const/4 v12, 0x3

    invoke-virtual {v7, v12, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 2610
    const/16 v12, 0xa

    invoke-virtual {v7, v12, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 2613
    const/4 v0, 0x4

    .line 2614
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2615
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_120

    .line 2616
    new-instance v12, Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v14, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 2619
    :cond_120
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2620
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    iput v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 2621
    const/4 v4, 0x5

    const/4 v12, 0x0

    invoke-virtual {v7, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 2623
    const/4 v4, 0x6

    const/4 v12, -0x1

    invoke-virtual {v7, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 2625
    const/4 v4, 0x7

    const/4 v12, 0x0

    invoke-virtual {v7, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 2628
    const/16 v4, 0xb

    const/4 v12, 0x1

    invoke-virtual {v7, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 2631
    const/16 v4, 0xc

    const/4 v12, 0x0

    invoke-virtual {v7, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 2634
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_163
    .catchall {:try_start_ad .. :try_end_163} :catchall_16e

    .line 2635
    nop

    .line 2636
    const/4 v4, 0x0

    :try_start_165
    invoke-static {v4, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_179
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_165 .. :try_end_168} :catch_179
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_165 .. :try_end_168} :catch_179

    .line 2635
    return-object v14

    .line 2586
    .end local v0  # "className":Ljava/lang/String;
    .end local v7  # "sa":Landroid/content/res/TypedArray;
    .end local v11  # "value":Landroid/util/TypedValue;
    .end local v17  # "resources":Landroid/content/res/Resources;
    :catchall_169
    move-exception v0

    :try_start_16a
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v8  # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local p2  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p3  # "metadataKey":Ljava/lang/String;
    throw v0
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_16e

    .line 2549
    .end local v9  # "attrs":Landroid/util/AttributeSet;
    .end local v10  # "type":I
    .end local v13  # "nodeName":Ljava/lang/String;
    .end local v14  # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v15  # "identity":J
    .restart local v8  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local p2  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p3  # "metadataKey":Ljava/lang/String;
    :catchall_16e
    move-exception v0

    move-object v4, v0

    .end local v8  # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local p2  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p3  # "metadataKey":Ljava/lang/String;
    :try_start_170
    throw v4
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_171

    .line 2636
    .restart local v8  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local p2  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p3  # "metadataKey":Ljava/lang/String;
    :catchall_171
    move-exception v0

    move-object v7, v0

    if-eqz v8, :cond_178

    :try_start_175
    invoke-static {v4, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local p2  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local p3  # "metadataKey":Ljava/lang/String;
    :cond_178
    throw v7
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_179} :catch_179
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_175 .. :try_end_179} :catch_179
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_175 .. :try_end_179} :catch_179

    .end local v8  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local p2  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local p3  # "metadataKey":Ljava/lang/String;
    :catch_179
    move-exception v0

    .line 2640
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XML parsing failed for AppWidget provider "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2642
    const/4 v4, 0x0

    return-object v4
.end method

.method private parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7
    .param p1, "providerId"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "ri"  # Landroid/content/pm/ResolveInfo;
    .param p3, "oldProvider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2529
    const/4 v0, 0x0

    .line 2530
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz p3, :cond_13

    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2531
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2533
    :cond_13
    if-nez v0, :cond_1d

    .line 2534
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "android.appwidget.provider"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2537
    :cond_1d
    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 2538
    return-object v1

    .line 2541
    :cond_21
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v1, v2

    .line 2542
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput-object p1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2543
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2544
    return-object v1
.end method

.method private peekNextAppWidgetIdLocked(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 1795
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_a

    .line 1796
    const/4 v0, 0x1

    return v0

    .line 1798
    :cond_a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private performUpgradeLocked(I)V
    .registers 10
    .param p1, "fromVersion"  # I

    .line 3239
    const/4 v0, 0x1

    if-ge p1, v0, :cond_21

    .line 3240
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

    .line 3244
    :cond_21
    move v1, p1

    .line 3247
    .local v1, "version":I
    if-nez v1, :cond_49

    .line 3248
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const v4, 0x4b455947  # 1.2933447E7f

    const-string v5, "android"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 3251
    .local v2, "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 3252
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_48

    .line 3253
    const/4 v5, 0x0

    const-string v6, "com.android.keyguard"

    invoke-direct {p0, v6, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v5

    .line 3255
    .local v5, "uid":I
    if-ltz v5, :cond_48

    .line 3256
    new-instance v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v7, v5, v4, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v7, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3260
    .end local v5  # "uid":I
    :cond_48
    const/4 v1, 0x1

    .line 3263
    .end local v2  # "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_49
    if-ne v1, v0, :cond_4c

    .line 3266
    return-void

    .line 3264
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to upgrade widget database"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 4
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2224
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_2d

    .line 2225
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 2226
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

    .line 2228
    :cond_28
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2230
    :cond_2d
    return-void
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userId"  # I
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

    .line 2679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2681
    .local v0, "identity":J
    const/16 v2, 0x80

    .line 2685
    .local v2, "flags":I
    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    .line 2690
    :try_start_9
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithUnlockedParent(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2691
    const/high16 v3, 0xc0000

    or-int/2addr v2, v3

    .line 2697
    :cond_12
    or-int/lit16 v2, v2, 0x400

    .line 2699
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2700
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 2699
    invoke-interface {v3, p1, v4, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2701
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_28} :catch_2e
    .catchall {:try_start_9 .. :try_end_28} :catchall_2c

    .line 2705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2699
    return-object v3

    .line 2705
    .end local v2  # "flags":I
    :catchall_2c
    move-exception v2

    goto :goto_37

    .line 2702
    :catch_2e
    move-exception v2

    .line 2703
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_2c

    .line 2705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2703
    return-object v3

    .line 2705
    .end local v2  # "re":Landroid/os/RemoteException;
    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I
    .registers 28
    .param p1, "stream"  # Ljava/io/FileInputStream;
    .param p2, "userId"  # I
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

    .line 3069
    .local p3, "outLoadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "h"

    const-string/jumbo v4, "p"

    const/4 v5, -0x1

    .line 3071
    .local v5, "version":I
    const/4 v6, -0x1

    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 3072
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_1a} :catch_2b9
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1a} :catch_2b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1a} :catch_2b9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1a} :catch_2b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_1a} :catch_2b9

    .line 3074
    const/4 v8, -0x1

    .line 3075
    .local v8, "legacyProviderIndex":I
    move v10, v6

    .line 3078
    .local v10, "legacyHostIndex":I
    :goto_1c
    :try_start_1c
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 3079
    .local v11, "type":I
    const/4 v12, 0x2

    if-ne v11, v12, :cond_29a

    .line 3080
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 3081
    .local v12, "tag":Ljava/lang/String;
    const-string v14, "gs"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_2d} :catch_2b2
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_2d} :catch_2b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_2d} :catch_2b2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2d} :catch_2b2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_2d} :catch_2b2

    const/4 v15, 0x0

    if-eqz v14, :cond_46

    .line 3082
    :try_start_30
    const-string/jumbo v14, "version"

    invoke-interface {v7, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_37} :catch_2b9
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_37} :catch_2b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_37} :catch_2b9
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_2b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_37} :catch_2b9

    .line 3084
    .local v14, "attributeValue":Ljava/lang/String;
    :try_start_37
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3b} :catch_3d
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3b} :catch_2b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_3b} :catch_2b9
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_2b9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_37 .. :try_end_3b} :catch_2b9

    move v5, v15

    .line 3087
    goto :goto_40

    .line 3085
    :catch_3d
    move-exception v0

    move-object v15, v0

    .line 3086
    .local v15, "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 3088
    .end local v14  # "attributeValue":Ljava/lang/String;
    .end local v15  # "e":Ljava/lang/NumberFormatException;
    :goto_40
    move-object/from16 v1, p3

    move-object/from16 v16, v3

    goto/16 :goto_2a2

    :cond_46
    :try_start_46
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_4a
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_4a} :catch_2b2
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4a} :catch_2b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_4a} :catch_2b2
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_2b2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_46 .. :try_end_4a} :catch_2b2

    const-string/jumbo v6, "tag"

    const-string/jumbo v13, "pkg"

    if-eqz v14, :cond_121

    .line 3089
    add-int/lit8 v8, v8, 0x1

    .line 3092
    const/4 v14, 0x0

    :try_start_55
    invoke-interface {v7, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3093
    .local v13, "pkg":Ljava/lang/String;
    const-string v15, "cl"

    invoke-interface {v7, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 3095
    .local v14, "cl":Ljava/lang/String;
    invoke-direct {v1, v13, v14, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    .line 3096
    if-nez v13, :cond_6d

    .line 3097
    move/from16 v18, v5

    move/from16 v19, v8

    goto/16 :goto_110

    .line 3100
    :cond_6d
    invoke-direct {v1, v13, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v15
    :try_end_71
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_71} :catch_11a
    .catch Ljava/lang/NumberFormatException; {:try_start_55 .. :try_end_71} :catch_11a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_71} :catch_11a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_71} :catch_11a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_55 .. :try_end_71} :catch_11a

    .line 3101
    .local v15, "uid":I
    if-gez v15, :cond_79

    .line 3102
    move/from16 v18, v5

    move/from16 v19, v8

    goto/16 :goto_110

    .line 3105
    :cond_79
    move/from16 v18, v5

    .end local v5  # "version":I
    .local v18, "version":I
    :try_start_7b
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-direct {v1, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v19

    move-object/from16 v20, v19

    .line 3108
    .local v20, "providerInfo":Landroid/content/pm/ActivityInfo;
    move/from16 v19, v8

    move-object/from16 v8, v20

    .end local v20  # "providerInfo":Landroid/content/pm/ActivityInfo;
    .local v8, "providerInfo":Landroid/content/pm/ActivityInfo;
    .local v19, "legacyProviderIndex":I
    if-nez v8, :cond_8e

    .line 3109
    goto/16 :goto_110

    .line 3112
    :cond_8e
    new-instance v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    move-object/from16 v20, v13

    const/4 v13, 0x0

    .end local v13  # "pkg":Ljava/lang/String;
    .local v20, "pkg":Ljava/lang/String;
    invoke-direct {v9, v15, v5, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3113
    .local v9, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v13

    .line 3115
    .local v13, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v13, :cond_ce

    move-object/from16 v21, v5

    .end local v5  # "componentName":Landroid/content/ComponentName;
    .local v21, "componentName":Landroid/content/ComponentName;
    iget-boolean v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v5, :cond_c9

    .line 3117
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object/from16 v22, v13

    const/4 v13, 0x0

    .end local v13  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v22, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-direct {v5, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v13, v5

    .line 3118
    .end local v22  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v13  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v5, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v5}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3119
    iget-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v23, v14

    .end local v14  # "cl":Ljava/lang/String;
    .local v23, "cl":Ljava/lang/String;
    iget-object v14, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v14, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3120
    iget-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v8, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 3121
    const/4 v5, 0x1

    iput-boolean v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 3122
    iput-object v9, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3123
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    .line 3115
    .end local v23  # "cl":Ljava/lang/String;
    .restart local v14  # "cl":Ljava/lang/String;
    :cond_c9
    move-object/from16 v22, v13

    move-object/from16 v23, v14

    .end local v13  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14  # "cl":Ljava/lang/String;
    .restart local v22  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v23  # "cl":Ljava/lang/String;
    goto :goto_d4

    .end local v21  # "componentName":Landroid/content/ComponentName;
    .end local v22  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v23  # "cl":Ljava/lang/String;
    .restart local v5  # "componentName":Landroid/content/ComponentName;
    .restart local v13  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v14  # "cl":Ljava/lang/String;
    :cond_ce
    move-object/from16 v21, v5

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    .line 3126
    .end local v5  # "componentName":Landroid/content/ComponentName;
    .end local v13  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14  # "cl":Ljava/lang/String;
    .restart local v21  # "componentName":Landroid/content/ComponentName;
    .restart local v22  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v23  # "cl":Ljava/lang/String;
    :goto_d4
    move-object/from16 v13, v22

    .end local v22  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v13  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_d6
    const/4 v5, 0x0

    invoke-interface {v7, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 3127
    .local v5, "tagAttribute":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e9

    .line 3128
    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_eb

    :cond_e9
    move/from16 v6, v19

    .line 3129
    .local v6, "providerTag":I
    :goto_eb
    iput v6, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 3131
    const-string/jumbo v14, "info_tag"

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v5  # "tagAttribute":Ljava/lang/String;
    .local v17, "tagAttribute":Ljava/lang/String;
    invoke-interface {v7, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 3132
    iget-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10f

    iget-boolean v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez v5, :cond_10f

    .line 3133
    iget-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-direct {v1, v9, v8, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 3135
    .local v5, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v5, :cond_10f

    .line 3136
    iput-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3139
    .end local v5  # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6  # "providerTag":I
    .end local v8  # "providerInfo":Landroid/content/pm/ActivityInfo;
    .end local v9  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v13  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v15  # "uid":I
    .end local v17  # "tagAttribute":Ljava/lang/String;
    .end local v20  # "pkg":Ljava/lang/String;
    .end local v21  # "componentName":Landroid/content/ComponentName;
    .end local v23  # "cl":Ljava/lang/String;
    :cond_10f
    nop

    .line 3225
    .end local v12  # "tag":Ljava/lang/String;
    .end local v18  # "version":I
    .end local v19  # "legacyProviderIndex":I
    .local v5, "version":I
    .local v8, "legacyProviderIndex":I
    :goto_110
    move-object/from16 v1, p3

    move-object/from16 v16, v3

    move/from16 v5, v18

    move/from16 v8, v19

    .end local v5  # "version":I
    .end local v8  # "legacyProviderIndex":I
    .restart local v18  # "version":I
    .restart local v19  # "legacyProviderIndex":I
    goto/16 :goto_2a2

    .line 3226
    .end local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10  # "legacyHostIndex":I
    .end local v11  # "type":I
    .end local v18  # "version":I
    .end local v19  # "legacyProviderIndex":I
    .restart local v5  # "version":I
    :catch_11a
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v1, p3

    goto/16 :goto_2b7

    .line 3139
    .restart local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "legacyProviderIndex":I
    .restart local v10  # "legacyHostIndex":I
    .restart local v11  # "type":I
    .restart local v12  # "tag":Ljava/lang/String;
    :cond_121
    move/from16 v18, v5

    .end local v5  # "version":I
    .restart local v18  # "version":I
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_127
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_127} :catch_295
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_127} :catch_295
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_127} :catch_295
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_127} :catch_295
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7b .. :try_end_127} :catch_295

    const-string/jumbo v9, "id"

    if-eqz v5, :cond_17f

    .line 3140
    add-int/lit8 v10, v10, 0x1

    .line 3141
    :try_start_12e
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3144
    .local v5, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-interface {v7, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3146
    .local v13, "pkg":Ljava/lang/String;
    invoke-direct {v1, v13, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v14

    .line 3147
    .local v14, "uid":I
    if-gez v14, :cond_141

    .line 3148
    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 3151
    :cond_141
    iget-boolean v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v15, :cond_149

    iget-boolean v15, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v15, :cond_177

    .line 3154
    :cond_149
    const/4 v15, 0x0

    invoke-interface {v7, v15, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x10

    invoke-static {v9, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 3157
    .local v9, "hostId":I
    const/4 v15, 0x0

    invoke-interface {v7, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3158
    .local v6, "tagAttribute":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_166

    .line 3159
    const/16 v15, 0x10

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    goto :goto_167

    :cond_166
    move v15, v10

    .line 3161
    .local v15, "hostTag":I
    :goto_167
    iput v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 3162
    move-object/from16 v16, v6

    .end local v6  # "tagAttribute":Ljava/lang/String;
    .local v16, "tagAttribute":Ljava/lang/String;
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v6, v14, v9, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3163
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3165
    .end local v5  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9  # "hostId":I
    .end local v13  # "pkg":Ljava/lang/String;
    .end local v14  # "uid":I
    .end local v15  # "hostTag":I
    .end local v16  # "tagAttribute":Ljava/lang/String;
    :cond_177
    move-object/from16 v1, p3

    move-object/from16 v16, v3

    move/from16 v5, v18

    goto/16 :goto_2a2

    :cond_17f
    const-string v5, "b"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a8

    .line 3166
    const-string/jumbo v5, "packageName"

    const/4 v6, 0x0

    invoke-interface {v7, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3167
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {v1, v5, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v6

    .line 3168
    .local v6, "uid":I
    if-ltz v6, :cond_1a2

    .line 3169
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 3170
    .local v9, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v13, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3172
    .end local v5  # "packageName":Ljava/lang/String;
    .end local v6  # "uid":I
    .end local v9  # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1a2
    move-object/from16 v1, p3

    move-object/from16 v16, v3

    goto/16 :goto_2a0

    :cond_1a8
    const-string v5, "g"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_290

    .line 3173
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3174
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-interface {v7, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v6, 0x10

    invoke-static {v9, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 3176
    iget v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/4 v9, 0x1

    add-int/2addr v6, v9

    invoke-direct {v1, v2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setMinAppWidgetIdLocked(II)V

    .line 3179
    const-string/jumbo v6, "rid"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3180
    .local v6, "restoredIdString":Ljava/lang/String;
    if-nez v6, :cond_1d6

    const/4 v9, 0x0

    move v13, v9

    goto :goto_1dc

    .line 3181
    :cond_1d6
    const/16 v9, 0x10

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    :goto_1dc
    iput v13, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 3183
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 3184
    .local v9, "options":Landroid/os/Bundle;
    const-string/jumbo v13, "min_width"

    const/4 v14, 0x0

    invoke-interface {v7, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3185
    .local v13, "minWidthString":Ljava/lang/String;
    if-eqz v13, :cond_1f8

    .line 3186
    const-string v14, "appWidgetMinWidth"

    .line 3187
    const/16 v15, 0x10

    invoke-static {v13, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 3186
    invoke-virtual {v9, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3189
    :cond_1f8
    const-string/jumbo v2, "min_height"

    const/4 v14, 0x0

    invoke-interface {v7, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3190
    .local v2, "minHeightString":Ljava/lang/String;
    if-eqz v2, :cond_210

    .line 3191
    const-string v14, "appWidgetMinHeight"

    .line 3192
    move-object/from16 v19, v6

    const/16 v15, 0x10

    .end local v6  # "restoredIdString":Ljava/lang/String;
    .local v19, "restoredIdString":Ljava/lang/String;
    invoke-static {v2, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 3191
    invoke-virtual {v9, v14, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_212

    .line 3190
    .end local v19  # "restoredIdString":Ljava/lang/String;
    .restart local v6  # "restoredIdString":Ljava/lang/String;
    :cond_210
    move-object/from16 v19, v6

    .line 3194
    .end local v6  # "restoredIdString":Ljava/lang/String;
    .restart local v19  # "restoredIdString":Ljava/lang/String;
    :goto_212
    const-string/jumbo v6, "max_width"

    const/4 v14, 0x0

    invoke-interface {v7, v14, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3195
    .local v6, "maxWidthString":Ljava/lang/String;
    if-eqz v6, :cond_22a

    .line 3196
    const-string v14, "appWidgetMaxWidth"

    .line 3197
    move-object/from16 v20, v2

    const/16 v15, 0x10

    .end local v2  # "minHeightString":Ljava/lang/String;
    .local v20, "minHeightString":Ljava/lang/String;
    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 3196
    invoke-virtual {v9, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_22c

    .line 3195
    .end local v20  # "minHeightString":Ljava/lang/String;
    .restart local v2  # "minHeightString":Ljava/lang/String;
    :cond_22a
    move-object/from16 v20, v2

    .line 3199
    .end local v2  # "minHeightString":Ljava/lang/String;
    .restart local v20  # "minHeightString":Ljava/lang/String;
    :goto_22c
    const-string/jumbo v2, "max_height"

    const/4 v14, 0x0

    invoke-interface {v7, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3200
    .local v2, "maxHeightString":Ljava/lang/String;
    if-eqz v2, :cond_244

    .line 3201
    const-string v14, "appWidgetMaxHeight"

    .line 3202
    move-object/from16 v21, v6

    const/16 v15, 0x10

    .end local v6  # "maxWidthString":Ljava/lang/String;
    .local v21, "maxWidthString":Ljava/lang/String;
    invoke-static {v2, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 3201
    invoke-virtual {v9, v14, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_246

    .line 3200
    .end local v21  # "maxWidthString":Ljava/lang/String;
    .restart local v6  # "maxWidthString":Ljava/lang/String;
    :cond_244
    move-object/from16 v21, v6

    .line 3204
    .end local v6  # "maxWidthString":Ljava/lang/String;
    .restart local v21  # "maxWidthString":Ljava/lang/String;
    :goto_246
    const-string v6, "host_category"

    const/4 v14, 0x0

    invoke-interface {v7, v14, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3205
    .local v6, "categoryString":Ljava/lang/String;
    if-eqz v6, :cond_25d

    .line 3206
    const-string v14, "appWidgetCategory"

    .line 3207
    move-object/from16 v22, v2

    const/16 v15, 0x10

    .end local v2  # "maxHeightString":Ljava/lang/String;
    .local v22, "maxHeightString":Ljava/lang/String;
    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 3206
    invoke-virtual {v9, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_25f

    .line 3205
    .end local v22  # "maxHeightString":Ljava/lang/String;
    .restart local v2  # "maxHeightString":Ljava/lang/String;
    :cond_25d
    move-object/from16 v22, v2

    .line 3209
    .end local v2  # "maxHeightString":Ljava/lang/String;
    .restart local v22  # "maxHeightString":Ljava/lang/String;
    :goto_25f
    iput-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 3211
    const/4 v2, 0x0

    invoke-interface {v7, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .line 3213
    .local v14, "hostTag":I
    invoke-interface {v7, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3214
    .local v15, "providerString":Ljava/lang/String;
    if-eqz v15, :cond_27f

    .line 3215
    invoke-interface {v7, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3214
    move-object/from16 v16, v3

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_282

    .line 3215
    :cond_27f
    move-object/from16 v16, v3

    const/4 v2, -0x1

    :goto_282
    nop

    .line 3220
    .local v2, "providerTag":I
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    invoke-direct {v3, v1, v5, v14, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V
    :try_end_288
    .catch Ljava/lang/NullPointerException; {:try_start_12e .. :try_end_288} :catch_295
    .catch Ljava/lang/NumberFormatException; {:try_start_12e .. :try_end_288} :catch_295
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12e .. :try_end_288} :catch_295
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_288} :catch_295
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12e .. :try_end_288} :catch_295

    .line 3222
    .local v3, "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    move-object/from16 v1, p3

    :try_start_28a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28d
    .catch Ljava/lang/NullPointerException; {:try_start_28a .. :try_end_28d} :catch_28e
    .catch Ljava/lang/NumberFormatException; {:try_start_28a .. :try_end_28d} :catch_28e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28a .. :try_end_28d} :catch_28e
    .catch Ljava/io/IOException; {:try_start_28a .. :try_end_28d} :catch_28e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28a .. :try_end_28d} :catch_28e

    goto :goto_2a0

    .line 3226
    .end local v2  # "providerTag":I
    .end local v3  # "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v5  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v6  # "categoryString":Ljava/lang/String;
    .end local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8  # "legacyProviderIndex":I
    .end local v9  # "options":Landroid/os/Bundle;
    .end local v10  # "legacyHostIndex":I
    .end local v11  # "type":I
    .end local v12  # "tag":Ljava/lang/String;
    .end local v13  # "minWidthString":Ljava/lang/String;
    .end local v14  # "hostTag":I
    .end local v15  # "providerString":Ljava/lang/String;
    .end local v19  # "restoredIdString":Ljava/lang/String;
    .end local v20  # "minHeightString":Ljava/lang/String;
    .end local v21  # "maxWidthString":Ljava/lang/String;
    .end local v22  # "maxHeightString":Ljava/lang/String;
    :catch_28e
    move-exception v0

    goto :goto_298

    .line 3172
    .restart local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "legacyProviderIndex":I
    .restart local v10  # "legacyHostIndex":I
    .restart local v11  # "type":I
    .restart local v12  # "tag":Ljava/lang/String;
    :cond_290
    move-object/from16 v1, p3

    move-object/from16 v16, v3

    goto :goto_2a0

    .line 3226
    .end local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8  # "legacyProviderIndex":I
    .end local v10  # "legacyHostIndex":I
    .end local v11  # "type":I
    .end local v12  # "tag":Ljava/lang/String;
    :catch_295
    move-exception v0

    move-object/from16 v1, p3

    :goto_298
    move-object v2, v0

    goto :goto_2bf

    .line 3079
    .end local v18  # "version":I
    .local v5, "version":I
    .restart local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "legacyProviderIndex":I
    .restart local v10  # "legacyHostIndex":I
    .restart local v11  # "type":I
    :cond_29a
    move-object/from16 v1, p3

    move-object/from16 v16, v3

    move/from16 v18, v5

    .line 3225
    .end local v5  # "version":I
    .restart local v18  # "version":I
    :goto_2a0
    move/from16 v5, v18

    .end local v18  # "version":I
    .restart local v5  # "version":I
    :goto_2a2
    const/4 v2, 0x1

    if-ne v11, v2, :cond_2a7

    .line 3233
    .end local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8  # "legacyProviderIndex":I
    .end local v10  # "legacyHostIndex":I
    .end local v11  # "type":I
    nop

    .line 3235
    return v5

    .line 3225
    .restart local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "legacyProviderIndex":I
    .restart local v10  # "legacyHostIndex":I
    .restart local v11  # "type":I
    :cond_2a7
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v2, p2

    move-object/from16 v3, v16

    const/4 v6, -0x1

    goto/16 :goto_1c

    .line 3226
    .end local v7  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8  # "legacyProviderIndex":I
    .end local v10  # "legacyHostIndex":I
    .end local v11  # "type":I
    :catch_2b2
    move-exception v0

    move-object/from16 v1, p3

    move/from16 v18, v5

    :goto_2b7
    move-object v2, v0

    .end local v5  # "version":I
    .restart local v18  # "version":I
    goto :goto_2bf

    .end local v18  # "version":I
    .restart local v5  # "version":I
    :catch_2b9
    move-exception v0

    move-object/from16 v1, p3

    move-object v2, v0

    move/from16 v18, v5

    .line 3231
    .end local v5  # "version":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v18  # "version":I
    :goto_2bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppWidgetServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    const/4 v3, -0x1

    return v3
.end method

.method private registerBroadcastReceiver()V
    .registers 12

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v0, "configFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 295
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 304
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v2, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 310
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v3, "offModeFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 316
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v4, "suspendPackageFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 321
    return-void
.end method

.method private registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 12
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"  # [I

    .line 2365
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_58

    .line 2369
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 2370
    .local v0, "alreadyRegistered":Z
    :goto_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2371
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "appWidgetIds"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2372
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2375
    .local v3, "token":J
    :try_start_25
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    iget-object v7, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2376
    invoke-virtual {v7}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v7

    .line 2375
    invoke-static {v5, v1, v2, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_53

    .line 2378
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    nop

    .line 2380
    if-nez v0, :cond_58

    .line 2383
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    sget v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v5, v1

    .line 2384
    .local v5, "period":J
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 2389
    .local v1, "broadcast":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;

    invoke-direct {v8, p0, v5, v6, v1}, Lcom/android/server/appwidget/-$$Lambda$AppWidgetServiceImpl$7z3EwuT55saMxTVomcNfb1VOVL0;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;JLandroid/app/PendingIntent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_58

    .line 2378
    .end local v1  # "broadcast":Landroid/app/PendingIntent;
    .end local v5  # "period":J
    :catchall_53
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2395
    .end local v0  # "alreadyRegistered":Z
    .end local v2  # "intent":Landroid/content/Intent;
    .end local v3  # "token":J
    :cond_58
    :goto_58
    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_7

    .line 326
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    .line 328
    :cond_7
    return-void
.end method

.method private reloadWidgetsMaskedState(I)V
    .registers 16
    .param p1, "userId"  # I

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 507
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 509
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v4

    .line 510
    .local v3, "lockedProfile":Z
    :goto_16
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v5

    .line 511
    .local v5, "quietProfile":Z
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 512
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_21
    if-ge v7, v6, :cond_72

    .line 513
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 514
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    .line 515
    .local v9, "providerUserId":I
    if-eq v9, p1, :cond_32

    .line 516
    goto :goto_6f

    .line 519
    :cond_32
    invoke-virtual {v8, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByLockedProfileLocked(Z)Z

    move-result v10

    .line 520
    .local v10, "changed":Z
    invoke-virtual {v8, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByQuietProfileLocked(Z)Z

    move-result v11
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_77

    or-int/2addr v10, v11

    .line 524
    :try_start_3b
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 525
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v13

    .line 524
    invoke-interface {v11, v12, v13}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v11
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_4d} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4d} :catch_4e
    .catchall {:try_start_3b .. :try_end_4d} :catchall_77

    .line 529
    .local v11, "suspended":Z
    goto :goto_52

    .line 531
    .end local v11  # "suspended":Z
    :catch_4e
    move-exception v11

    goto :goto_58

    .line 526
    :catch_50
    move-exception v11

    .line 528
    .local v11, "ex":Ljava/lang/IllegalArgumentException;
    move v11, v4

    .line 530
    .local v11, "suspended":Z
    :goto_52
    :try_start_52
    invoke-virtual {v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v12
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_56} :catch_4e
    .catchall {:try_start_52 .. :try_end_56} :catchall_77

    or-int/2addr v10, v12

    .line 533
    .end local v11  # "suspended":Z
    goto :goto_5f

    .line 532
    .local v11, "e":Landroid/os/RemoteException;
    :goto_58
    :try_start_58
    const-string v12, "AppWidgetServiceImpl"

    const-string v13, "Failed to query application info"

    invoke-static {v12, v13, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    .end local v11  # "e":Landroid/os/RemoteException;
    :goto_5f
    if-eqz v10, :cond_6f

    .line 535
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 536
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_6f

    .line 538
    :cond_6c
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_77

    .line 512
    .end local v8  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v9  # "providerUserId":I
    .end local v10  # "changed":Z
    :cond_6f
    :goto_6f
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 543
    .end local v2  # "user":Landroid/content/pm/UserInfo;
    .end local v3  # "lockedProfile":Z
    .end local v5  # "quietProfile":Z
    .end local v6  # "N":I
    .end local v7  # "i":I
    :cond_72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_77
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3470
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v0

    .line 3475
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3476
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_2d

    .line 3477
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3478
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3479
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2a

    .line 3480
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3481
    const/4 v0, 0x1

    .line 3476
    .end local v3  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 3485
    .end local v2  # "i":I
    :cond_2d
    return v0
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3455
    const/4 v0, 0x0

    .line 3457
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3458
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_2e

    .line 3459
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3460
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3461
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2b

    .line 3462
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3463
    const/4 v0, 0x1

    .line 3458
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 3466
    .end local v2  # "i":I
    :cond_2e
    return v0
.end method

.method private removeWidgetsForPackageLocked(Ljava/lang/String;II)V
    .registers 8
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "parentUserId"  # I

    .line 3443
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3444
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_33

    .line 3445
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3446
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3447
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_30

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 3448
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 3449
    invoke-direct {p0, v2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 3444
    .end local v2  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3452
    .end local v1  # "i":I
    :cond_33
    return-void
.end method

.method private resolveHostUidLocked(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 690
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 691
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_59

    .line 692
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 693
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_56

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 694
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_46

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " resolved to uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppWidgetServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_46
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {v3, p2, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 698
    return-void

    .line 691
    .end local v2  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 701
    .end local v1  # "i":I
    :cond_59
    return-void
.end method

.method private saveGroupStateAsync(I)V
    .registers 4
    .param p1, "groupId"  # I

    .line 1936
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1937
    return-void
.end method

.method private saveStateLocked(I)V
    .registers 11
    .param p1, "userId"  # I

    .line 2952
    const-string v0, "AppWidgetServiceImpl"

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    .line 2954
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 2956
    .local v1, "profileIds":[I
    array-length v2, v1

    .line 2957
    .local v2, "profileCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_44

    .line 2958
    aget v4, v1, v3

    .line 2960
    .local v4, "profileId":I
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v5

    .line 2963
    .local v5, "file":Landroid/util/AtomicFile;
    :try_start_15
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    .line 2964
    .local v6, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v6, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2965
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2b

    .line 2967
    :cond_23
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2968
    const-string v7, "Failed to save state, restoring backup."

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2b} :catch_2c

    .line 2972
    :goto_2b
    goto :goto_41

    .line 2970
    .end local v6  # "stream":Ljava/io/FileOutputStream;
    :catch_2c
    move-exception v6

    .line 2971
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed open state file for write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    .end local v4  # "profileId":I
    .end local v5  # "file":Landroid/util/AtomicFile;
    .end local v6  # "e":Ljava/io/IOException;
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2974
    .end local v3  # "i":I
    :cond_44
    return-void
.end method

.method private scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .registers 8
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "viewId"  # I

    .line 1965
    if-eqz p2, :cond_56

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    goto :goto_56

    .line 1970
    :cond_6
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 1971
    .local v0, "requestId":J
    if-eqz p1, :cond_13

    .line 1972
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1974
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

    .line 1980
    :cond_30
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1981
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1982
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1983
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1984
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1985
    iput p2, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1987
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1989
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1990
    return-void

    .line 1977
    .end local v2  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_55
    :goto_55
    return-void

    .line 1968
    .end local v0  # "requestId":J
    :cond_56
    :goto_56
    return-void
.end method

.method private scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .registers 11
    .param p1, "userId"  # I

    .line 2116
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    .line 2118
    .local v0, "profileIds":[I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2119
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_4f

    .line 2120
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2122
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v4, 0x0

    .line 2123
    .local v4, "hostInGroup":Z
    array-length v5, v0

    .line 2124
    .local v5, "M":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1b
    if-ge v6, v5, :cond_2a

    .line 2125
    aget v7, v0, v6

    .line 2126
    .local v7, "profileId":I
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-ne v8, v7, :cond_27

    .line 2127
    const/4 v4, 0x1

    .line 2128
    goto :goto_2a

    .line 2124
    .end local v7  # "profileId":I
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 2132
    .end local v6  # "j":I
    :cond_2a
    :goto_2a
    if-nez v4, :cond_2d

    .line 2133
    goto :goto_4c

    .line 2136
    :cond_2d
    if-eqz v3, :cond_4c

    iget-boolean v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v6, :cond_4c

    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v6, :cond_38

    .line 2137
    goto :goto_4c

    .line 2140
    :cond_38
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v6

    .line 2141
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2142
    iget-object v7, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v7, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2144
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2146
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2119
    .end local v3  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4  # "hostInGroup":Z
    .end local v5  # "M":I
    .end local v6  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 2148
    .end local v2  # "i":I
    :cond_4f
    return-void
.end method

.method private scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 7
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2079
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2080
    .local v0, "requestId":J
    if-eqz p1, :cond_13

    .line 2082
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    .line 2083
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 2085
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

    .line 2090
    :cond_2c
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2091
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2092
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2093
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2094
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2095
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2097
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2099
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2100
    return-void

    .line 2087
    .end local v2  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_55
    :goto_55
    return-void
.end method

.method private scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .registers 8
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "updateViews"  # Landroid/widget/RemoteViews;

    .line 2044
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2045
    .local v0, "requestId":J
    if-eqz p1, :cond_e

    .line 2046
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2048
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

    .line 2053
    :cond_27
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2054
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2055
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2056
    if-eqz p2, :cond_3c

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2057
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2058
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2060
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2062
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2063
    return-void

    .line 2050
    .end local v2  # "args":Lcom/android/internal/os/SomeArgs;
    :cond_54
    :goto_54
    return-void
.end method

.method private sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userHandle"  # Landroid/os/UserHandle;

    .line 3509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3511
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 3513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3514
    nop

    .line 3515
    return-void

    .line 3513
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2345
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2346
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2347
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2348
    return-void
.end method

.method private sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2352
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2353
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2354
    return-void
.end method

.method private sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4
    .param p1, "p"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2332
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2333
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2334
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 5
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"  # [I

    .line 2337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2338
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2339
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2340
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2341
    return-void
.end method

.method private static serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 11
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2479
    const-string v0, "g"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2480
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2481
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rid"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2482
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2483
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_3d

    .line 2484
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "p"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2486
    :cond_3d
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_ad

    .line 2487
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v3, "appWidgetMinWidth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2488
    .local v2, "minWidth":I
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v4, "appWidgetMinHeight"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2489
    .local v3, "minHeight":I
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxWidth"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2490
    .local v4, "maxWidth":I
    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v6, "appWidgetMaxHeight"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2491
    .local v5, "maxHeight":I
    const/4 v6, 0x0

    if-lez v2, :cond_66

    move v7, v2

    goto :goto_67

    :cond_66
    move v7, v6

    :goto_67
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "min_width"

    invoke-interface {p0, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2492
    if-lez v3, :cond_75

    move v7, v3

    goto :goto_76

    :cond_75
    move v7, v6

    :goto_76
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "min_height"

    invoke-interface {p0, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2493
    if-lez v4, :cond_84

    move v7, v4

    goto :goto_85

    :cond_84
    move v7, v6

    :goto_85
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "max_width"

    invoke-interface {p0, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2494
    if-lez v5, :cond_92

    move v6, v5

    :cond_92
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "max_height"

    invoke-interface {p0, v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2495
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v7, "appWidgetCategory"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "host_category"

    invoke-interface {p0, v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2498
    .end local v2  # "minWidth":I
    .end local v3  # "minHeight":I
    .end local v4  # "maxWidth":I
    .end local v5  # "maxHeight":I
    :cond_ad
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2499
    return-void
.end method

.method private static serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 6
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2471
    const-string v0, "h"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2472
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "pkg"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2473
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2474
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tag"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2475
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2476
    return-void
.end method

.method private static serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 6
    .param p0, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "p"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2460
    const-string/jumbo v0, "p"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2461
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pkg"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cl"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2463
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tag"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2464
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 2465
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    const-string/jumbo v3, "info_tag"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2467
    :cond_3e
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2468
    return-void
.end method

.method private setMinAppWidgetIdLocked(II)V
    .registers 5
    .param p1, "userId"  # I
    .param p2, "minWidgetId"  # I

    .line 1788
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    .line 1789
    .local v0, "nextAppWidgetId":I
    if-ge v0, p2, :cond_b

    .line 1790
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    :cond_b
    return-void
.end method

.method private tagProvidersAndHosts()V
    .registers 5

    .line 2977
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2978
    .local v0, "providerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_16

    .line 2979
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2980
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 2978
    .end local v2  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2983
    .end local v1  # "i":I
    :cond_16
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2984
    .local v1, "hostCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_2c

    .line 2985
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2986
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 2984
    .end local v3  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2988
    .end local v2  # "i":I
    :cond_2c
    return-void
.end method

.method private unbindService(Landroid/content/ServiceConnection;)V
    .registers 5
    .param p1, "connection"  # Landroid/content/ServiceConnection;

    .line 3530
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3532
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 3534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3535
    nop

    .line 3536
    return-void

    .line 3534
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 6
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 680
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 681
    .local v0, "widgetCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 682
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 683
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 684
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 681
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 687
    .end local v1  # "j":I
    :cond_21
    return-void
.end method

.method private updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .registers 11
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetIds"  # [I
    .param p3, "views"  # Landroid/widget/RemoteViews;
    .param p4, "partially"  # Z

    .line 1754
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1756
    .local v0, "userId":I
    if-eqz p2, :cond_31

    array-length v1, p2

    if-nez v1, :cond_a

    goto :goto_31

    .line 1761
    :cond_a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1762
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1763
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1765
    array-length v2, p2

    .line 1766
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_2c

    .line 1767
    aget v4, p2, v3

    .line 1771
    .local v4, "appWidgetId":I
    nop

    .line 1772
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1771
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 1774
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_29

    .line 1775
    invoke-direct {p0, v5, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1766
    .end local v4  # "appWidgetId":I
    .end local v5  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1778
    .end local v2  # "N":I
    .end local v3  # "i":I
    :cond_2c
    monitor-exit v1

    .line 1779
    return-void

    .line 1778
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2e

    throw v2

    .line 1757
    :cond_31
    :goto_31
    return-void
.end method

.method private updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    .registers 8
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "views"  # Landroid/widget/RemoteViews;
    .param p3, "isPartialUpdate"  # Z

    .line 1941
    if-eqz p1, :cond_6c

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_6c

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v0, :cond_6c

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v0, :cond_6c

    .line 1944
    if-eqz p3, :cond_1e

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1e

    .line 1946
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_20

    .line 1949
    :cond_1e
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1952
    :goto_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_65

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_65

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1954
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    move v1, v0

    .local v1, "memoryUsage":I
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-gt v0, v2, :cond_3c

    goto :goto_65

    .line 1955
    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1956
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1960
    .end local v1  # "memoryUsage":I
    :cond_65
    :goto_65
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 1962
    :cond_6c
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .registers 24
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    .line 3365
    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 3367
    .local v4, "providersUpdated":Z
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3368
    .local v5, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3369
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3370
    invoke-direct {v0, v6, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 3373
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_20

    const/4 v8, 0x0

    goto :goto_24

    :cond_20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 3374
    .local v8, "N":I
    :goto_24
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_25
    if-ge v9, v8, :cond_ec

    .line 3375
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 3376
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3378
    .local v11, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_42

    .line 3379
    move/from16 v16, v4

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    goto/16 :goto_e0

    .line 3382
    :cond_42
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d8

    .line 3383
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v13, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v16, v4

    .end local v4  # "providersUpdated":Z
    .local v16, "providersUpdated":Z
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v12, v13, v14, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3386
    .local v12, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v0, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v13

    .line 3387
    .local v13, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v13, :cond_7f

    .line 3388
    invoke-direct {v0, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 3389
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3390
    const/4 v4, 0x1

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    .end local v16  # "providersUpdated":Z
    .restart local v4  # "providersUpdated":Z
    goto/16 :goto_e2

    .line 3388
    .end local v4  # "providersUpdated":Z
    .restart local v16  # "providersUpdated":Z
    :cond_77
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    goto/16 :goto_e0

    .line 3393
    :cond_7f
    invoke-direct {v0, v12, v10, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v14

    .line 3394
    .local v14, "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v14, :cond_d0

    .line 3395
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3397
    iget-object v15, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v15, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3399
    iget-object v15, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3400
    .local v15, "M":I
    if-lez v15, :cond_c9

    .line 3401
    iget-object v4, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v4

    .line 3405
    .local v4, "appWidgetIds":[I
    invoke-direct {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3406
    invoke-direct {v0, v13, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 3409
    const/16 v17, 0x0

    move-object/from16 v18, v6

    move/from16 v6, v17

    .local v6, "j":I
    .local v18, "intent":Landroid/content/Intent;
    :goto_a6
    if-ge v6, v15, :cond_c1

    .line 3410
    move-object/from16 v17, v7

    .end local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v17, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3411
    .local v7, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    move/from16 v19, v8

    const/4 v8, 0x0

    .end local v8  # "N":I
    .local v19, "N":I
    iput-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 3412
    invoke-direct {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3409
    .end local v7  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v17

    move/from16 v8, v19

    goto :goto_a6

    .end local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19  # "N":I
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8  # "N":I
    :cond_c1
    move-object/from16 v17, v7

    move/from16 v19, v8

    .line 3415
    .end local v6  # "j":I
    .end local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8  # "N":I
    .restart local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19  # "N":I
    invoke-direct {v0, v13, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    goto :goto_d6

    .line 3400
    .end local v4  # "appWidgetIds":[I
    .end local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18  # "intent":Landroid/content/Intent;
    .end local v19  # "N":I
    .local v6, "intent":Landroid/content/Intent;
    .restart local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8  # "N":I
    :cond_c9
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    .end local v6  # "intent":Landroid/content/Intent;
    .end local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8  # "N":I
    .restart local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18  # "intent":Landroid/content/Intent;
    .restart local v19  # "N":I
    goto :goto_d6

    .line 3394
    .end local v15  # "M":I
    .end local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18  # "intent":Landroid/content/Intent;
    .end local v19  # "N":I
    .restart local v6  # "intent":Landroid/content/Intent;
    .restart local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8  # "N":I
    :cond_d0
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    .line 3418
    .end local v6  # "intent":Landroid/content/Intent;
    .end local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8  # "N":I
    .restart local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18  # "intent":Landroid/content/Intent;
    .restart local v19  # "N":I
    :goto_d6
    const/4 v4, 0x1

    .end local v16  # "providersUpdated":Z
    .local v4, "providersUpdated":Z
    goto :goto_e2

    .line 3382
    .end local v12  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v13  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14  # "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18  # "intent":Landroid/content/Intent;
    .end local v19  # "N":I
    .restart local v6  # "intent":Landroid/content/Intent;
    .restart local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8  # "N":I
    :cond_d8
    move/from16 v16, v4

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    .line 3374
    .end local v4  # "providersUpdated":Z
    .end local v6  # "intent":Landroid/content/Intent;
    .end local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8  # "N":I
    .end local v10  # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11  # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v16  # "providersUpdated":Z
    .restart local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18  # "intent":Landroid/content/Intent;
    .restart local v19  # "N":I
    :goto_e0
    move/from16 v4, v16

    .end local v16  # "providersUpdated":Z
    .restart local v4  # "providersUpdated":Z
    :goto_e2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_25

    .end local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18  # "intent":Landroid/content/Intent;
    .end local v19  # "N":I
    .restart local v6  # "intent":Landroid/content/Intent;
    .restart local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8  # "N":I
    :cond_ec
    move/from16 v16, v4

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move/from16 v19, v8

    .line 3424
    .end local v4  # "providersUpdated":Z
    .end local v6  # "intent":Landroid/content/Intent;
    .end local v7  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8  # "N":I
    .end local v9  # "i":I
    .restart local v16  # "providersUpdated":Z
    .restart local v17  # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18  # "intent":Landroid/content/Intent;
    .restart local v19  # "N":I
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3425
    .end local v19  # "N":I
    .local v4, "N":I
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    :goto_fc
    if-ltz v6, :cond_132

    .line 3426
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3427
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12f

    .line 3428
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-ne v8, v2, :cond_12f

    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3429
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12f

    .line 3430
    if-eqz v3, :cond_129

    .line 3431
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3433
    :cond_129
    invoke-direct {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3434
    const/4 v8, 0x1

    move/from16 v16, v8

    .line 3425
    .end local v7  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_12f
    add-int/lit8 v6, v6, -0x1

    goto :goto_fc

    .line 3438
    .end local v6  # "i":I
    :cond_132
    return v16
.end method

.method private updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V
    .registers 12
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "suspended"  # Z
    .param p3, "profileId"  # I

    .line 552
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "packagesArray":[Ljava/lang/String;
    if-nez v0, :cond_9

    .line 554
    return-void

    .line 556
    :cond_9
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 557
    .local v1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 558
    :try_start_15
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 559
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_52

    .line 560
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 561
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    .line 562
    .local v6, "providerUserId":I
    if-ne v6, p3, :cond_4f

    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 563
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 564
    goto :goto_4f

    .line 566
    :cond_3b
    invoke-virtual {v5, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 567
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 568
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_4f

    .line 570
    :cond_4c
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 559
    .end local v5  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v6  # "providerUserId":I
    :cond_4f
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 574
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_52
    monitor-exit v2

    .line 575
    return-void

    .line 574
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_15 .. :try_end_56} :catchall_54

    throw v3
.end method

.method private writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z
    .registers 13
    .param p1, "stream"  # Ljava/io/FileOutputStream;
    .param p2, "userId"  # I

    .line 3008
    const-string v0, "b"

    const-string v1, "gs"

    :try_start_4
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3009
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3010
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3011
    invoke-interface {v2, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3012
    const-string/jumbo v4, "version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3014
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3015
    .local v4, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2f
    if-ge v6, v4, :cond_4c

    .line 3016
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3018
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_40

    .line 3019
    goto :goto_49

    .line 3021
    :cond_40
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v8

    if-eqz v8, :cond_49

    .line 3022
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3015
    .end local v7  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_49
    :goto_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 3026
    .end local v6  # "i":I
    :cond_4c
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 3027
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_54
    if-ge v6, v4, :cond_6b

    .line 3028
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3030
    .local v7, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_65

    .line 3031
    goto :goto_68

    .line 3033
    :cond_65
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3027
    .end local v7  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 3036
    .end local v6  # "i":I
    :cond_6b
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 3037
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_73
    if-ge v6, v4, :cond_8c

    .line 3038
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3040
    .local v7, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-eq v8, p2, :cond_86

    .line 3041
    goto :goto_89

    .line 3043
    :cond_86
    invoke-static {v2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3037
    .end local v7  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_89
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 3046
    .end local v6  # "i":I
    :cond_8c
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3047
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bb

    .line 3048
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 3050
    .local v7, "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, p2, :cond_a9

    .line 3051
    goto :goto_92

    .line 3053
    :cond_a9
    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3054
    const-string/jumbo v8, "packageName"

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3055
    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3056
    nop

    .end local v7  # "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_92

    .line 3058
    :cond_bb
    invoke-interface {v2, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3059
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c1} :catch_c2

    .line 3060
    return v3

    .line 3061
    .end local v2  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4  # "N":I
    .end local v6  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_c2
    move-exception v0

    .line 3062
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 3
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2852
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2854
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2855
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 12
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "hostId"  # I

    .line 912
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 914
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allocateAppWidgetId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 921
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 923
    :try_start_26
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 924
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instant package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot host app widgets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 928
    :cond_4c
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 930
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_5d

    .line 931
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    :cond_5d
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result v2

    .line 938
    .local v2, "appWidgetId":I
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 939
    .local v3, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v4

    .line 941
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 942
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iput v2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 943
    iput-object v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 945
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 948
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 950
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v6, :cond_a7

    .line 951
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allocated widget id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_a7
    monitor-exit v1

    return v2

    .line 956
    .end local v2  # "appWidgetId":I
    .end local v3  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v4  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_a9
    move-exception v2

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_26 .. :try_end_ab} :catchall_a9

    throw v2
.end method

.method public bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 22
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetId"  # I
    .param p3, "providerProfileId"  # I
    .param p4, "providerComponent"  # Landroid/content/ComponentName;
    .param p5, "options"  # Landroid/os/Bundle;

    .line 1100
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1102
    .local v6, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindAppWidgetId() "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AppWidgetServiceImpl"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_28
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1110
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_37

    .line 1111
    return v7

    .line 1116
    :cond_37
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 1117
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1116
    invoke-virtual {v0, v8, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1118
    return v7

    .line 1121
    :cond_44
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1122
    :try_start_47
    invoke-direct {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1125
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1127
    monitor-exit v8

    return v7

    .line 1132
    :cond_54
    nop

    .line 1133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1132
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    .line 1135
    .local v0, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v0, :cond_77

    .line 1136
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad widget id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    monitor-exit v8

    return v7

    .line 1140
    :cond_77
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_9f

    .line 1141
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Widget id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " already bound to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    monitor-exit v8

    return v7

    .line 1146
    :cond_9f
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v9

    .line 1148
    .local v9, "providerUid":I
    if-gez v9, :cond_cd

    .line 1149
    const-string v10, "AppWidgetServiceImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not installed  for profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    monitor-exit v8

    return v7

    .line 1156
    :cond_cd
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v5, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1157
    .local v10, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v1, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v11

    .line 1159
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v11, :cond_f9

    .line 1160
    const-string v12, "AppWidgetServiceImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No widget provider "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " for profile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    monitor-exit v8

    return v7

    .line 1165
    :cond_f9
    iget-boolean v12, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v12, :cond_115

    .line 1166
    const-string v12, "AppWidgetServiceImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t bind to a 3rd party provider in safe mode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    monitor-exit v8

    return v7

    .line 1171
    :cond_115
    iput-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1172
    if-eqz p5, :cond_11e

    invoke-static/range {p5 .. p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    goto :goto_123

    :cond_11e
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    :goto_123
    iput-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 1175
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v13, "appWidgetCategory"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_137

    .line 1176
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v14, "appWidgetCategory"

    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1180
    :cond_137
    iget-object v12, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    invoke-virtual {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1184
    iget-object v12, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1185
    .local v12, "widgetCount":I
    if-ne v12, v13, :cond_14a

    .line 1187
    invoke-direct {v1, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1194
    :cond_14a
    new-array v14, v13, [I

    aput v3, v14, v7

    invoke-direct {v1, v11, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1197
    iget-object v7, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v7

    invoke-direct {v1, v11, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1199
    invoke-direct {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1201
    sget-boolean v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v7, :cond_181

    .line 1202
    const-string v7, "AppWidgetServiceImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bound widget "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    .end local v0  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v9  # "providerUid":I
    .end local v10  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v11  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v12  # "widgetCount":I
    :cond_181
    monitor-exit v8

    .line 1206
    return v13

    .line 1204
    :catchall_183
    move-exception v0

    monitor-exit v8
    :try_end_185
    .catchall {:try_start_47 .. :try_end_185} :catchall_183

    throw v0
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z
    .registers 31
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetId"  # I
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "caller"  # Landroid/app/IApplicationThread;
    .param p5, "activtiyToken"  # Landroid/os/IBinder;
    .param p6, "connection"  # Landroid/app/IServiceConnection;
    .param p7, "flags"  # I

    .line 1267
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v12, p3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 1268
    .local v13, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindRemoteViewsService() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppWidgetServiceImpl"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_24
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1273
    :try_start_27
    invoke-direct {v1, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1277
    nop

    .line 1278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_119

    .line 1277
    move-object/from16 v15, p1

    :try_start_31
    invoke-direct {v1, v2, v0, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    move-object v11, v0

    .line 1280
    .local v11, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v11, :cond_10c

    .line 1285
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_f2

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v10, v0

    .line 1294
    .local v10, "componentName":Landroid/content/ComponentName;
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1295
    .local v9, "providerPackage":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1296
    .local v8, "servicePackage":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1303
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v3, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1304
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    .line 1303
    invoke-virtual {v0, v10, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V

    .line 1309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_66
    .catchall {:try_start_31 .. :try_end_66} :catchall_117

    move-wide/from16 v16, v3

    .line 1313
    .local v16, "callingIdentity":J
    :try_start_68
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1315
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1316
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1317
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v18
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_82} :catch_d0
    .catchall {:try_start_68 .. :try_end_82} :catchall_c2

    .line 1313
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p3

    move-object/from16 v19, v8

    .end local v8  # "servicePackage":Ljava/lang/String;
    .local v19, "servicePackage":Ljava/lang/String;
    move-object/from16 v8, p6

    move-object/from16 v20, v9

    .end local v9  # "providerPackage":Ljava/lang/String;
    .local v20, "providerPackage":Ljava/lang/String;
    move/from16 v9, p7

    move-object/from16 v21, v10

    .end local v10  # "componentName":Landroid/content/ComponentName;
    .local v21, "componentName":Landroid/content/ComponentName;
    move-object v10, v0

    move/from16 v22, v13

    move-object v13, v11

    .end local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v22, "userId":I
    move/from16 v11, v18

    :try_start_98
    invoke-interface/range {v3 .. v11}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_ba

    .line 1322
    iget-object v0, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 1323
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v12}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1322
    invoke-direct {v1, v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_b4} :catch_c0
    .catchall {:try_start_98 .. :try_end_b4} :catchall_be

    .line 1324
    const/4 v0, 0x1

    .line 1329
    :try_start_b5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v14

    .line 1324
    return v0

    .line 1329
    :cond_ba
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_dd

    :catchall_be
    move-exception v0

    goto :goto_cc

    .line 1326
    :catch_c0
    move-exception v0

    goto :goto_da

    .line 1329
    .end local v19  # "servicePackage":Ljava/lang/String;
    .end local v20  # "providerPackage":Ljava/lang/String;
    .end local v21  # "componentName":Landroid/content/ComponentName;
    .end local v22  # "userId":I
    .restart local v8  # "servicePackage":Ljava/lang/String;
    .restart local v9  # "providerPackage":Ljava/lang/String;
    .restart local v10  # "componentName":Landroid/content/ComponentName;
    .restart local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    :catchall_c2
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v13

    move-object v13, v11

    .end local v8  # "servicePackage":Ljava/lang/String;
    .end local v9  # "providerPackage":Ljava/lang/String;
    .end local v10  # "componentName":Landroid/content/ComponentName;
    .end local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v19  # "servicePackage":Ljava/lang/String;
    .restart local v20  # "providerPackage":Ljava/lang/String;
    .restart local v21  # "componentName":Landroid/content/ComponentName;
    .restart local v22  # "userId":I
    :goto_cc
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v22  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "callingPackage":Ljava/lang/String;
    .end local p2  # "appWidgetId":I
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "caller":Landroid/app/IApplicationThread;
    .end local p5  # "activtiyToken":Landroid/os/IBinder;
    .end local p6  # "connection":Landroid/app/IServiceConnection;
    .end local p7  # "flags":I
    throw v0

    .line 1326
    .end local v19  # "servicePackage":Ljava/lang/String;
    .end local v20  # "providerPackage":Ljava/lang/String;
    .end local v21  # "componentName":Landroid/content/ComponentName;
    .restart local v8  # "servicePackage":Ljava/lang/String;
    .restart local v9  # "providerPackage":Ljava/lang/String;
    .restart local v10  # "componentName":Landroid/content/ComponentName;
    .restart local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    .restart local p2  # "appWidgetId":I
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "caller":Landroid/app/IApplicationThread;
    .restart local p5  # "activtiyToken":Landroid/os/IBinder;
    .restart local p6  # "connection":Landroid/app/IServiceConnection;
    .restart local p7  # "flags":I
    :catch_d0
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v13

    move-object v13, v11

    .line 1329
    .end local v8  # "servicePackage":Ljava/lang/String;
    .end local v9  # "providerPackage":Ljava/lang/String;
    .end local v10  # "componentName":Landroid/content/ComponentName;
    .end local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v19  # "servicePackage":Ljava/lang/String;
    .restart local v20  # "providerPackage":Ljava/lang/String;
    .restart local v21  # "componentName":Landroid/content/ComponentName;
    .restart local v22  # "userId":I
    :goto_da
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    :goto_dd
    nop

    .line 1331
    .end local v13  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v16  # "callingIdentity":J
    .end local v19  # "servicePackage":Ljava/lang/String;
    .end local v20  # "providerPackage":Ljava/lang/String;
    .end local v21  # "componentName":Landroid/content/ComponentName;
    monitor-exit v14

    .line 1334
    const/4 v0, 0x0

    return v0

    .line 1297
    .end local v22  # "userId":I
    .restart local v8  # "servicePackage":Ljava/lang/String;
    .restart local v9  # "providerPackage":Ljava/lang/String;
    .restart local v10  # "componentName":Landroid/content/ComponentName;
    .restart local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    :cond_e1
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v13

    move-object v13, v11

    .end local v8  # "servicePackage":Ljava/lang/String;
    .end local v9  # "providerPackage":Ljava/lang/String;
    .end local v10  # "componentName":Landroid/content/ComponentName;
    .end local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v19  # "servicePackage":Ljava/lang/String;
    .restart local v20  # "providerPackage":Ljava/lang/String;
    .restart local v21  # "componentName":Landroid/content/ComponentName;
    .restart local v22  # "userId":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "The taget service not in the same package as the widget provider"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v22  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "callingPackage":Ljava/lang/String;
    .end local p2  # "appWidgetId":I
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "caller":Landroid/app/IApplicationThread;
    .end local p5  # "activtiyToken":Landroid/os/IBinder;
    .end local p6  # "connection":Landroid/app/IServiceConnection;
    .end local p7  # "flags":I
    throw v0

    .line 1286
    .end local v19  # "servicePackage":Ljava/lang/String;
    .end local v20  # "providerPackage":Ljava/lang/String;
    .end local v21  # "componentName":Landroid/content/ComponentName;
    .restart local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    .restart local p2  # "appWidgetId":I
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "caller":Landroid/app/IApplicationThread;
    .restart local p5  # "activtiyToken":Landroid/os/IBinder;
    .restart local p6  # "connection":Landroid/app/IServiceConnection;
    .restart local p7  # "flags":I
    :cond_f2
    move/from16 v22, v13

    move-object v13, v11

    .end local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v22  # "userId":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider for widget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v22  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "callingPackage":Ljava/lang/String;
    .end local p2  # "appWidgetId":I
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "caller":Landroid/app/IApplicationThread;
    .end local p5  # "activtiyToken":Landroid/os/IBinder;
    .end local p6  # "connection":Landroid/app/IServiceConnection;
    .end local p7  # "flags":I
    throw v0

    .line 1281
    .restart local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    .restart local p2  # "appWidgetId":I
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "caller":Landroid/app/IApplicationThread;
    .restart local p5  # "activtiyToken":Landroid/os/IBinder;
    .restart local p6  # "connection":Landroid/app/IServiceConnection;
    .restart local p7  # "flags":I
    :cond_10c
    move/from16 v22, v13

    move-object v13, v11

    .end local v11  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v22  # "userId":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad widget id"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v22  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "callingPackage":Ljava/lang/String;
    .end local p2  # "appWidgetId":I
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "caller":Landroid/app/IApplicationThread;
    .end local p5  # "activtiyToken":Landroid/os/IBinder;
    .end local p6  # "connection":Landroid/app/IServiceConnection;
    .end local p7  # "flags":I
    throw v0

    .line 1331
    .local v13, "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    .restart local p2  # "appWidgetId":I
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "caller":Landroid/app/IApplicationThread;
    .restart local p5  # "activtiyToken":Landroid/os/IBinder;
    .restart local p6  # "connection":Landroid/app/IServiceConnection;
    .restart local p7  # "flags":I
    :catchall_117
    move-exception v0

    goto :goto_11c

    :catchall_119
    move-exception v0

    move-object/from16 v15, p1

    :goto_11c
    move/from16 v22, v13

    .end local v13  # "userId":I
    .restart local v22  # "userId":I
    :goto_11e
    monitor-exit v14
    :try_end_11f
    .catchall {:try_start_b5 .. :try_end_11f} :catchall_120

    throw v0

    :catchall_120
    move-exception v0

    goto :goto_11e
.end method

.method clearWidgetsLocked()V
    .registers 2

    .line 2928
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2930
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetsClearedLocked()V

    .line 2931
    return-void
.end method

.method public createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .registers 23
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetId"  # I
    .param p3, "intentFlags"  # I

    .line 1049
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1051
    .local v4, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAppWidgetConfigIntentSender() "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AppWidgetServiceImpl"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_24
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1058
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1059
    :try_start_2c
    invoke-direct {v1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1063
    nop

    .line 1064
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1063
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    move-object v6, v0

    .line 1066
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v6, :cond_9e

    .line 1070
    iget-object v0, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_b7

    move-object v7, v0

    .line 1071
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v7, :cond_85

    .line 1076
    move/from16 v8, p3

    and-int/lit16 v9, v8, -0xc4

    .line 1078
    .local v9, "secureFlags":I
    :try_start_44
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1079
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetId"

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1080
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1081
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_bc

    move-wide/from16 v17, v11

    .line 1086
    .local v17, "identity":J
    :try_start_61
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v14, 0x54000000

    const/4 v15, 0x0

    new-instance v0, Landroid/os/UserHandle;

    .line 1089
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v13

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 1086
    move-object v13, v10

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1090
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_80

    .line 1092
    :try_start_7b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5

    .line 1086
    return-object v0

    .line 1092
    :catchall_80
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "callingPackage":Ljava/lang/String;
    .end local p2  # "appWidgetId":I
    .end local p3  # "intentFlags":I
    throw v0

    .line 1072
    .end local v9  # "secureFlags":I
    .end local v10  # "intent":Landroid/content/Intent;
    .end local v17  # "identity":J
    .restart local v4  # "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    .restart local p2  # "appWidgetId":I
    .restart local p3  # "intentFlags":I
    :cond_85
    move/from16 v8, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget not bound "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "callingPackage":Ljava/lang/String;
    .end local p2  # "appWidgetId":I
    .end local p3  # "intentFlags":I
    throw v0

    .line 1067
    .end local v7  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v4  # "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    .restart local p2  # "appWidgetId":I
    .restart local p3  # "intentFlags":I
    :cond_9e
    move/from16 v8, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad widget id "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "callingPackage":Ljava/lang/String;
    .end local p2  # "appWidgetId":I
    .end local p3  # "intentFlags":I
    throw v0

    .line 1094
    .end local v6  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v4  # "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    .restart local p2  # "appWidgetId":I
    .restart local p3  # "intentFlags":I
    :catchall_b7
    move-exception v0

    move/from16 v8, p3

    :goto_ba
    monitor-exit v5
    :try_end_bb
    .catchall {:try_start_7b .. :try_end_bb} :catchall_bc

    throw v0

    :catchall_bc
    move-exception v0

    goto :goto_ba
.end method

.method public deleteAllHosts()V
    .registers 10

    .line 1372
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1374
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAllHosts() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1379
    :try_start_21
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1381
    const/4 v2, 0x0

    .line 1383
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1384
    .local v3, "N":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2d
    if-ltz v4, :cond_64

    .line 1385
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1388
    .local v5, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-ne v6, v7, :cond_61

    .line 1389
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1390
    const/4 v2, 0x1

    .line 1392
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v6, :cond_61

    .line 1393
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    .end local v5  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_61
    add-int/lit8 v4, v4, -0x1

    goto :goto_2d

    .line 1398
    .end local v4  # "i":I
    :cond_64
    if-eqz v2, :cond_69

    .line 1399
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1401
    .end local v2  # "changed":Z
    .end local v3  # "N":I
    :cond_69
    monitor-exit v1

    .line 1402
    return-void

    .line 1401
    :catchall_6b
    move-exception v2

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_21 .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method public deleteAppWidgetId(Ljava/lang/String;I)V
    .registers 9
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetId"  # I

    .line 961
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 963
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppWidgetId() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 971
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 975
    nop

    .line 976
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 975
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 978
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v2, :cond_36

    .line 979
    monitor-exit v1

    return-void

    .line 982
    :cond_36
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 984
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 986
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_62

    .line 987
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted widget id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_62
    monitor-exit v1

    .line 991
    return-void

    .line 990
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public deleteHost(Ljava/lang/String;I)V
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "hostId"  # I

    .line 1339
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1341
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteHost() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1348
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1349
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1353
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1354
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 1356
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-nez v3, :cond_3a

    .line 1357
    monitor-exit v1

    return-void

    .line 1360
    :cond_3a
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1362
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1364
    sget-boolean v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_5c

    .line 1365
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    .end local v2  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_5c
    monitor-exit v1

    .line 1368
    return-void

    .line 1367
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_26 .. :try_end_60} :catchall_5e

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 761
    :cond_b
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_e
    array-length v1, p3

    if-lez v1, :cond_20

    const-string v1, "--proto"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 763
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_23

    .line 765
    :cond_20
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 767
    :goto_23
    monitor-exit v0

    .line 768
    return-void

    .line 767
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 7
    .param p1, "componentName"  # Landroid/content/ComponentName;

    .line 1211
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1213
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetIds() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1221
    :try_start_2a
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1225
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1226
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1228
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_45

    .line 1229
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 1232
    :cond_45
    const/4 v4, 0x0

    new-array v4, v4, [I

    monitor-exit v1

    return-object v4

    .line 1233
    .end local v2  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    .registers 8
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "hostId"  # I

    .line 1238
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1240
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetIdsForHost() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1247
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1248
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1252
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1253
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 1255
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_40

    .line 1256
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 1259
    :cond_40
    const/4 v4, 0x0

    new-array v4, v4, [I

    monitor-exit v1

    return-object v4

    .line 1260
    .end local v2  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_45

    throw v2
.end method

.method public getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetId"  # I

    .line 1406
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1408
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetInfo() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1415
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1416
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1420
    nop

    .line 1421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1420
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1423
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_48

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_48

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_48

    .line 1424
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1427
    :cond_48
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1428
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetId"  # I

    .line 1493
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1495
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetOptions() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1502
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1503
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1507
    nop

    .line 1508
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1507
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1510
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_40

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v3, :cond_40

    .line 1511
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1514
    :cond_40
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v1

    return-object v3

    .line 1515
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public getAppWidgetPackageList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4849
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4850
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4851
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_45

    .line 4852
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4853
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v4, :cond_42

    .line 4854
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4855
    .local v4, "pack":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4856
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v5, :cond_42

    .line 4857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "widget package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppWidgetServiceImpl"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    .end local v3  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v4  # "pack":Ljava/lang/String;
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4861
    .end local v2  # "i":I
    :cond_45
    return-object v1
.end method

.method public getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetId"  # I

    .line 1433
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1435
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetViews() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1442
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1443
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1447
    nop

    .line 1448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1447
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1450
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_3e

    .line 1451
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1454
    :cond_3e
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1455
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_41

    throw v2
.end method

.method public getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 15
    .param p1, "categoryFilter"  # I
    .param p2, "profileId"  # I
    .param p3, "packageName"  # Ljava/lang/String;
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

    .line 1704
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1706
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstalledProvidersForProfiles() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1712
    const/4 v1, 0x0

    return-object v1

    .line 1715
    :cond_28
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1716
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1717
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instant uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot access widget providers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1722
    :cond_58
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1726
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1727
    .local v3, "providerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_67
    if-ge v4, v3, :cond_b7

    .line 1728
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1729
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1733
    .local v6, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz p3, :cond_86

    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 1734
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    goto :goto_86

    :cond_84
    const/4 v7, 0x0

    goto :goto_87

    :cond_86
    :goto_86
    const/4 v7, 0x1

    .line 1735
    .local v7, "inPackage":Z
    :goto_87
    iget-boolean v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v8, :cond_b4

    iget v8, v6, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v8, p1

    if-eqz v8, :cond_b4

    if-nez v7, :cond_93

    .line 1736
    goto :goto_b4

    .line 1740
    :cond_93
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1741
    .local v8, "providerProfileId":I
    if-ne v8, p2, :cond_b4

    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v10, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 1743
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1742
    invoke-virtual {v9, v10, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 1744
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1727
    .end local v5  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v6  # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v7  # "inPackage":Z
    .end local v8  # "providerProfileId":I
    :cond_b4
    :goto_b4
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 1748
    .end local v4  # "i":I
    :cond_b7
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 1749
    .end local v2  # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v3  # "providerCount":I
    :catchall_be
    move-exception v2

    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_2b .. :try_end_c0} :catchall_be

    throw v2
.end method

.method public getWidgetParticipants(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2503
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2508
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method handleUserUnlocked(I)V
    .registers 12
    .param p1, "userId"  # I

    .line 2715
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2716
    return-void

    .line 2718
    :cond_7
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is no longer unlocked - exiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    return-void

    .line 2722
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2723
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2724
    :try_start_32
    const-string v3, "appwidget ensure"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2725
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2726
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2727
    const-string v3, "appwidget reload"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2728
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 2729
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2731
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2732
    .local v3, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_57
    if-ge v6, v3, :cond_a1

    .line 2733
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2736
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-eq v8, p1, :cond_68

    .line 2737
    goto :goto_9e

    .line 2740
    :cond_68
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9e

    .line 2741
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appwidget init "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2742
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2741
    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2743
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2744
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v8

    .line 2745
    .local v8, "appWidgetIds":[I
    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2746
    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2747
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2732
    .end local v7  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v8  # "appWidgetIds":[I
    :cond_9e
    :goto_9e
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 2750
    .end local v3  # "N":I
    .end local v6  # "i":I
    :cond_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_32 .. :try_end_a2} :catchall_cb

    .line 2751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing of handleUserUnlocked u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2751
    const-string v3, "AppWidgetServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    return-void

    .line 2750
    :catchall_cb
    move-exception v3

    :try_start_cc
    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v3
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "grantId"  # I

    .line 995
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 996
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

    .line 1000
    :cond_1e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_26
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1006
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 1007
    .local v1, "packageUid":I
    if-gez v1, :cond_32

    .line 1008
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1011
    :cond_32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1012
    .local v2, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1013
    .end local v1  # "packageUid":I
    .end local v2  # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_21

    .line 2942
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2943
    :try_start_b
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2944
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1b

    .line 2945
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2947
    .end local v1  # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1b
    monitor-exit v0

    .line 2948
    const/4 v0, 0x0

    return v0

    .line 2947
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v1

    .line 2940
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system process can call this"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRequestPinAppWidgetSupported()Z
    .registers 5

    .line 1659
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1660
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1661
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

    .line 1663
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1665
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_40

    .line 1666
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 1667
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutServiceInternal;->isRequestPinItemSupported(II)Z

    move-result v0

    .line 1666
    return v0

    .line 1665
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
    .param p1, "broadcast"  # Landroid/app/PendingIntent;

    .line 1864
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1865
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    .line 1866
    return-void
.end method

.method public synthetic lambda$registerForBroadcastsLocked$1$AppWidgetServiceImpl(JLandroid/app/PendingIntent;)V
    .registers 11
    .param p1, "period"  # J
    .param p3, "broadcast"  # Landroid/app/PendingIntent;

    .line 2390
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v2, v1, p1

    .line 2390
    const/4 v1, 0x3

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetIds"  # [I
    .param p3, "viewId"  # I

    .line 1541
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1543
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAppWidgetViewDataChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1550
    if-eqz p2, :cond_4c

    array-length v1, p2

    if-nez v1, :cond_2a

    goto :goto_4c

    .line 1554
    :cond_2a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1555
    :try_start_2d
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1557
    array-length v2, p2

    .line 1558
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    if-ge v3, v2, :cond_47

    .line 1559
    aget v4, p2, v3

    .line 1563
    .local v4, "appWidgetId":I
    nop

    .line 1564
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1563
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 1566
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_44

    .line 1567
    invoke-direct {p0, v5, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V

    .line 1558
    .end local v4  # "appWidgetId":I
    .end local v5  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1570
    .end local v2  # "N":I
    .end local v3  # "i":I
    :cond_47
    monitor-exit v1

    .line 1571
    return-void

    .line 1570
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_49

    throw v2

    .line 1551
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .registers 12
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3540
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    .line 3544
    .local v0, "parentId":I
    if-eq v0, p1, :cond_71

    .line 3545
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3546
    const/4 v2, 0x0

    .line 3548
    .local v2, "providersChanged":Z
    :try_start_c
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3549
    .local v3, "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3550
    .local v4, "providerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v4, :cond_36

    .line 3551
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3552
    .local v6, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    if-ne v7, p1, :cond_33

    .line 3553
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3550
    .end local v6  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 3557
    .end local v5  # "i":I
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 3558
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3b
    if-ge v6, v5, :cond_4f

    .line 3559
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3560
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3561
    const/4 v8, 0x0

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v8

    or-int/2addr v2, v8

    .line 3558
    .end local v7  # "packageName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 3566
    .end local v6  # "i":I
    :cond_4f
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 3567
    .local v6, "removedCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_54
    if-ge v7, v6, :cond_62

    .line 3568
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetsForPackageLocked(Ljava/lang/String;II)V

    .line 3567
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 3572
    .end local v7  # "i":I
    :cond_62
    if-nez v2, :cond_66

    if-lez v6, :cond_6c

    .line 3573
    :cond_66
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 3574
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 3576
    .end local v2  # "providersChanged":Z
    .end local v3  # "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4  # "providerCount":I
    .end local v5  # "packageCount":I
    .end local v6  # "removedCount":I
    :cond_6c
    monitor-exit v1

    goto :goto_71

    :catchall_6e
    move-exception v2

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_c .. :try_end_70} :catchall_6e

    throw v2

    .line 3578
    :cond_71
    :goto_71
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 255
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 256
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 257
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 258
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 259
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 260
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 261
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 262
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 264
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 265
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 266
    new-instance v0, Lcom/android/server/policy/IconUtilities;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/IconUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    .line 268
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 269
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerBroadcastReceiver()V

    .line 270
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerOnCrossProfileProvidersChangedListener()V

    .line 272
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;

    invoke-direct {v2, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method onUserStopped(I)V
    .registers 12
    .param p1, "userId"  # I

    .line 3289
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3290
    const/4 v1, 0x0

    .line 3293
    .local v1, "crossProfileWidgetsChanged":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3294
    .local v2, "widgetCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_c
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_56

    .line 3295
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3297
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-ne v7, p1, :cond_22

    move v7, v5

    goto :goto_23

    :cond_22
    move v7, v4

    .line 3298
    .local v7, "hostInUser":Z
    :goto_23
    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_29

    move v8, v5

    goto :goto_2a

    :cond_29
    move v8, v4

    .line 3299
    .local v8, "hasProvider":Z
    :goto_2a
    if-eqz v8, :cond_35

    iget-object v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    if-ne v9, p1, :cond_35

    move v4, v5

    .line 3304
    .local v4, "providerInUser":Z
    :cond_35
    if-eqz v7, :cond_53

    if-eqz v8, :cond_3b

    if-eqz v4, :cond_53

    .line 3305
    :cond_3b
    invoke-virtual {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3306
    iget-object v5, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3307
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3308
    if-eqz v8, :cond_53

    .line 3309
    iget-object v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3310
    iput-object v5, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3294
    .end local v4  # "providerInUser":Z
    .end local v6  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v7  # "hostInUser":Z
    .end local v8  # "hasProvider":Z
    :cond_53
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 3316
    .end local v3  # "i":I
    :cond_56
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3317
    .local v3, "hostCount":I
    add-int/lit8 v6, v3, -0x1

    .local v6, "i":I
    :goto_5e
    if-ltz v6, :cond_80

    .line 3318
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3319
    .local v7, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-ne v8, p1, :cond_7d

    .line 3320
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_78

    move v8, v5

    goto :goto_79

    :cond_78
    move v8, v4

    :goto_79
    or-int/2addr v1, v8

    .line 3321
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3317
    .end local v7  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_7d
    add-int/lit8 v6, v6, -0x1

    goto :goto_5e

    .line 3329
    .end local v6  # "i":I
    :cond_80
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 3330
    .local v4, "grantCount":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_88
    if-ltz v5, :cond_a4

    .line 3331
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 3332
    .local v6, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_a1

    .line 3333
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 3330
    .end local v6  # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_a1
    add-int/lit8 v5, v5, -0x1

    goto :goto_88

    .line 3338
    .end local v5  # "i":I
    :cond_a4
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    .line 3339
    .local v5, "userIndex":I
    if-ltz v5, :cond_b1

    .line 3340
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3344
    :cond_b1
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    .line 3345
    .local v6, "nextIdIndex":I
    if-ltz v6, :cond_be

    .line 3346
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3351
    :cond_be
    if-eqz v1, :cond_c3

    .line 3352
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 3354
    .end local v1  # "crossProfileWidgetsChanged":Z
    .end local v2  # "widgetCount":I
    .end local v3  # "hostCount":I
    .end local v4  # "grantCount":I
    .end local v5  # "userIndex":I
    .end local v6  # "nextIdIndex":I
    :cond_c3
    monitor-exit v0

    .line 3355
    return-void

    .line 3354
    :catchall_c5
    move-exception v1

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_4 .. :try_end_c7} :catchall_c5

    throw v1
.end method

.method onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2862
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_5

    return-void

    .line 2864
    :cond_5
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 2865
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2866
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_20

    .line 2867
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2869
    :cond_20
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2873
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/appwidget/WidgetInjector;->addWidget(Ljava/lang/String;)V

    .line 2878
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2879
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_4b

    .line 2881
    :cond_48
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    .line 2883
    :goto_4b
    return-void
.end method

.method public partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetIds"  # [I
    .param p3, "views"  # Landroid/widget/RemoteViews;

    .line 1531
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1532
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

    .line 1535
    :cond_1f
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1536
    return-void
.end method

.method reloadWidgetsMaskedStateForGroup(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 492
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 493
    return-void

    .line 495
    :cond_9
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 497
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 498
    .local v1, "profileIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_21

    aget v4, v1, v3

    .line 499
    .local v4, "profileId":I
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 498
    .end local v4  # "profileId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 501
    .end local v1  # "profileIds":[I
    :cond_21
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v1
.end method

.method removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 3
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2891
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2893
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2894
    return-void
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 14
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "componentName"  # Landroid/content/ComponentName;
    .param p3, "extras"  # Landroid/os/Bundle;
    .param p4, "resultSender"  # Landroid/content/IntentSender;

    .line 1674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1675
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1677
    .local v7, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_23

    .line 1678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPinAppWidget() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_23
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1684
    :try_start_26
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1687
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v2

    .line 1688
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const/4 v3, 0x0

    if-eqz v2, :cond_59

    iget-boolean v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v4, :cond_3b

    goto :goto_59

    .line 1691
    :cond_3b
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object v8, v4

    .line 1692
    .local v8, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v8, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_46

    .line 1693
    monitor-exit v1

    return v3

    .line 1695
    .end local v2  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_5b

    .line 1697
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 1698
    move-object v2, p1

    move-object v3, v8

    move-object v4, p3

    move-object v5, p4

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z

    move-result v1

    .line 1697
    return v1

    .line 1689
    .end local v8  # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_59
    :goto_59
    :try_start_59
    monitor-exit v1

    return v3

    .line 1695
    .end local v2  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method public restoreFinished(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 2523
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreFinished(I)V

    .line 2524
    return-void
.end method

.method public restoreStarting(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 2513
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreStarting(I)V

    .line 2514
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "restoredState"  # [B
    .param p3, "userId"  # I

    .line 2518
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2519
    return-void
.end method

.method public sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2358
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2359
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2360
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetOptions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2361
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2362
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "grantId"  # I
    .param p3, "grantPermission"  # Z

    .line 1019
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1020
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

    .line 1024
    :cond_1f
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1028
    :try_start_27
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1030
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 1031
    .local v1, "packageUid":I
    if-gez v1, :cond_32

    .line 1032
    monitor-exit v0

    return-void

    .line 1035
    :cond_32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1036
    .local v2, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p3, :cond_42

    .line 1037
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1039
    :cond_42
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1042
    :goto_47
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1043
    .end local v1  # "packageUid":I
    .end local v2  # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    monitor-exit v0

    .line 1044
    return-void

    .line 1043
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public setSafeMode(Z)V
    .registers 2
    .param p1, "safeMode"  # Z

    .line 331
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    .line 332
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;
    .registers 23
    .param p1, "callbacks"  # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "hostId"  # I
    .param p4, "appWidgetIds"  # [I
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

    .line 840
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 842
    .local v4, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startListening() "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AppWidgetServiceImpl"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_25
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 849
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 851
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 852
    const-string v0, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instant package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot host app widgets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 856
    :cond_56
    invoke-direct {v1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 860
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_bc

    move/from16 v7, p3

    :try_start_61
    invoke-direct {v0, v6, v7, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 861
    .local v0, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v6
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_b8

    .line 862
    .local v6, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    move-object/from16 v8, p1

    :try_start_6a
    iput-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 864
    sget-object v9, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    .line 865
    .local v9, "updateSequenceNo":J
    array-length v11, v3

    .line 866
    .local v11, "N":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 867
    .local v12, "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/PendingHostUpdate;>;"
    new-instance v13, Landroid/util/LongSparseArray;

    invoke-direct {v13}, Landroid/util/LongSparseArray;-><init>()V

    .line 868
    .local v13, "updatesMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7e
    if-ge v14, v11, :cond_ad

    .line 869
    aget v15, v3, v14

    invoke-virtual {v6, v15, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z

    move-result v15

    if-eqz v15, :cond_a4

    .line 872
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v15

    .line 873
    .local v15, "M":I
    const/16 v16, 0x0

    move-object/from16 v17, v0

    move/from16 v0, v16

    .local v0, "j":I
    .local v17, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :goto_92
    if-ge v0, v15, :cond_a6

    .line 874
    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/appwidget/PendingHostUpdate;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    goto :goto_92

    .line 869
    .end local v15  # "M":I
    .end local v17  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .local v0, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_a4
    move-object/from16 v17, v0

    .line 868
    .end local v0  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .restart local v17  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_a6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    goto :goto_7e

    .end local v17  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .restart local v0  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_ad
    move-object/from16 v17, v0

    .line 879
    .end local v0  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v14  # "i":I
    .restart local v17  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iput-wide v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 880
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v12}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v5

    return-object v0

    .line 881
    .end local v6  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9  # "updateSequenceNo":J
    .end local v11  # "N":I
    .end local v12  # "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v13  # "updatesMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v17  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_b8
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_c1

    :catchall_bc
    move-exception v0

    move-object/from16 v8, p1

    move/from16 v7, p3

    :goto_c1
    monitor-exit v5
    :try_end_c2
    .catchall {:try_start_6a .. :try_end_c2} :catchall_c3

    throw v0

    :catchall_c3
    move-exception v0

    goto :goto_c1
.end method

.method public stopListening(Ljava/lang/String;I)V
    .registers 8
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "hostId"  # I

    .line 886
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 888
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopListening() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 895
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 896
    const/4 v2, 0x0

    :try_start_28
    invoke-direct {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 900
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 901
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 903
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_40

    .line 904
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 905
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 907
    .end local v2  # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3  # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_40
    monitor-exit v1

    .line 908
    return-void

    .line 907
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_42

    throw v2
.end method

.method public updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetIds"  # [I
    .param p3, "views"  # Landroid/widget/RemoteViews;

    .line 1521
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1522
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

    .line 1525
    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1526
    return-void
.end method

.method public updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "appWidgetId"  # I
    .param p3, "options"  # Landroid/os/Bundle;

    .line 1460
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1462
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetOptions() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1469
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1470
    :try_start_27
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1474
    nop

    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1474
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1477
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v2, :cond_37

    .line 1478
    monitor-exit v1

    return-void

    .line 1482
    :cond_37
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {v3, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1485
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1487
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1488
    .end local v2  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    monitor-exit v1

    .line 1489
    return-void

    .line 1488
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 12
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "views"  # Landroid/widget/RemoteViews;

    .line 1575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1577
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetProvider() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1584
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1585
    :try_start_2b
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1589
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1590
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1592
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v3, :cond_56

    .line 1593
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider doesn\'t exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    monitor-exit v1

    return-void

    .line 1597
    :cond_56
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 1598
    .local v4, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1599
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5d
    if-ge v6, v5, :cond_6c

    .line 1600
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1601
    .local v7, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v8, 0x0

    invoke-direct {p0, v7, p2, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1599
    .end local v7  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 1603
    .end local v2  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4  # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    .end local v5  # "N":I
    .end local v6  # "i":I
    :cond_6c
    monitor-exit v1

    .line 1604
    return-void

    .line 1603
    :catchall_6e
    move-exception v2

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_2b .. :try_end_70} :catchall_6e

    throw v2
.end method

.method public updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 14
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "metadataKey"  # Ljava/lang/String;

    .line 1608
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1609
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetProvider() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1616
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1617
    :try_start_2b
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1621
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1622
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1623
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_9d

    .line 1627
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1629
    monitor-exit v1

    return-void

    .line 1632
    :cond_48
    if-nez p2, :cond_4d

    .line 1633
    const-string v4, "android.appwidget.provider"

    goto :goto_4e

    :cond_4d
    move-object v4, p2

    .line 1634
    .local v4, "keyToUse":Ljava/lang/String;
    :goto_4e
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 1635
    invoke-direct {p0, v2, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 1636
    .local v5, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v5, :cond_81

    .line 1641
    iput-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1642
    iput-object p2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 1645
    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1646
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_63
    if-ge v7, v6, :cond_79

    .line 1647
    iget-object v8, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1648
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1649
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1646
    .end local v8  # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    .line 1652
    .end local v7  # "i":I
    :cond_79
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1653
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 1654
    .end local v2  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4  # "keyToUse":Ljava/lang/String;
    .end local v5  # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6  # "N":I
    monitor-exit v1

    .line 1655
    return-void

    .line 1637
    .restart local v2  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v4  # "keyToUse":Ljava/lang/String;
    .restart local v5  # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_81
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " meta-data to a valid AppWidget provider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "componentName":Landroid/content/ComponentName;
    .end local p2  # "metadataKey":Ljava/lang/String;
    throw v6

    .line 1624
    .end local v4  # "keyToUse":Ljava/lang/String;
    .end local v5  # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v0  # "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "componentName":Landroid/content/ComponentName;
    .restart local p2  # "metadataKey":Ljava/lang/String;
    :cond_9d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not a valid AppWidget provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "userId":I
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .end local p1  # "componentName":Landroid/content/ComponentName;
    .end local p2  # "metadataKey":Ljava/lang/String;
    throw v4

    .line 1654
    .end local v2  # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3  # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v0  # "userId":I
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .restart local p1  # "componentName":Landroid/content/ComponentName;
    .restart local p2  # "metadataKey":Ljava/lang/String;
    :catchall_b4
    move-exception v2

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_2b .. :try_end_b6} :catchall_b4

    throw v2
.end method

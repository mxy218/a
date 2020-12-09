.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$NotificationId;,
        Lcom/android/server/accounts/AccountManagerService$Injector;,
        Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$StartAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;,
        Lcom/android/server/accounts/AccountManagerService$Lifecycle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final PRE_N_DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final SIGNATURE_CHECK_MATCH:I = 0x1

.field private static final SIGNATURE_CHECK_MISMATCH:I = 0x0

.field private static final SIGNATURE_CHECK_UID_MATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field final mContext:Landroid/content/Context;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field final mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field private final mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

.field private final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 197
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 262
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
    .registers 10

    .line 274
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 201
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 254
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 255
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 257
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 258
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 275
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 276
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 277
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 278
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 279
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getMessageHandlerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 280
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Injector;->getAccountAuthenticatorCache()Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 281
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 283
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 285
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 286
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$1;)V

    invoke-virtual {p1, v0}, Lcom/android/server/accounts/AccountManagerService$Injector;->addLocalService(Landroid/accounts/AccountManagerInternal;)V

    .line 319
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    const-string p1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 335
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 347
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService$3;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 350
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    const/16 v2, 0x3e

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 374
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accounts/AccountManagerService;I)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->purgeUserData(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 6

    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .registers 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 7

    .line 144
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeVisibilityValuesForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 144
    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 7

    .line 144
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .registers 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/accounts/AccountManagerService;I)Z
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/android/server/accounts/AccountManagerService;)Ljava/text/SimpleDateFormat;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .registers 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .registers 5

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/accounts/AccountManagerService;IZ)V
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(IZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    .registers 4

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V

    return-void
.end method

.method private accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .registers 9

    .line 2692
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2693
    :try_start_3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 2694
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    array-length v1, p1

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_2e

    aget-object v4, p1, v3

    .line 2695
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2696
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 2694
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2700
    :cond_2e
    monitor-exit v0

    .line 2701
    return v2

    .line 2700
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private accountTypeManagesContacts(Ljava/lang/String;I)Z
    .registers 7

    .line 5491
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5492
    return v0

    .line 5494
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5497
    :try_start_8
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_41

    .line 5499
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5500
    nop

    .line 5503
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5504
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 5505
    iget-object p1, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-string v0, "android.permission.WRITE_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 5508
    :cond_3f
    goto :goto_16

    .line 5509
    :cond_40
    return v0

    .line 5499
    :catchall_41
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1799
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p4

    const/4 v10, 0x1

    invoke-static {v1, v10}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1800
    const/4 v2, 0x0

    if-nez v9, :cond_10

    .line 1801
    return v2

    .line 1803
    :cond_10
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be added - user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is locked. callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1804
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    return v2

    .line 1808
    :cond_4b
    move/from16 v7, p5

    iget-object v11, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1809
    :try_start_50
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_1c2

    .line 1810
    :try_start_53
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_1bf

    .line 1812
    :try_start_58
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v9}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_8c

    .line 1813
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping since the account already exists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_58 .. :try_end_83} :catchall_1b8

    .line 1815
    nop

    .line 1856
    :try_start_84
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v12
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_1bf

    :try_start_8a
    monitor-exit v11
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_1c2

    .line 1815
    return v2

    .line 1817
    :cond_8c
    :try_start_8c
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    move-object/from16 v4, p3

    invoke-virtual {v3, v9, v4}, Lcom/android/server/accounts/AccountsDb;->insertCeAccount(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v13

    .line 1818
    cmp-long v3, v13, v5

    if-gez v3, :cond_c0

    .line 1819
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping the DB insert failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_8c .. :try_end_b7} :catchall_1b8

    .line 1821
    nop

    .line 1856
    :try_start_b8
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v12
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_1bf

    :try_start_be
    monitor-exit v11
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_1c2

    .line 1821
    return v2

    .line 1824
    :cond_c0
    :try_start_c0
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v9, v13, v14}, Lcom/android/server/accounts/AccountsDb;->insertDeAccount(Landroid/accounts/Account;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_f2

    .line 1825
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping the DB insert failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_c0 .. :try_end_e9} :catchall_1b8

    .line 1827
    nop

    .line 1856
    :try_start_ea
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v12
    :try_end_f0
    .catchall {:try_start_ea .. :try_end_f0} :catchall_1bf

    :try_start_f0
    monitor-exit v11
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_1c2

    .line 1827
    return v2

    .line 1829
    :cond_f2
    if-eqz v1, :cond_143

    .line 1830
    :try_start_f4
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_143

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1831
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1832
    iget-object v10, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v10, v13, v14, v4, v15}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v10, v16, v5

    if-gez v10, :cond_141

    .line 1833
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping since insertExtra failed for key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1833
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_f4 .. :try_end_138} :catchall_1b8

    .line 1836
    nop

    .line 1856
    :try_start_139
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v12
    :try_end_13f
    .catchall {:try_start_139 .. :try_end_13f} :catchall_1bf

    :try_start_13f
    monitor-exit v11
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_1c2

    .line 1836
    return v2

    .line 1838
    :cond_141
    const/4 v10, 0x1

    goto :goto_fc

    .line 1841
    :cond_143
    if-eqz p6, :cond_175

    .line 1842
    :try_start_145
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_14d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_175

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1843
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 1844
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    .line 1843
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 1846
    goto :goto_14d

    .line 1848
    :cond_175
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V

    .line 1850
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-wide v4, v13

    move-object/from16 v6, p1

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1854
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    :try_end_18b
    .catchall {:try_start_145 .. :try_end_18b} :catchall_1b8

    .line 1856
    :try_start_18b
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1857
    nop

    .line 1858
    monitor-exit v12
    :try_end_192
    .catchall {:try_start_18b .. :try_end_192} :catchall_1bf

    .line 1859
    :try_start_192
    monitor-exit v11
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_1c2

    .line 1860
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-eqz v1, :cond_1ac

    .line 1861
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    .line 1864
    :cond_1ac
    invoke-direct {v0, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1866
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1868
    const/4 v0, 0x1

    return v0

    .line 1856
    :catchall_1b8
    move-exception v0

    :try_start_1b9
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v0

    .line 1858
    :catchall_1bf
    move-exception v0

    monitor-exit v12
    :try_end_1c1
    .catchall {:try_start_1b9 .. :try_end_1c1} :catchall_1bf

    :try_start_1c1
    throw v0

    .line 1859
    :catchall_1c2
    move-exception v0

    monitor-exit v11
    :try_end_1c4
    .catchall {:try_start_1c1 .. :try_end_1c4} :catchall_1c2

    throw v0
.end method

.method private addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .registers 7

    .line 1884
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1885
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1886
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne p2, v2, :cond_3b

    .line 1887
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 1888
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1889
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v3, 0x4

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, p2, v1, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1893
    :cond_3b
    goto :goto_c

    .line 1894
    :cond_3c
    return-void
.end method

.method private addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 9

    .line 4393
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4394
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 4395
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    .line 4396
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2, p1}, Lcom/android/server/accounts/AccountsDb;->insertSharedAccount(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 4397
    const-wide/16 v0, 0x0

    cmp-long p2, v3, v0

    if-gez p2, :cond_3a

    .line 4398
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertAccountIntoDatabase: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping the DB insert failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    const/4 p1, 0x0

    return p1

    .line 4402
    :cond_3a
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 4404
    const/4 p1, 0x1

    return p1
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .registers 9

    .line 3035
    const-string v0, "AccountManagerService"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 3036
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 3038
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_23

    aget-object v6, v3, v5

    .line 3039
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_20} :catch_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_20} :catch_24

    .line 3038
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 3047
    :cond_23
    goto :goto_43

    .line 3044
    :catch_24
    move-exception v2

    .line 3045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find packageinfo for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    move-object v2, v1

    goto :goto_43

    .line 3041
    :catch_3b
    move-exception p1

    .line 3042
    const-string v2, "SHA-256 should be available"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3043
    nop

    .line 3047
    move-object v2, v1

    .line 3048
    :goto_43
    if-nez v2, :cond_46

    goto :goto_4a

    :cond_46
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    :goto_4a
    return-object v1
.end method

.method private canHaveProfile(I)Z
    .registers 3

    .line 2122
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 2123
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private canUserModifyAccounts(II)Z
    .registers 5

    .line 5696
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 5697
    return v0

    .line 5699
    :cond_8
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p1

    .line 5700
    const-string/jumbo p2, "no_modify_accounts"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 5701
    const/4 p1, 0x0

    return p1

    .line 5703
    :cond_20
    return v0
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .registers 8

    .line 5708
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    .line 5709
    return v0

    .line 5711
    :cond_8
    iget-object p3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 5712
    const-string v1, "device_policy"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/admin/DevicePolicyManager;

    .line 5713
    invoke-virtual {p3, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object p1

    .line 5714
    if-nez p1, :cond_19

    .line 5715
    return v0

    .line 5717
    :cond_19
    array-length p3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, p3, :cond_2a

    aget-object v3, p1, v2

    .line 5718
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 5719
    return v1

    .line 5717
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 5722
    :cond_2a
    return v0
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .registers 7

    .line 421
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 422
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 423
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 425
    :cond_17
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 5

    .line 448
    if-eqz p4, :cond_c

    .line 449
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p4

    .line 448
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 450
    :cond_c
    const-string p4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-direct {p0, p1, p4, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    .line 452
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 450
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 454
    :cond_19
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .registers 8

    .line 437
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_14

    .line 439
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 440
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 444
    :cond_14
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .registers 8

    .line 429
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 430
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 431
    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 433
    :cond_17
    return-void
.end method

.method private cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    .registers 4

    .line 5330
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 5331
    return-void
.end method

.method private cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    .line 5334
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 5336
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v2

    .line 5337
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->access$3600(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-interface {v2, p2, v3, p1, p3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_1d
    .catchall {:try_start_4 .. :try_end_17} :catchall_18

    goto :goto_1e

    .line 5341
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 5338
    :catch_1d
    move-exception p1

    .line 5341
    :goto_1e
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5342
    nop

    .line 5343
    return-void
.end method

.method private checkGetAccountsPermission(Ljava/lang/String;I)Z
    .registers 5

    .line 5480
    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 5

    .line 5609
    nop

    .line 5610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5609
    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-static {v3, v0, v2, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_33

    .line 5612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5611
    const-string v3, "android.permission.CREATE_USERS"

    invoke-static {v3, v0, v2, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_33

    .line 5613
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5616
    :cond_33
    :goto_33
    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .registers 5

    .line 5601
    nop

    .line 5602
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5601
    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_10

    .line 5606
    return-void

    .line 5604
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPackageSignature(Ljava/lang/String;II)I
    .registers 8

    .line 5519
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5520
    return v0

    .line 5523
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5526
    :try_start_8
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p3}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_4a

    .line 5528
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5529
    nop

    .line 5531
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 5533
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5534
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 5535
    iget v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v3, p2, :cond_3c

    .line 5536
    const/4 p1, 0x2

    return p1

    .line 5538
    :cond_3c
    iget v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v3, 0x10

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 5541
    const/4 p1, 0x1

    return p1

    .line 5544
    :cond_48
    goto :goto_1e

    .line 5545
    :cond_49
    return v0

    .line 5528
    :catchall_4a
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private varargs checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 11

    .line 5375
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_48

    aget-object v3, p3, v2

    .line 5376
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_45

    .line 5377
    const/4 v4, 0x2

    const-string v5, "AccountManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 5378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  caller uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5380
    :cond_34
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 5381
    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v4, v3, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_45

    .line 5383
    :cond_43
    const/4 p1, 0x1

    return p1

    .line 5375
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5387
    :cond_48
    return v1
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 5684
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 5692
    return-void

    .line 5685
    :cond_7
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    .line 5687
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    .line 5685
    const-string p1, "caller uid %s cannot access %s accounts"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5689
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AccountManagerService"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5690
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private checkReadContactsPermission(Ljava/lang/String;I)Z
    .registers 4

    .line 5485
    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 22

    .line 1749
    move-object/from16 v0, p3

    const/4 v1, 0x1

    move-object/from16 v12, p2

    invoke-static {v12, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1750
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    .line 1752
    :try_start_c
    new-instance v15, Lcom/android/server/accounts/AccountManagerService$6;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 1791
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2d

    .line 1793
    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1794
    nop

    .line 1795
    return-void

    .line 1793
    :catchall_2d
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 15

    .line 3053
    const-string/jumbo v0, "uid"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3055
    const-string v1, "authTokenType"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3057
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 3058
    const v5, 0x1040549

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3060
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3061
    nop

    .line 3062
    nop

    .line 3063
    if-lez v4, :cond_35

    .line 3064
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3065
    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v5

    goto :goto_37

    .line 3063
    :cond_35
    const-string v3, ""

    .line 3067
    :goto_37
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    .line 3068
    invoke-direct {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 3069
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x108008a

    .line 3071
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 3072
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x106001c

    .line 3073
    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3075
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3076
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x10000000

    const/4 v8, 0x0

    .line 3077
    move-object v6, p2

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 3079
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 3080
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    .line 3081
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 3080
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V

    .line 3082
    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 16

    .line 5275
    const-string v0, "AccountManagerService"

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 5277
    const/4 v3, 0x2

    :try_start_7
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 5278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5281
    :cond_29
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_47

    const-class v0, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 5282
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5283
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5282
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 5284
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_b2

    .line 5286
    :cond_47
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 5287
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    .line 5288
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5290
    const v3, 0x104048e

    .line 5291
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5292
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    .line 5294
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x108008a

    .line 5295
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    .line 5296
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p2, v4, v5

    .line 5298
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 5299
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p6}, Landroid/os/UserHandle;-><init>(I)V

    .line 5300
    move-object v5, p4

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 5303
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 5304
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_b2
    .catchall {:try_start_7 .. :try_end_b2} :catchall_b7

    .line 5307
    :goto_b2
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5308
    nop

    .line 5309
    return-void

    .line 5307
    :catchall_b7
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 12

    .line 5218
    if-eqz p5, :cond_10

    .line 5221
    iget-object p5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p5

    .line 5222
    :try_start_5
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1, p3}, Lcom/android/server/accounts/AccountsDb;->dumpDeAccountsTable(Ljava/io/PrintWriter;)V

    .line 5223
    monitor-exit p5

    goto/16 :goto_14a

    :catchall_d
    move-exception p1

    monitor-exit p5
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1

    .line 5225
    :cond_10
    const/4 v2, 0x0

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p5

    .line 5227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accounts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5228
    array-length v0, p5

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v0, :cond_51

    aget-object v2, p5, v1

    .line 5229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5228
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 5233
    :cond_51
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5234
    iget-object p5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p5

    .line 5235
    :try_start_57
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p3}, Lcom/android/server/accounts/AccountsDb;->dumpDebugTable(Ljava/io/PrintWriter;)V

    .line 5236
    monitor-exit p5
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_154

    .line 5237
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5238
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 5239
    :try_start_63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 5240
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active Sessions: "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5241
    iget-object p5, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {p5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_8b
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 5242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5243
    goto :goto_8b

    .line 5244
    :cond_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_63 .. :try_end_b1} :catchall_151

    .line 5246
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5247
    iget-object p5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-interface {p5, p2, p3, p4, v0}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 5250
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter p2

    .line 5251
    :try_start_c0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p4

    invoke-direct {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result p4

    .line 5252
    monitor-exit p2
    :try_end_c9
    .catchall {:try_start_c0 .. :try_end_c9} :catchall_14e

    .line 5254
    if-nez p4, :cond_cc

    .line 5255
    return-void

    .line 5257
    :cond_cc
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5258
    iget-object p4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p4

    .line 5259
    :try_start_d2
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5260
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object p1

    .line 5261
    const-string p2, "Account visibility:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5262
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_149

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/accounts/Account;

    .line 5263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5264
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map;

    .line 5265
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_115
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_148

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5267
    goto :goto_115

    .line 5268
    :cond_148
    goto :goto_e5

    .line 5269
    :cond_149
    monitor-exit p4

    .line 5271
    :goto_14a
    return-void

    .line 5269
    :catchall_14b
    move-exception p1

    monitor-exit p4
    :try_end_14d
    .catchall {:try_start_d2 .. :try_end_14d} :catchall_14b

    throw p1

    .line 5252
    :catchall_14e
    move-exception p1

    :try_start_14f
    monitor-exit p2
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw p1

    .line 5244
    :catchall_151
    move-exception p1

    :try_start_152
    monitor-exit v0
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_151

    throw p1

    .line 5236
    :catchall_154
    move-exception p1

    :try_start_155
    monitor-exit p5
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    throw p1
.end method

.method private filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 13

    .line 5869
    nop

    .line 5870
    if-nez p4, :cond_8

    .line 5871
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 5870
    :cond_8
    move-object v0, p4

    .line 5873
    :goto_9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5874
    array-length v2, p2

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_31

    aget-object v4, p2, v3

    .line 5875
    invoke-direct {p0, v4, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5876
    const/4 v6, 0x1

    if-eq v5, v6, :cond_27

    const/4 v6, 0x2

    if-eq v5, v6, :cond_27

    if-eqz p5, :cond_2e

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2e

    .line 5881
    :cond_27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5874
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 5884
    :cond_31
    nop

    .line 5885
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 5887
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Landroid/accounts/Account;

    .line 5888
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    .line 5889
    return-object p1
.end method

.method private filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5898
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_10e

    if-eqz p1, :cond_10e

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    if-ltz v0, :cond_10e

    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_14

    goto/16 :goto_10e

    .line 5902
    :cond_14
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 5903
    if-eqz v0, :cond_10d

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 5904
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    .line 5905
    const/4 v0, 0x0

    if-nez p3, :cond_33

    .line 5906
    new-array p3, v0, [Ljava/lang/String;

    .line 5911
    :cond_33
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5913
    array-length v2, p3

    move v3, v0

    :goto_42
    if-ge v3, v2, :cond_64

    aget-object v4, p3, v3

    .line 5914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 5915
    return-object p2

    .line 5913
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 5918
    :cond_64
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 5919
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 5920
    return-object p2

    .line 5922
    :cond_73
    const-string v1, ""

    .line 5926
    if-eqz p4, :cond_86

    .line 5927
    :try_start_77
    iget-object p3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 5928
    if-eqz p3, :cond_85

    iget-object p4, p3, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz p4, :cond_85

    .line 5929
    iget-object v1, p3, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 5931
    :cond_85
    goto :goto_9f

    .line 5933
    :cond_86
    array-length p4, p3

    move v2, v0

    :goto_88
    if-ge v2, p4, :cond_9f

    aget-object v3, p3, v2

    .line 5934
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 5935
    if-eqz v3, :cond_9c

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v4, :cond_9c

    .line 5936
    iget-object p3, v3, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_9a} :catch_a0

    .line 5937
    move-object v1, p3

    goto :goto_9f

    .line 5933
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 5943
    :cond_9f
    :goto_9f
    goto :goto_bb

    .line 5941
    :catch_a0
    move-exception p3

    .line 5942
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "AccountManagerService"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5944
    :goto_bb
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5945
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_10c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 5946
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 5947
    iget-object v3, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 5948
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-interface {p3, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10b

    .line 5950
    :cond_ec
    nop

    .line 5951
    array-length v3, p1

    move v4, v0

    :goto_ef
    if-ge v4, v3, :cond_ff

    aget-object v5, p1, v4

    .line 5952
    invoke-virtual {v5, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 5953
    nop

    .line 5954
    const/4 v3, 0x1

    goto :goto_100

    .line 5951
    :cond_fc
    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    :cond_ff
    move v3, v0

    .line 5957
    :goto_100
    if-nez v3, :cond_10b

    .line 5958
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-interface {p3, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5961
    :cond_10b
    :goto_10b
    goto :goto_c8

    .line 5962
    :cond_10c
    return-object p3

    .line 5964
    :cond_10d
    return-object p2

    .line 5900
    :cond_10e
    :goto_10e
    return-object p2
.end method

.method private getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 995
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 997
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 998
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    if-nez v0, :cond_1f

    .line 1001
    return-object v1

    .line 1003
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1004
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1005
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1006
    const/4 v4, 0x1

    if-eq v3, v4, :cond_43

    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    .line 1008
    :cond_43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_46
    goto :goto_23

    .line 1011
    :cond_47
    return-object v1
.end method

.method private getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .registers 5

    .line 642
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    nop

    .line 644
    :try_start_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    .line 645
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 646
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit v0

    return p1

    .line 647
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .registers 13

    .line 4269
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4270
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_32

    aget v4, p1, v3

    .line 4271
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 4272
    if-nez v6, :cond_12

    goto :goto_2f

    .line 4273
    :cond_12
    const/4 v7, 0x0

    .line 4276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4273
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v5

    .line 4279
    array-length v6, v5

    move v7, v2

    :goto_20
    if-ge v7, v6, :cond_2f

    aget-object v8, v5, v7

    .line 4280
    new-instance v9, Landroid/accounts/AccountAndUser;

    invoke-direct {v9, v8, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4279
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 4270
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4284
    :cond_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/accounts/AccountAndUser;

    .line 4285
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/AccountAndUser;

    return-object p1
.end method

.method private getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 523
    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 524
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package not found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 528
    :cond_26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 529
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 530
    iget-object v2, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 531
    :try_start_3e
    iget-object v3, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_62

    .line 532
    :try_start_41
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 533
    if-eqz v1, :cond_5c

    .line 534
    array-length v4, v1

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v4, :cond_5c

    aget-object v6, v1, v5

    .line 535
    nop

    .line 536
    invoke-direct {p0, v6, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v7

    .line 535
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 539
    :cond_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_5f

    .line 540
    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_62

    .line 541
    goto :goto_2f

    .line 539
    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p1

    .line 540
    :catchall_62
    move-exception p1

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw p1

    .line 542
    :cond_65
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p4, v0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 12

    .line 4305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4307
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq p2, v1, :cond_3c

    if-eq v0, v2, :cond_3c

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 4309
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3c

    .line 4312
    :cond_19
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "User "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " trying to get account for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4316
    :cond_3c
    :goto_3c
    const/4 v1, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 4317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccounts: accountType "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4319
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4317
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    :cond_71
    nop

    .line 4326
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v1

    .line 4327
    const/4 v3, -0x1

    if-eq p4, v3, :cond_8d

    .line 4328
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_8b

    if-eqz p1, :cond_8d

    .line 4329
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 4330
    :cond_8b
    nop

    .line 4331
    goto :goto_8f

    .line 4333
    :cond_8d
    move-object p3, p5

    move p4, v0

    :goto_8f
    invoke-direct {p0, p4, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object p5

    .line 4335
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c8

    if-eqz p1, :cond_a2

    .line 4336
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    goto :goto_c8

    .line 4338
    :cond_a2
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 4340
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 4341
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4345
    :cond_b0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 4347
    :try_start_b4
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    .line 4348
    move p2, p4

    move-object p4, p5

    move p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_bf
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_c3

    .line 4355
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4348
    return-object p1

    .line 4355
    :catchall_c3
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 4337
    :cond_c8
    :goto_c8
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1
.end method

.method private getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .line 4366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4367
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 4368
    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    .line 4371
    if-eqz v1, :cond_28

    .line 4372
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4374
    :cond_28
    goto :goto_9

    .line 4375
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/accounts/Account;

    .line 4376
    const/4 p2, 0x0

    :goto_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_41

    .line 4377
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    aput-object p3, p1, p2

    .line 4376
    add-int/lit8 p2, p2, 0x1

    goto :goto_30

    .line 4379
    :cond_41
    return-object p1
.end method

.method static getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1272
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 1273
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/IAccountAuthenticatorCache;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1279
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1280
    nop

    .line 1281
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p0

    .line 1280
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1282
    iget-object v1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    goto :goto_e

    .line 1284
    :cond_2a
    return-object v0
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 5

    .line 1618
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->updateServices(I)V

    .line 1620
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p1

    .line 1621
    nop

    .line 1622
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/AuthenticatorDescription;

    .line 1623
    nop

    .line 1625
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1626
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    aput-object v2, v0, v1

    .line 1627
    add-int/lit8 v1, v1, 0x1

    .line 1628
    goto :goto_18

    .line 1629
    :cond_2d
    return-object v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 6103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    .line 6104
    :catch_e
    move-exception p1

    .line 6106
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 8

    .line 3109
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3110
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 3111
    :try_start_d
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3113
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3114
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 3115
    if-nez p3, :cond_56

    .line 3116
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountManagerService:38:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3117
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3118
    const/16 p2, 0x26

    .line 3119
    new-instance p3, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    invoke-direct {p3, p1, p2}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    .line 3120
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3122
    :cond_56
    monitor-exit v1

    .line 3123
    return-object p3

    .line 3122
    :catchall_58
    move-exception p1

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_d .. :try_end_5a} :catchall_58

    throw p1
.end method

.method private getDefaultCantAddAccountIntent(I)Landroid/content/Intent;
    .registers 5

    .line 3653
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3654
    const-string v1, "android.accounts.extra.ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3655
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3656
    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 9

    .line 3963
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 3964
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3965
    const/4 p1, 0x0

    return-object p1

    .line 3967
    :cond_e
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 3968
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 3969
    return-object v1

    .line 3972
    :cond_16
    const v2, 0x7fffffff

    .line 3973
    array-length v3, p1

    move v4, v2

    move-object v2, v1

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_35

    aget-object v5, p1, v1

    .line 3975
    :try_start_21
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3976
    if-eqz v6, :cond_30

    .line 3977
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2b} :catch_31

    .line 3978
    if-ge v6, v4, :cond_30

    .line 3979
    nop

    .line 3980
    move-object v2, v5

    move v4, v6

    .line 3985
    :cond_30
    goto :goto_32

    .line 3983
    :catch_31
    move-exception v5

    .line 3973
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 3987
    :cond_35
    return-object v2
.end method

.method private getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 582
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 583
    if-nez v0, :cond_1f

    .line 584
    const-string v0, "AccountManagerService"

    const-string v1, "Visibility was not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 586
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_1f
    return-object v0
.end method

.method private getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 977
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 978
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 979
    const/4 v2, 0x2

    :try_start_b
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-object v3, v2, v5

    array-length v3, v2

    :goto_17
    if-ge v4, v3, :cond_31

    aget-object v5, v2, v4

    .line 980
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 981
    if-eqz v5, :cond_2e

    .line 982
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 979
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 985
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_50

    .line 986
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 987
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 988
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    goto :goto_3b

    .line 990
    :cond_4f
    return-object v1

    .line 985
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 7

    .line 3128
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 3129
    :try_start_5
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 3130
    if-nez v1, :cond_35

    .line 3131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountManagerService:37:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    invoke-virtual {p2}, Landroid/accounts/Account;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3133
    const/16 v2, 0x25

    .line 3134
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    invoke-direct {v3, v1, v2}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    .line 3135
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 3137
    :cond_35
    monitor-exit v0

    .line 3138
    return-object v1

    .line 3137
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .registers 1

    .line 271
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5572
    :try_start_9
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_42

    .line 5574
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5575
    nop

    .line 5577
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 5579
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5580
    if-nez p3, :cond_37

    iget v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v4, 0x10

    invoke-virtual {v1, v3, p1, v4}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 5583
    :cond_37
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5585
    :cond_40
    goto :goto_1f

    .line 5586
    :cond_41
    return-object v0

    .line 5574
    :catchall_42
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5563
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5559
    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;
    .registers 6

    .line 1256
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1257
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p1

    .line 1259
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1261
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_36

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_36

    .line 1263
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1265
    :cond_36
    goto :goto_15

    .line 1266
    :cond_37
    return-object v0
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 2

    .line 1288
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 10

    .line 1319
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1320
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1321
    const/4 v2, 0x0

    .line 1322
    const/4 v3, 0x1

    if-nez v1, :cond_36

    .line 1323
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v2, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1324
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1325
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 1326
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1327
    invoke-direct {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1328
    move v2, v3

    move-object v1, v4

    .line 1331
    :cond_36
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v4

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1332
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is unlocked - opening CE database"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_8a

    .line 1334
    :try_start_64
    iget-object v5, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_80

    .line 1335
    :try_start_67
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v7, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1336
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1, v6}, Lcom/android/server/accounts/AccountsDb;->attachCeDatabase(Ljava/io/File;)V

    .line 1337
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_67 .. :try_end_78} :catchall_7d

    .line 1338
    :try_start_78
    monitor-exit v4
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_80

    .line 1339
    :try_start_79
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_8a

    goto :goto_83

    .line 1337
    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit v5
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p1

    .line 1338
    :catchall_80
    move-exception p1

    monitor-exit v4
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_80

    :try_start_82
    throw p1

    .line 1341
    :cond_83
    :goto_83
    if-eqz v2, :cond_88

    .line 1342
    invoke-direct {p0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1344
    :cond_88
    monitor-exit v0

    return-object v1

    .line 1345
    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 1084
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 1085
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1087
    :cond_c
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7

    .line 4521
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4522
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 4523
    return-void

    .line 4525
    :cond_a
    array-length p3, p2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2a

    .line 4526
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 4527
    const/4 v0, 0x0

    aget-object v1, p2, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "authAccount"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4528
    aget-object p2, p2, v0

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v0, "accountType"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    invoke-direct {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 4530
    return-void

    .line 4533
    :cond_2a
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 4534
    return-void
.end method

.method private handleIncomingUser(I)I
    .registers 10

    .line 5392
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5393
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    .line 5392
    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return p1

    .line 5394
    :catch_17
    move-exception v0

    .line 5397
    return p1
.end method

.method private hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 7

    .line 3992
    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 3993
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    .line 3994
    if-nez p2, :cond_a

    .line 3995
    return v0

    .line 4001
    :cond_a
    const/4 v1, 0x0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 4002
    return v2

    .line 4007
    :cond_17
    nop

    .line 4008
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p3

    .line 4007
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4009
    if-eq p1, v2, :cond_2d

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2e

    :cond_2d
    move v0, v2

    :cond_2e
    return v0
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 12

    .line 5620
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 5621
    return v1

    .line 5623
    :cond_a
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5624
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5625
    :try_start_15
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_71

    .line 5627
    if-eqz p2, :cond_21

    .line 5628
    :try_start_1a
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5629
    invoke-virtual {v0, p3, p2, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCount(ILjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide v4

    goto :goto_27

    .line 5631
    :cond_21
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCountAnyToken(ILandroid/accounts/Account;)J

    move-result-wide v4

    .line 5634
    :goto_27
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 5636
    :goto_30
    if-nez v0, :cond_6b

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 5639
    const-string v0, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no credentials permission for usage of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5640
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by uid "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but ignoring since device is in test harness."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5639
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5643
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_1a .. :try_end_69} :catchall_6e

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_71

    return v1

    .line 5645
    :cond_6b
    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6e

    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_71

    return v0

    .line 5646
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw p1

    .line 5647
    :catchall_71
    move-exception p1

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_71

    throw p1
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 7

    .line 5853
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5854
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    array-length v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    .line 5855
    :goto_10
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Landroid/accounts/Account;

    .line 5856
    if-eqz v0, :cond_19

    .line 5857
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5859
    :cond_19
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 5860
    :cond_24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5861
    :goto_2c
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, p2, v0}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    aput-object v1, v3, v2

    .line 5862
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5863
    aget-object p1, v3, v2

    return-object p1
.end method

.method private installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    .registers 15

    .line 5313
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 5315
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1f

    .line 5319
    :try_start_a
    const-string v5, "android"

    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 5320
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->access$3600(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v7

    .line 5319
    move-object v4, p3

    move-object v8, p2

    move v9, p4

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_19
    .catchall {:try_start_a .. :try_end_18} :catchall_1f

    .line 5323
    goto :goto_1a

    .line 5321
    :catch_19
    move-exception p1

    .line 5325
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5326
    nop

    .line 5327
    return-void

    .line 5325
    :catchall_1f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2438
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/accounts/AccountsDb;->findAuthtokenForAllAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 2441
    :goto_b
    :try_start_b
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2442
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2443
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2444
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2445
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v1}, Lcom/android/server/accounts/AccountsDb;->deleteAuthToken(Ljava/lang/String;)Z

    .line 2446
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v2, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_37

    .line 2447
    goto :goto_b

    .line 2449
    :cond_32
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2450
    nop

    .line 2451
    return-object v0

    .line 2449
    :catchall_37
    move-exception p1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .registers 4

    .line 5550
    if-nez p1, :cond_4

    .line 5551
    const/4 p1, 0x0

    return p1

    .line 5553
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 5590
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 5591
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    array-length v0, p2

    move v2, v1

    :goto_1b
    if-ge v2, v0, :cond_2c

    aget-object v3, p2, v2

    .line 5592
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 5593
    const/4 p1, 0x1

    return p1

    .line 5591
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 5597
    :cond_2c
    return v1
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 5

    .line 5468
    if-nez p1, :cond_4

    .line 5469
    const/4 p1, 0x0

    return p1

    .line 5471
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 5472
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 5471
    return p1
.end method

.method private isCrossUser(II)Z
    .registers 4

    .line 1633
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_16

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_16

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 1635
    const-string p2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 1633
    :goto_17
    return p1
.end method

.method private isLocalUnlockedUser(I)Z
    .registers 4

    .line 1872
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1873
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1874
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private varargs isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 13

    .line 5346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5348
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 5349
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 5350
    array-length v5, p3

    move v6, v2

    :goto_11
    if-ge v6, v5, :cond_39

    aget-object v7, p3, v6

    .line 5351
    invoke-interface {v4, v7, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_30

    .line 5354
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 5355
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2a

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v8, v7, v3, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_28} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_28} :catch_38
    .catchall {:try_start_5 .. :try_end_28} :catchall_33

    if-nez v7, :cond_30

    .line 5357
    :cond_2a
    nop

    .line 5364
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5357
    const/4 p1, 0x1

    return p1

    .line 5350
    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 5364
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 5361
    :catch_38
    move-exception p1

    .line 5364
    :cond_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5365
    nop

    .line 5366
    return v2
.end method

.method private isPreOApplication(Ljava/lang/String;)Z
    .registers 7

    .line 737
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_21

    .line 740
    :try_start_5
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1c

    .line 742
    :try_start_c
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 743
    nop

    .line 745
    if-eqz p1, :cond_1b

    .line 746
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 747
    const/16 v1, 0x1a

    if-ge p1, v1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v4

    :goto_1a
    return v0

    .line 749
    :cond_1b
    return v0

    .line 742
    :catchall_1c
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_21} :catch_21

    .line 750
    :catch_21
    move-exception p1

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AccountManagerService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return v0
.end method

.method private isPrivileged(I)Z
    .registers 11

    .line 5402
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5404
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_66

    .line 5405
    const-string v3, "AccountManagerService"

    const/4 v4, 0x0

    if-nez v2, :cond_28

    .line 5406
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packages for callingUid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_66

    .line 5407
    nop

    .line 5423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5407
    return v4

    .line 5409
    :cond_28
    :try_start_28
    array-length p1, v2

    move v5, v4

    :goto_2a
    if-ge v5, p1, :cond_61

    aget-object v6, v2, v5
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_66

    .line 5411
    :try_start_2e
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5412
    invoke-virtual {v7, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 5413
    if-eqz v6, :cond_44

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_3a} :catch_45
    .catchall {:try_start_2e .. :try_end_3a} :catchall_66

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_44

    .line 5416
    nop

    .line 5423
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5416
    const/4 p1, 0x1

    return p1

    .line 5420
    :cond_44
    goto :goto_5e

    .line 5418
    :catch_45
    move-exception v6

    .line 5419
    :try_start_46
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package not found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_46 .. :try_end_5e} :catchall_66

    .line 5409
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 5423
    :cond_61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5424
    nop

    .line 5425
    return v4

    .line 5423
    :catchall_66
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isProfileOwner(I)Z
    .registers 4

    .line 5726
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5727
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5728
    if-eqz v0, :cond_13

    const/4 v1, -0x1

    .line 5729
    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 5728
    :goto_14
    return p1
.end method

.method private isSpecialPackageKey(Ljava/lang/String;)Z
    .registers 3

    .line 1049
    const-string v0, "android:accounts:key_legacy_visible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1050
    const-string v0, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 1049
    :goto_14
    return p1
.end method

.method private isSystemUid(I)Z
    .registers 12

    .line 5651
    nop

    .line 5652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5654
    :try_start_5
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_56

    .line 5655
    const-string v3, "AccountManagerService"

    const/4 v4, 0x0

    if-eqz v2, :cond_3d

    .line 5656
    :try_start_10
    array-length p1, v2

    move v5, v4

    :goto_12
    if-ge v5, p1, :cond_51

    aget-object v6, v2, v5
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_56

    .line 5658
    const/4 v7, 0x1

    :try_start_17
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5659
    invoke-virtual {v8, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 5660
    if-eqz v8, :cond_2b

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_23} :catch_2c
    .catchall {:try_start_17 .. :try_end_23} :catchall_56

    and-int/2addr v6, v7

    if-eqz v6, :cond_2b

    .line 5663
    nop

    .line 5673
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5663
    return v7

    .line 5667
    :cond_2b
    goto :goto_3a

    .line 5665
    :catch_2c
    move-exception v8

    .line 5666
    :try_start_2d
    const-string v9, "Could not find package [%s]"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5656
    :goto_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 5670
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No known packages with uid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_56

    .line 5673
    :cond_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5674
    nop

    .line 5675
    return v4

    .line 5673
    :catchall_56
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isVisible(I)Z
    .registers 4

    .line 781
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method static synthetic lambda$grantAppPermission$3(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .registers 3

    .line 5778
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method static synthetic lambda$revokeAppPermission$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .registers 3

    .line 5819
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 5102
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 5103
    return-void
.end method

.method private logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 13

    .line 5114
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 5115
    return-void
.end method

.method private logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 18

    .line 5171
    move-object/from16 v6, p5

    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->reserveDebugDbInsertionPoint()J

    move-result-wide v8

    .line 5172
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_22

    .line 5173
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;-><init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V

    .line 5175
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5177
    :cond_22
    return-void
.end method

.method private logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 5106
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 5107
    return-void
.end method

.method private needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 6

    .line 4496
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    return v1

    .line 4497
    :cond_6
    array-length v0, p1

    if-le v0, v2, :cond_a

    return v2

    .line 4498
    :cond_a
    aget-object p1, p1, v1

    .line 4499
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 4500
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4501
    const/4 p2, 0x4

    if-ne p1, p2, :cond_20

    return v2

    .line 4502
    :cond_20
    return v1
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 10

    .line 3088
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3090
    if-eqz p6, :cond_10

    .line 3094
    const/high16 p6, 0x10000000

    invoke-virtual {v0, p6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3096
    :cond_10
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p5, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    if-eqz p2, :cond_21

    goto :goto_23

    :cond_21
    const-string p2, ""

    :goto_23
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3096
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3098
    const-string p2, "account"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3099
    const-string p1, "authTokenType"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3100
    const-string/jumbo p1, "response"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3101
    const-string/jumbo p1, "uid"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3103
    return-object v0
.end method

.method private newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .registers 16

    .line 4051
    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$18;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move v8, p3

    move-object v9, p2

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService$18;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-direct {v4, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 5

    .line 967
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    const/high16 p1, 0x40000000  # 2.0f

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 970
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p2

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 971
    return-void
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 7

    .line 2733
    const-string v0, "AccountManagerService"

    if-nez p2, :cond_f

    .line 2734
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "the result is unexpectedly null"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2736
    :cond_f
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    :cond_35
    :try_start_35
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39

    .line 2748
    goto :goto_45

    .line 2742
    :catch_39
    move-exception p1

    .line 2745
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 2746
    const-string p2, "failure while notifying response"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2749
    :cond_45
    :goto_45
    return-void
.end method

.method private packageExistsForUser(Ljava/lang/String;I)Z
    .registers 6

    .line 1033
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4} :catch_13

    .line 1035
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1036
    const/4 p1, 0x1

    .line 1038
    :try_start_a
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1036
    return p1

    .line 1038
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_13

    .line 1040
    :catch_13
    move-exception p1

    .line 1041
    const/4 p1, 0x0

    return p1
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .registers 11

    .line 5430
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Access to "

    const/4 v3, 0x2

    const-string v4, "AccountManagerService"

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_2c

    .line 5431
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 5432
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " granted calling uid is system"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5434
    :cond_2b
    return v1

    .line 5437
    :cond_2c
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    move-result v0

    const-string v5, " granted calling uid "

    if-eqz v0, :cond_58

    .line 5438
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 5439
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " privileged"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5442
    :cond_57
    return v1

    .line 5444
    :cond_58
    if-eqz p1, :cond_86

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result p4

    if-eqz p4, :cond_86

    .line 5445
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_85

    .line 5446
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " manages the account"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5449
    :cond_85
    return v1

    .line 5451
    :cond_86
    if-eqz p1, :cond_b2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 5452
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_b1

    .line 5453
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " user granted access"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    :cond_b1
    return v1

    .line 5459
    :cond_b2
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_d2

    .line 5460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not granted for uid "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5463
    :cond_d2
    const/4 p1, 0x0

    return p1
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 9

    .line 1373
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1374
    :try_start_3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    .line 1375
    :try_start_6
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllUidGrants()Ljava/util/List;

    move-result-object v2

    .line 1376
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1377
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    .line 1378
    :goto_2b
    if-eqz v4, :cond_2e

    .line 1379
    goto :goto_10

    .line 1381
    :cond_2e
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting grants for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " because its package is no longer installed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v3}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByUid(I)Z

    .line 1384
    goto :goto_10

    .line 1385
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_52

    .line 1386
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_55

    .line 1387
    return-void

    .line 1385
    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p1

    .line 1386
    :catchall_55
    move-exception p1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw p1
.end method

.method private purgeOldGrantsAll()V
    .registers 4

    .line 1365
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1366
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1367
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1366
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1369
    :cond_1a
    monitor-exit v0

    .line 1370
    return-void

    .line 1369
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private purgeUserData(I)V
    .registers 5

    .line 1418
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1419
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1420
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1421
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1422
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_32

    .line 1423
    if-eqz v1, :cond_31

    .line 1424
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1425
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2e

    .line 1426
    :try_start_1e
    iget-object v2, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->closeDebugStatement()V

    .line 1427
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->close()V

    .line 1428
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2b

    .line 1429
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2e

    goto :goto_31

    .line 1428
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1

    .line 1429
    :catchall_2e
    move-exception v0

    monitor-exit p1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2e

    throw v0

    .line 1431
    :cond_31
    :goto_31
    return-void

    .line 1422
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 6

    .line 1500
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1501
    return-object v0

    .line 1503
    :cond_4
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Password is not available - user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data is locked"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    return-object v0

    .line 1508
    :cond_2e
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_31
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_44

    .line 1510
    :try_start_34
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1511
    invoke-virtual {p1, v2, p2}, Lcom/android/server/accounts/AccountsDb;->findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_41

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_44

    .line 1510
    return-object p1

    .line 1512
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p1

    .line 1513
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_44

    throw p1
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7

    .line 1535
    if-nez p2, :cond_4

    .line 1536
    const/4 p1, 0x0

    return-object p1

    .line 1538
    :cond_4
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1539
    :try_start_7
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_37

    .line 1540
    :try_start_a
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1541
    if-nez v2, :cond_2b

    .line 1542
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 1543
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1544
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_34

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_37

    return-object v2

    .line 1547
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_34

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_37

    return-object p1

    .line 1549
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p1

    .line 1550
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 6082
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6083
    :try_start_3
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6084
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_40

    .line 6086
    if-nez v1, :cond_39

    .line 6087
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6088
    :try_start_13
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_36

    .line 6089
    :try_start_16
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 6090
    if-nez v2, :cond_2f

    .line 6092
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v2

    .line 6093
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6095
    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_33

    .line 6096
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_36

    move-object v1, v2

    goto :goto_39

    .line 6095
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p1

    .line 6096
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_36

    throw p1

    .line 6098
    :cond_39
    :goto_39
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 6084
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p1
.end method

.method private registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 10

    .line 894
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 895
    if-nez p1, :cond_c

    .line 897
    const/4 p1, 0x0

    :try_start_8
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 899
    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_42

    aget-object v3, p1, v2

    .line 900
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 901
    if-nez v4, :cond_2a

    .line 902
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 903
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_2a
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 906
    const/4 v5, 0x1

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v5, v3

    :cond_38
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 908
    :cond_42
    monitor-exit v0

    .line 909
    return-void

    .line 908
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw p1
.end method

.method private removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 9

    .line 5824
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5825
    if-eqz v0, :cond_44

    .line 5826
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5827
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_23

    aget-object v4, v0, v3

    .line 5828
    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 5829
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5827
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 5832
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 5833
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 5835
    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 5836
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5837
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5840
    :cond_44
    :goto_44
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5841
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5842
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5843
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5844
    return-void
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .registers 20

    .line 2307
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 2308
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    .line 2309
    if-nez v1, :cond_3b

    .line 2310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " while user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is still locked. CE data will be removed later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2310
    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_3b
    iget-object v9, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2315
    :try_start_3e
    iget-object v10, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_193

    .line 2316
    :try_start_41
    invoke-direct {v0, v8, v7}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    .line 2318
    nop

    .line 2319
    invoke-direct {v0, v8, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v3

    .line 2320
    iget-object v4, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_190

    .line 2323
    nop

    .line 2325
    :try_start_50
    iget-object v4, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v8}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    .line 2326
    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    if-ltz v6, :cond_64

    .line 2327
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    move-result v6

    move v13, v6

    goto :goto_66

    .line 2326
    :cond_64
    const/4 v6, 0x0

    move v13, v6

    .line 2331
    :goto_66
    if-eqz v1, :cond_77

    .line 2332
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v8}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v14

    .line 2333
    cmp-long v6, v14, v11

    if-ltz v6, :cond_77

    .line 2334
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v14, v15}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z

    .line 2337
    :cond_77
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_7c
    .catchall {:try_start_50 .. :try_end_7c} :catchall_189

    .line 2339
    :try_start_7c
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2340
    nop

    .line 2341
    const/4 v11, 0x1

    if-eqz v13, :cond_f1

    .line 2342
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2343
    nop

    .line 2344
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 2343
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2345
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, v11, :cond_b6

    .line 2346
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_bf

    .line 2348
    :cond_b6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2350
    :cond_bf
    goto :goto_91

    .line 2353
    :cond_c0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2354
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2355
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {v0, v8, v3, v6}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2356
    goto :goto_cb

    .line 2357
    :cond_df
    if-eqz v1, :cond_e5

    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    move-object v2, v1

    goto :goto_e8

    .line 2358
    :cond_e5
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    move-object v2, v1

    .line 2359
    :goto_e8
    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2361
    :cond_f1
    monitor-exit v10
    :try_end_f2
    .catchall {:try_start_7c .. :try_end_f2} :catchall_190

    .line 2362
    :try_start_f2
    monitor-exit v9
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_193

    .line 2363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2365
    :try_start_f7
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 2366
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_12e

    .line 2368
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 2369
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2370
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_12b

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v3, v6, :cond_12b

    .line 2371
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    move/from16 v6, p3

    invoke-direct {v0, v8, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_12a
    .catchall {:try_start_f7 .. :try_end_12a} :catchall_184

    goto :goto_12d

    .line 2370
    :cond_12b
    move/from16 v6, p3

    .line 2373
    :goto_12d
    goto :goto_10d

    .line 2376
    :cond_12e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2377
    nop

    .line 2379
    if-eqz v13, :cond_183

    .line 2380
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2382
    :try_start_139
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_145
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2383
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17d

    const-string v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2384
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17d

    .line 2385
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2386
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v5, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;

    invoke-direct {v5, v0, v8, v3}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 2389
    :cond_17d
    goto :goto_145

    .line 2390
    :cond_17e
    monitor-exit v1

    goto :goto_183

    :catchall_180
    move-exception v0

    monitor-exit v1
    :try_end_182
    .catchall {:try_start_139 .. :try_end_182} :catchall_180

    throw v0

    .line 2393
    :cond_183
    :goto_183
    return v13

    .line 2376
    :catchall_184
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2339
    :catchall_189
    move-exception v0

    :try_start_18a
    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v0

    .line 2361
    :catchall_190
    move-exception v0

    monitor-exit v10
    :try_end_192
    .catchall {:try_start_18a .. :try_end_192} :catchall_190

    :try_start_192
    throw v0

    .line 2362
    :catchall_193
    move-exception v0

    monitor-exit v9
    :try_end_195
    .catchall {:try_start_192 .. :try_end_195} :catchall_193

    throw v0
.end method

.method private removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .registers 12

    .line 4427
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4428
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p2

    .line 4429
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 4430
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    move-result v7

    .line 4431
    if-eqz v7, :cond_24

    .line 4432
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4434
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 4436
    :cond_24
    return v7
.end method

.method private removeVisibilityValuesForPackage(Ljava/lang/String;)V
    .registers 10

    .line 1390
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1391
    return-void

    .line 1393
    :cond_7
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1394
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1395
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_5d

    .line 1396
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_5f

    .line 1398
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_5f

    .line 1411
    goto :goto_54

    .line 1399
    :catch_25
    move-exception v4

    .line 1401
    :try_start_26
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountsDb;->deleteAccountVisibilityForPackage(Ljava/lang/String;)Z

    .line 1402
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_5f

    .line 1403
    :try_start_2e
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5a

    .line 1404
    :try_start_31
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    .line 1405
    nop

    .line 1406
    invoke-direct {p0, v7, v3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    .line 1407
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    goto :goto_3d

    .line 1409
    :cond_52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_57

    .line 1410
    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_5a

    .line 1395
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1409
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v5
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw p1

    .line 1410
    :catchall_5a
    move-exception p1

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p1

    .line 1413
    :cond_5d
    monitor-exit v0

    .line 1414
    return-void

    .line 1413
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_5f

    throw p1
.end method

.method private renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 14

    .line 2020
    nop

    .line 2030
    nop

    .line 2031
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    .line 2032
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2030
    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2033
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2035
    :try_start_17
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2036
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2037
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2038
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2040
    :cond_51
    goto :goto_23

    .line 2041
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_17 .. :try_end_53} :catchall_17c

    .line 2042
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2043
    :try_start_56
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_179

    .line 2044
    nop

    .line 2045
    :try_start_5a
    invoke-direct {p0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v2

    .line 2046
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V

    .line 2047
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v3, p3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_176

    .line 2049
    :try_start_6a
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v3}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_88

    .line 2050
    const-string p2, "AccountManagerService"

    const-string/jumbo p3, "renameAccount failed - account with new name already exists"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_6a .. :try_end_7f} :catchall_16f

    .line 2051
    nop

    .line 2068
    :try_start_80
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_80 .. :try_end_86} :catchall_176

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_179

    .line 2051
    return-object v5

    .line 2053
    :cond_88
    :try_start_88
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v8

    .line 2054
    cmp-long v4, v8, v6

    if-ltz v4, :cond_15e

    .line 2055
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v8, v9, p3}, Lcom/android/server/accounts/AccountsDb;->renameCeAccount(JLjava/lang/String;)Z

    .line 2056
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, p3, v6}, Lcom/android/server/accounts/AccountsDb;->renameDeAccount(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14d

    .line 2058
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_a6
    .catchall {:try_start_88 .. :try_end_a6} :catchall_16f

    .line 2068
    :try_start_a6
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2069
    nop

    .line 2074
    invoke-direct {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    .line 2080
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 2081
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2082
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2083
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2088
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    nop

    .line 2096
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    .line 2097
    invoke-direct {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v5

    if-eqz v5, :cond_128

    .line 2102
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 2103
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_128

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2104
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_127

    iget v7, v6, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v7, v4, :cond_127

    .line 2106
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p3, v6}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 2108
    :cond_127
    goto :goto_10c

    .line 2111
    :cond_128
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2112
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_136
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2114
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2115
    goto :goto_136

    .line 2116
    :cond_14a
    monitor-exit v0
    :try_end_14b
    .catchall {:try_start_a6 .. :try_end_14b} :catchall_176

    .line 2117
    :try_start_14b
    monitor-exit v1
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_179

    .line 2118
    return-object v3

    .line 2060
    :cond_14d
    :try_start_14d
    const-string p2, "AccountManagerService"

    const-string/jumbo p3, "renameAccount failed"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_155
    .catchall {:try_start_14d .. :try_end_155} :catchall_16f

    .line 2061
    nop

    .line 2068
    :try_start_156
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_176

    :try_start_15c
    monitor-exit v1
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_179

    .line 2061
    return-object v5

    .line 2064
    :cond_15e
    :try_start_15e
    const-string p2, "AccountManagerService"

    const-string/jumbo p3, "renameAccount failed - old account does not exist"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catchall {:try_start_15e .. :try_end_166} :catchall_16f

    .line 2065
    nop

    .line 2068
    :try_start_167
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_16d
    .catchall {:try_start_167 .. :try_end_16d} :catchall_176

    :try_start_16d
    monitor-exit v1
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_179

    .line 2065
    return-object v5

    .line 2068
    :catchall_16f
    move-exception p2

    :try_start_170
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw p2

    .line 2116
    :catchall_176
    move-exception p1

    monitor-exit v0
    :try_end_178
    .catchall {:try_start_170 .. :try_end_178} :catchall_176

    :try_start_178
    throw p1

    .line 2117
    :catchall_179
    move-exception p1

    monitor-exit v1
    :try_end_17b
    .catchall {:try_start_178 .. :try_end_17b} :catchall_179

    throw p1

    .line 2041
    :catchall_17c
    move-exception p1

    :try_start_17d
    monitor-exit v0
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    throw p1
.end method

.method private resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .registers 10

    .line 662
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    nop

    .line 665
    :try_start_7
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_a7

    .line 667
    :try_start_b
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_a2

    .line 669
    :try_start_15
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_18} :catch_a7

    .line 670
    nop

    .line 674
    nop

    .line 677
    const/16 v0, 0x3e8

    invoke-static {v2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    .line 678
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 681
    :cond_28
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 682
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->checkPackageSignature(Ljava/lang/String;II)I

    move-result v0

    .line 685
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3a

    .line 686
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 690
    :cond_3a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    .line 692
    if-eqz v4, :cond_45

    .line 693
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 696
    :cond_45
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    const-string v5, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v4

    .line 700
    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 701
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 704
    :cond_5e
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isPreOApplication(Ljava/lang/String;)Z

    move-result v1

    .line 705
    if-nez v0, :cond_93

    if-eqz v1, :cond_70

    .line 706
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->checkGetAccountsPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_93

    .line 707
    :cond_70
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->checkReadContactsPermission(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_86

    iget-object p2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 708
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->accountTypeManagesContacts(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_88

    :cond_86
    if-eqz v4, :cond_89

    :cond_88
    goto :goto_93

    .line 718
    :cond_89
    const-string p2, "android:accounts:key_legacy_not_visible"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 720
    if-nez v3, :cond_9d

    .line 721
    const/4 v3, 0x4

    goto :goto_9d

    .line 712
    :cond_93
    :goto_93
    const-string p2, "android:accounts:key_legacy_visible"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    .line 714
    if-nez p1, :cond_9c

    .line 715
    goto :goto_9d

    .line 714
    :cond_9c
    move v3, p1

    .line 724
    :cond_9d
    :goto_9d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 669
    :catchall_a2
    move-exception p1

    :try_start_a3
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a3 .. :try_end_a7} :catch_a7

    .line 671
    :catch_a7
    move-exception p1

    .line 672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package not found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 14

    .line 5791
    if-eqz p1, :cond_73

    if-nez p2, :cond_5

    goto :goto_73

    .line 5795
    :cond_5
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5796
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5797
    :try_start_10
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_70

    .line 5798
    :try_start_13
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_6d

    .line 5800
    :try_start_18
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v5

    .line 5801
    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-ltz v3, :cond_30

    .line 5802
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    int-to-long v8, p3

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByAccountIdAuthTokenTypeAndUid(JLjava/lang/String;J)Z

    .line 5804
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_66

    .line 5807
    :cond_30
    :try_start_30
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 5808
    nop

    .line 5810
    nop

    .line 5811
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p2

    .line 5812
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 5810
    invoke-direct {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 5813
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_6d

    .line 5814
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_70

    .line 5818
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5819
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v2, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;

    invoke-direct {v2, v0, p1, p3}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5820
    goto :goto_4e

    .line 5821
    :cond_65
    return-void

    .line 5807
    :catchall_66
    move-exception p1

    :try_start_67
    iget-object p2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw p1

    .line 5813
    :catchall_6d
    move-exception p1

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw p1

    .line 5814
    :catchall_70
    move-exception p1

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_70

    throw p1

    .line 5792
    :cond_73
    :goto_73
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "AccountManagerService"

    const-string/jumbo p3, "revokeAppPermission: called with invalid arguments"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5793
    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 2476
    const/4 v0, 0x0

    if-eqz p2, :cond_6f

    if-nez p3, :cond_6

    goto :goto_6f

    .line 2479
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    .line 2480
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2479
    invoke-direct {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2481
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2482
    :try_start_18
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_6c

    .line 2483
    nop

    .line 2485
    :try_start_1e
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v2
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_64

    .line 2486
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_33

    .line 2487
    nop

    .line 2497
    :try_start_2b
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2498
    nop

    .line 2501
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_6c

    .line 2487
    return v0

    .line 2489
    :cond_33
    :try_start_33
    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v2, v3, p3}, Lcom/android/server/accounts/AccountsDb;->deleteAuthtokensByAccountIdAndType(JLjava/lang/String;)Z

    .line 2490
    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v2, v3, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertAuthToken(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5b

    .line 2491
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_64

    .line 2492
    nop

    .line 2493
    const/4 v0, 0x1

    .line 2497
    :try_start_49
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2498
    nop

    .line 2499
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_6c

    .line 2500
    :try_start_52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_58

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_6c

    .line 2493
    return v0

    .line 2501
    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw p1

    .line 2495
    :cond_5b
    nop

    .line 2497
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2498
    nop

    .line 2501
    monitor-exit v1

    .line 2495
    return v0

    .line 2497
    :catchall_64
    move-exception p2

    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2498
    nop

    .line 2501
    throw p2

    .line 2504
    :catchall_6c
    move-exception p1

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_5a .. :try_end_6e} :catchall_6c

    throw p1

    .line 2477
    :cond_6f
    :goto_6f
    return v0
.end method

.method private saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .registers 19

    .line 2463
    if-eqz p2, :cond_31

    if-eqz p5, :cond_31

    if-eqz p3, :cond_31

    if-nez p4, :cond_9

    goto :goto_31

    .line 2466
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    .line 2467
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2466
    move-object v2, p0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2468
    move-object v0, p1

    iget-object v9, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2469
    :try_start_1d
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v1

    move-object v2, p2

    move-object/from16 v3, p6

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 2471
    monitor-exit v9

    .line 2472
    return-void

    .line 2471
    :catchall_2e
    move-exception v0

    monitor-exit v9
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_2e

    throw v0

    .line 2464
    :cond_31
    :goto_31
    return-void
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 5190
    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 5191
    array-length v1, p0

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 5192
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5193
    const/4 p0, 0x1

    return p0

    .line 5191
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5197
    :cond_14
    return v0
.end method

.method private sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 6

    .line 1060
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1061
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1062
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p2, "accountType"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1066
    return-void
.end method

.method private sendAccountsChangedBroadcast(I)V
    .registers 5

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the accounts changed, sending broadcast of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 1055
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1057
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .registers 4

    .line 6125
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 6132
    goto :goto_13

    .line 6126
    :catch_4
    move-exception p1

    .line 6129
    const/4 p2, 0x2

    const-string p3, "AccountManagerService"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 6130
    const-string p2, "failure while notifying response"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6133
    :cond_13
    :goto_13
    return-void
.end method

.method private sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 6

    .line 949
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    .line 951
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 952
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3b

    .line 953
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3b

    .line 955
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 957
    :cond_3b
    goto :goto_c

    .line 958
    :cond_3c
    return-void
.end method

.method private sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 4

    .line 6112
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 6119
    goto :goto_13

    .line 6113
    :catch_4
    move-exception p1

    .line 6116
    const/4 p2, 0x2

    const-string v0, "AccountManagerService"

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 6117
    const-string p2, "failure while notifying response"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6120
    :cond_13
    :goto_13
    return-void
.end method

.method private setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 12

    .line 798
    iget-object v0, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_3
    iget-object v1, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_ca

    .line 802
    const/4 v2, 0x0

    if-eqz p4, :cond_42

    .line 803
    :try_start_9
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 804
    nop

    .line 805
    invoke-direct {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    .line 806
    invoke-direct {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v4

    goto :goto_5d

    .line 808
    :cond_19
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 809
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_c7

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_ca

    return v2

    .line 811
    :cond_26
    :try_start_26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 812
    nop

    .line 813
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    .line 812
    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 816
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 821
    :cond_42
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 822
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_55

    .line 824
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_26 .. :try_end_53} :catchall_c7

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_ca

    return v2

    .line 826
    :cond_55
    :try_start_55
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 830
    :cond_5d
    :goto_5d
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/accounts/AccountManagerService;->updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result p3

    if-nez p3, :cond_66

    .line 831
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_c7

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_ca

    return v2

    .line 834
    :cond_66
    if-eqz p4, :cond_c3

    .line 835
    nop

    .line 836
    :try_start_69
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    .line 835
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_71
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 837
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 838
    nop

    .line 839
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 840
    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v2

    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v3

    if-eq v2, v3, :cond_a3

    .line 841
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4, p5}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 843
    :cond_a3
    goto :goto_71

    .line 844
    :cond_a4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_bc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 845
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p4

    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 846
    goto :goto_a8

    .line 847
    :cond_bc
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 849
    :cond_c3
    const/4 p1, 0x1

    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_69 .. :try_end_c5} :catchall_c7

    :try_start_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_ca

    return p1

    .line 850
    :catchall_c7
    move-exception p1

    :try_start_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw p1

    .line 851
    :catchall_ca
    move-exception p1

    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_ca

    throw p1
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 16

    .line 2596
    if-nez p2, :cond_3

    .line 2597
    return-void

    .line 2599
    :cond_3
    const/4 v0, 0x0

    .line 2600
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2601
    :try_start_7
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_7b

    .line 2602
    :try_start_a
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_78

    .line 2604
    :try_start_f
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v7

    .line 2605
    const-wide/16 v3, 0x0

    cmp-long v3, v7, v3

    if-ltz v3, :cond_51

    .line 2606
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v7, v8, p3}, Lcom/android/server/accounts/AccountsDb;->updateCeAccountPassword(JLjava/lang/String;)I

    .line 2607
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v7, v8}, Lcom/android/server/accounts/AccountsDb;->deleteAuthTokensByAccountId(J)Z

    .line 2608
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 2610
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V

    .line 2615
    const/4 v0, 0x1

    .line 2616
    if-eqz p3, :cond_46

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_42

    goto :goto_46

    .line 2618
    :cond_42
    sget-object p3, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String;

    move-object v5, p3

    goto :goto_49

    .line 2617
    :cond_46
    :goto_46
    sget-object p3, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    move-object v5, p3

    .line 2619
    :goto_49
    const-string v6, "accounts"

    move-object v4, p0

    move-object v9, p1

    move v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_65

    .line 2623
    :cond_51
    :try_start_51
    iget-object p3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2624
    if-eqz v0, :cond_62

    .line 2626
    invoke-direct {p0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2627
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2630
    :cond_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_78

    .line 2631
    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_7b

    .line 2632
    return-void

    .line 2623
    :catchall_65
    move-exception p3

    :try_start_66
    iget-object p4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2624
    if-eqz v0, :cond_77

    .line 2626
    invoke-direct {p0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2627
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    :cond_77
    throw p3

    .line 2630
    :catchall_78
    move-exception p1

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw p1

    .line 2631
    :catchall_7b
    move-exception p1

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method private setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 2706
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2707
    :try_start_3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_63

    .line 2709
    :try_start_8
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_5c

    .line 2710
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1b

    .line 2724
    :try_start_14
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_63

    .line 2711
    return-void

    .line 2713
    :cond_1b
    :try_start_1b
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v1, v2, p3}, Lcom/android/server/accounts/AccountsDb;->findExtrasIdByAccountId(JLjava/lang/String;)J

    move-result-wide v5

    .line 2714
    cmp-long v7, v5, v3

    if-gez v7, :cond_36

    .line 2715
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v1, v2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_5c

    .line 2716
    cmp-long v1, v1, v3

    if-gez v1, :cond_45

    .line 2724
    :try_start_2f
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_63

    .line 2717
    return-void

    .line 2719
    :cond_36
    :try_start_36
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, v5, v6, p4}, Lcom/android/server/accounts/AccountsDb;->updateExtra(JLjava/lang/String;)Z

    move-result v1
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_5c

    if-nez v1, :cond_45

    .line 2724
    :try_start_3e
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_63

    .line 2720
    return-void

    .line 2722
    :cond_45
    :try_start_45
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_5c

    .line 2724
    :try_start_4a
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2725
    nop

    .line 2726
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_63

    .line 2727
    :try_start_53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_59

    .line 2729
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_63

    .line 2730
    return-void

    .line 2728
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw p1

    .line 2724
    :catchall_5c
    move-exception p2

    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw p2

    .line 2729
    :catchall_63
    move-exception p1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    throw p1
.end method

.method private shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 7

    .line 1017
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1018
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_10

    const/4 v2, 0x2

    if-eq p1, v2, :cond_10

    .line 1020
    return v1

    .line 1023
    :cond_10
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    const/high16 v2, 0x1000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1025
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1027
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p3

    invoke-virtual {p2, p1, v1, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 1028
    if-eqz p1, :cond_32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0
.end method

.method private showCantAddAccount(II)V
    .registers 7

    .line 3627
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3628
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3629
    nop

    .line 3630
    if-nez v0, :cond_10

    .line 3631
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_27

    .line 3632
    :cond_10
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1c

    .line 3633
    const-string/jumbo v1, "no_modify_accounts"

    invoke-virtual {v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_27

    .line 3635
    :cond_1c
    const/16 v1, 0x65

    if-ne p1, v1, :cond_26

    .line 3636
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v0

    goto :goto_27

    .line 3635
    :cond_26
    const/4 v0, 0x0

    .line 3638
    :goto_27
    if-nez v0, :cond_2d

    .line 3639
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 3641
    :cond_2d
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 3643
    :try_start_31
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_40

    .line 3645
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3646
    nop

    .line 3647
    return-void

    .line 3645
    :catchall_40
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7

    .line 4507
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/ChooseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4508
    const-string v1, "accounts"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4509
    new-instance p2, Landroid/accounts/AccountManagerResponse;

    invoke-direct {p2, p1}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    const-string p1, "accountManagerResponse"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4511
    const-string p1, "androidPackageName"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4513
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4514
    return-void
.end method

.method private syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 5

    .line 1349
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "mUsers lock must be held"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1350
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findCeAccountsNotInDe()Ljava/util/List;

    move-result-object v0

    .line 1351
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " accounts were previously deleted while user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was locked. Removing accounts from CE tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1352
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 1359
    const/16 v2, 0x3e8

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 1360
    goto :goto_48

    .line 1362
    :cond_5a
    return-void
.end method

.method private syncSharedAccounts(I)V
    .registers 10

    .line 1451
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 1452
    if-eqz v0, :cond_59

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_59

    .line 1453
    :cond_a
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1454
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    .line 1455
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    goto :goto_28

    .line 1456
    :cond_27
    move v3, v4

    .line 1457
    :goto_28
    if-gez v3, :cond_46

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has shared accounts, but no parent user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    return-void

    .line 1461
    :cond_46
    array-length v5, v0

    :goto_47
    if-ge v4, v5, :cond_58

    aget-object v6, v0, v4

    .line 1462
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_55

    .line 1464
    :cond_52
    invoke-virtual {p0, v2, v6, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 1461
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 1466
    :cond_58
    return-void

    .line 1452
    :cond_59
    :goto_59
    return-void
.end method

.method private unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 11

    .line 927
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 928
    if-nez p1, :cond_c

    .line 930
    const/4 p1, 0x0

    :try_start_8
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 932
    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_4c

    aget-object v3, p1, v2

    .line 933
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 934
    if-eqz v3, :cond_44

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 937
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 938
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_35

    .line 939
    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 941
    :cond_35
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 935
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to unregister wrong receiver"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 944
    :cond_4c
    monitor-exit v0

    .line 945
    return-void

    .line 944
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_8 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method private updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 10

    .line 857
    iget-object v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v0

    .line 858
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_e

    .line 859
    return v3

    .line 862
    :cond_e
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 864
    :try_start_12
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v0, v1, p2, p3}, Lcom/android/server/accounts/AccountsDb;->setAccountVisibility(JLjava/lang/String;I)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_31

    if-nez v0, :cond_1f

    .line 866
    nop

    .line 869
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 866
    return v3

    .line 869
    :cond_1f
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 870
    nop

    .line 871
    nop

    .line 872
    invoke-direct {p0, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    .line 873
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const/4 p1, 0x1

    return p1

    .line 869
    :catchall_31
    move-exception p1

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .registers 5

    .line 1738
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1739
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1740
    :try_start_7
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_16

    .line 1741
    :try_start_a
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->updateAccountLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_16

    return p1

    .line 1742
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p1

    .line 1743
    :catchall_16
    move-exception p1

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .registers 21

    .line 1107
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "AccountManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validateAccountsInternal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isCeDatabaseAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 1109
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " userLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 1110
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_48
    if-eqz p2, :cond_53

    .line 1114
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 1117
    :cond_53
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 1118
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    .line 1117
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v0

    .line 1119
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {v7, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v9

    .line 1121
    iget-object v10, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1122
    :try_start_68
    iget-object v11, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_285

    .line 1123
    nop

    .line 1126
    :try_start_6c
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 1127
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->findMetaAuthUid()Ljava/util/Map;

    move-result-object v1

    .line 1129
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    .line 1130
    const/4 v2, 0x0

    .line 1131
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1132
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1133
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1134
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1135
    if-eqz v5, :cond_ad

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_ad

    .line 1137
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c3

    .line 1155
    :cond_ad
    if-nez v2, :cond_b7

    .line 1156
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v7, v2}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1158
    :cond_b7
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_c3

    .line 1162
    invoke-virtual {v13, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual {v12, v4, v3}, Lcom/android/server/accounts/AccountsDb;->deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z

    .line 1167
    :cond_c3
    :goto_c3
    goto :goto_7f

    .line 1172
    :cond_c4
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v2, v1}, Lcom/android/server/accounts/AccountsDb;->insertOrReplaceMetaAuthTypeAndUid(Ljava/lang/String;I)J

    .line 1174
    goto :goto_cc

    .line 1176
    :cond_ec
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    move-result-object v0
    :try_end_f0
    .catchall {:try_start_6c .. :try_end_f0} :catchall_282

    .line 1178
    :try_start_f0
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1179
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1181
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_102
    .catchall {:try_start_f0 .. :try_end_102} :catchall_276

    const/4 v1, 0x0

    :goto_103
    :try_start_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_214

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1182
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1183
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/accounts/Account;

    .line 1184
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ee

    .line 1185
    const-string v2, "AccountManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleting account "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " because type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\'s registered authenticator no longer exist."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    nop

    .line 1189
    invoke-direct {v7, v3, v8}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v14

    .line 1190
    nop

    .line 1191
    invoke-direct {v7, v3, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v15

    .line 1192
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_15e
    .catchall {:try_start_103 .. :try_end_15e} :catchall_274

    .line 1194
    :try_start_15e
    invoke-virtual {v12, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    .line 1198
    if-eqz v9, :cond_166

    .line 1199
    invoke-virtual {v12, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z

    .line 1201
    :cond_166
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_169
    .catchall {:try_start_15e .. :try_end_169} :catchall_1e9

    .line 1203
    :try_start_169
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_274

    .line 1204
    nop

    .line 1205
    nop

    .line 1207
    :try_start_16e
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    const-string v16, "accounts"

    move-object/from16 v1, p0

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v3, v16

    move/from16 v16, v9

    move-object v9, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1210
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 1213
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1217
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v7, v3}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 1218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v2, v8}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1220
    :cond_1ca
    goto :goto_1a5

    .line 1221
    :cond_1cb
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1222
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v7, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_1e2
    .catchall {:try_start_16e .. :try_end_1e2} :catchall_1e5

    .line 1223
    goto :goto_1cf

    .line 1224
    :cond_1e3
    const/4 v1, 0x1

    goto :goto_20d

    .line 1245
    :catchall_1e5
    move-exception v0

    const/4 v1, 0x1

    goto/16 :goto_278

    .line 1203
    :catchall_1e9
    move-exception v0

    :try_start_1ea
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v0

    .line 1225
    :cond_1ee
    move-object/from16 v17, v0

    move-object v0, v3

    move/from16 v16, v9

    move-object v9, v6

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1226
    if-nez v2, :cond_208

    .line 1227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :cond_208
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    :goto_20d
    move-object v6, v9

    move/from16 v9, v16

    move-object/from16 v0, v17

    goto/16 :goto_103

    .line 1233
    :cond_214
    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1234
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1235
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1236
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/accounts/Account;

    .line 1237
    const/4 v5, 0x0

    :goto_23c
    array-length v6, v4

    if-ge v5, v6, :cond_257

    .line 1238
    new-instance v6, Landroid/accounts/Account;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1239
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v9, v3, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 1237
    add-int/lit8 v5, v5, 0x1

    goto :goto_23c

    .line 1241
    :cond_257
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    goto :goto_21d

    .line 1243
    :cond_25d
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_268
    .catchall {:try_start_1ea .. :try_end_268} :catchall_274

    .line 1245
    if-eqz v1, :cond_271

    .line 1246
    :try_start_26a
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1249
    :cond_271
    monitor-exit v11
    :try_end_272
    .catchall {:try_start_26a .. :try_end_272} :catchall_282

    .line 1250
    :try_start_272
    monitor-exit v10
    :try_end_273
    .catchall {:try_start_272 .. :try_end_273} :catchall_285

    .line 1251
    return-void

    .line 1245
    :catchall_274
    move-exception v0

    goto :goto_278

    :catchall_276
    move-exception v0

    const/4 v1, 0x0

    :goto_278
    if-eqz v1, :cond_281

    .line 1246
    :try_start_27a
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {v7, v1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    :cond_281
    throw v0

    .line 1249
    :catchall_282
    move-exception v0

    monitor-exit v11
    :try_end_284
    .catchall {:try_start_27a .. :try_end_284} :catchall_282

    :try_start_284
    throw v0

    .line 1250
    :catchall_285
    move-exception v0

    monitor-exit v10
    :try_end_287
    .catchall {:try_start_284 .. :try_end_287} :catchall_285

    throw v0
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .registers 9

    .line 1705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1706
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_22

    .line 1707
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 1710
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1707
    const-string v6, "accountAuthenticated( account: %s, callerUid: %s)"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1711
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_22
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1715
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1723
    invoke-direct {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1724
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_56

    .line 1728
    :cond_42
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1730
    :try_start_46
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1731
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p1
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_51

    .line 1733
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1731
    return p1

    .line 1733
    :catchall_51
    move-exception p1

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 1725
    :cond_56
    :goto_56
    return v5

    .line 1716
    :cond_57
    new-array v1, v2, [Ljava/lang/Object;

    .line 1718
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, v1, v4

    .line 1716
    const-string/jumbo p1, "uid %s cannot notify authentication for accounts of type: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1720
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 25

    .line 3145
    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    move-object/from16 v1, p6

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3146
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 3147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccount: accountType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", requiredFeatures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3150
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", expectActivityLaunch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3153
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3147
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 3146
    :cond_6a
    move-object/from16 v11, p3

    move/from16 v6, p5

    .line 3155
    :goto_6e
    if-eqz v0, :cond_f8

    .line 3156
    if-eqz v14, :cond_f0

    .line 3159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3160
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3161
    invoke-direct {v2, v4, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 3163
    const/16 v1, 0x64

    :try_start_82
    const-string v3, "User is not allowed to add an account!"

    invoke-interface {v0, v1, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_87} :catch_88

    .line 3166
    goto :goto_89

    .line 3165
    :catch_88
    move-exception v0

    .line 3167
    :goto_89
    invoke-direct {v2, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3168
    return-void

    .line 3170
    :cond_8d
    invoke-direct {v2, v4, v14, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 3172
    const/16 v1, 0x65

    :try_start_95
    const-string v3, "User cannot modify accounts of this type (policy)."

    invoke-interface {v0, v1, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9a} :catch_9b

    .line 3175
    goto :goto_9c

    .line 3174
    :catch_9b
    move-exception v0

    .line 3176
    :goto_9c
    invoke-direct {v2, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3178
    return-void

    .line 3181
    :cond_a0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3182
    if-nez v1, :cond_ab

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_ab
    move-object v13, v1

    .line 3183
    const-string v1, "callerUid"

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3184
    const-string v1, "callerPid"

    invoke-virtual {v13, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3186
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3187
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v15

    .line 3189
    :try_start_be
    invoke-virtual {v2, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 3190
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    const-string v5, "accounts"

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3193
    new-instance v17, Lcom/android/server/accounts/AccountManagerService$9;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3208
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_e6
    .catchall {:try_start_be .. :try_end_e6} :catchall_eb

    .line 3210
    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3211
    nop

    .line 3212
    return-void

    .line 3210
    :catchall_eb
    move-exception v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3156
    :cond_f0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3155
    :cond_f8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 26

    .line 3218
    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    move-object/from16 v1, p6

    move/from16 v3, p7

    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3220
    const/4 v6, 0x2

    const-string v7, "AccountManagerService"

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 3221
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAccount: accountType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", authTokenType "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", requiredFeatures "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3224
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", expectActivityLaunch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", caller\'s uid "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pid "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3227
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", for user id "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3221
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 3220
    :cond_78
    move-object/from16 v11, p3

    move/from16 v9, p5

    .line 3230
    :goto_7c
    const/4 v7, 0x0

    if-eqz v0, :cond_81

    move v8, v4

    goto :goto_82

    :cond_81
    move v8, v7

    :goto_82
    const-string/jumbo v10, "response cannot be null"

    invoke-static {v8, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3231
    if-eqz v14, :cond_8c

    move v8, v4

    goto :goto_8d

    :cond_8c
    move v8, v7

    :goto_8d
    const-string v10, "accountType cannot be null"

    invoke-static {v8, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3233
    invoke-direct {v2, v5, v3}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v8

    if-nez v8, :cond_110

    .line 3242
    invoke-direct {v2, v3, v5}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 3244
    const/16 v1, 0x64

    :try_start_a0
    const-string v4, "User is not allowed to add an account!"

    invoke-interface {v0, v1, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a5} :catch_a6

    .line 3247
    goto :goto_a7

    .line 3246
    :catch_a6
    move-exception v0

    .line 3248
    :goto_a7
    invoke-direct {v2, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3249
    return-void

    .line 3251
    :cond_ab
    invoke-direct {v2, v3, v14, v5}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_be

    .line 3253
    const/16 v1, 0x65

    :try_start_b3
    const-string v4, "User cannot modify accounts of this type (policy)."

    invoke-interface {v0, v1, v4}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_b8} :catch_b9

    .line 3256
    goto :goto_ba

    .line 3255
    :catch_b9
    move-exception v0

    .line 3257
    :goto_ba
    invoke-direct {v2, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3259
    return-void

    .line 3262
    :cond_be
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 3263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3264
    if-nez v1, :cond_cd

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_cd
    move-object v13, v1

    .line 3265
    const-string v1, "callerUid"

    invoke-virtual {v13, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3266
    const-string v1, "callerPid"

    invoke-virtual {v13, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3268
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v15

    .line 3270
    :try_start_dc
    invoke-virtual {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 3271
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    const-string v5, "accounts"

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3274
    new-instance v17, Lcom/android/server/accounts/AccountManagerService$10;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move v9, v10

    move v10, v12

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3292
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_106
    .catchall {:try_start_dc .. :try_end_106} :catchall_10b

    .line 3294
    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3295
    nop

    .line 3296
    return-void

    .line 3294
    :catchall_10b
    move-exception v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3234
    :cond_110
    new-instance v0, Ljava/lang/SecurityException;

    new-array v1, v6, [Ljava/lang/Object;

    .line 3237
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 3238
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 3235
    const-string v2, "User %s trying to add account for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    .line 1642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .registers 15

    .line 459
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 460
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 461
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 462
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccountExplicitly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_3d
    const-string v3, "account cannot be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 479
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 481
    :try_start_4e
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 482
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z

    move-result p1
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_5f

    .line 485
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 482
    return p1

    .line 485
    :catchall_5f
    move-exception p1

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 468
    :cond_64
    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 469
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v0

    .line 468
    const-string/jumbo p1, "uid %s cannot explicitly add accounts of type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 470
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .registers 6

    .line 4385
    const-string v0, "addSharedAccountsFromParentUser"

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 4386
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    .line 4387
    array-length p3, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p3, :cond_16

    aget-object v1, p1, v0

    .line 4388
    invoke-direct {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 4387
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4390
    :cond_16
    return-void
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .registers 7

    .line 2636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2637
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2640
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2638
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_35
    const-string v2, "account cannot be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2643
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2644
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 2651
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v3

    .line 2653
    :try_start_4a
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 2654
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_57

    .line 2656
    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2657
    nop

    .line 2658
    return-void

    .line 2656
    :catchall_57
    move-exception p1

    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 2645
    :cond_5c
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, v1, v0

    .line 2645
    const-string/jumbo p1, "uid %s cannot clear passwords for accounts of type: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2649
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .registers 23

    .line 3666
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move/from16 v1, p5

    const/4 v2, 0x1

    move-object/from16 v12, p3

    invoke-static {v12, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3668
    const/4 v5, 0x2

    const-string v6, "AccountManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 3669
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "confirmCredentials: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", expectActivityLaunch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", caller\'s uid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3673
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3669
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 3668
    :cond_56
    move/from16 v8, p4

    .line 3676
    :goto_58
    invoke-direct {v0, v3, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v3

    if-nez v3, :cond_a4

    .line 3683
    if-eqz v4, :cond_9b

    .line 3684
    if-eqz v11, :cond_93

    .line 3685
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    .line 3687
    :try_start_66
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3688
    new-instance v15, Lcom/android/server/accounts/AccountManagerService$13;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v9, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v16, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object v8, v9

    move v9, v10

    move/from16 v10, v16

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 3700
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$13;->bind()V
    :try_end_89
    .catchall {:try_start_66 .. :try_end_89} :catchall_8e

    .line 3702
    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3703
    nop

    .line 3704
    return-void

    .line 3702
    :catchall_8e
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3684
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3683
    :cond_9b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3677
    :cond_a4
    new-instance v0, Ljava/lang/SecurityException;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3680
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3681
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 3678
    const-string v1, "User %s trying to confirm account credentials for %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .registers 22

    .line 1648
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    move/from16 v13, p3

    move/from16 v1, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1649
    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 1653
    invoke-virtual {v0, v13}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1654
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v12

    .line 1655
    const-string v2, "AccountManagerService"

    if-eqz v3, :cond_75

    if-nez v12, :cond_24

    goto :goto_75

    .line 1668
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 1672
    :try_start_50
    new-instance v16, Lcom/android/server/accounts/AccountManagerService$5;

    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move/from16 v13, p3

    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1697
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_70

    .line 1699
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1700
    nop

    .line 1701
    return-void

    .line 1699
    :catchall_70
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 1656
    :cond_75
    :goto_75
    if-eqz v11, :cond_9c

    .line 1657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1658
    const/4 v1, 0x0

    const-string v3, "booleanResult"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1660
    :try_start_82
    invoke-interface {v11, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_85} :catch_86

    .line 1663
    goto :goto_9c

    .line 1661
    :catch_86
    move-exception v0

    move-object v1, v0

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report error back to the client."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_9c
    :goto_9c
    return-void

    .line 1650
    :cond_9d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 12

    .line 4016
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_6f

    .line 4020
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4021
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4022
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4024
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 4026
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const-string/jumbo v2, "user must be concrete"

    invoke-static {p3, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4030
    const/4 v0, 0x0

    :try_start_2c
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_32} :catch_57

    .line 4034
    nop

    .line 4036
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v4

    .line 4038
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 4040
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p3

    .line 4043
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p3
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_52

    .line 4045
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4040
    return-object p3

    .line 4045
    :catchall_52
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3

    .line 4031
    :catch_57
    move-exception p1

    .line 4032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    return-object v0

    .line 4017
    :cond_6f
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can be called only by system UID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 5202
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccountManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5203
    :cond_b
    const-string v0, "--checkin"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "-c"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 5204
    :goto_1f
    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v7, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5206
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    .line 5207
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 5208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5209
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5210
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, p3

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 5211
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5212
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5213
    goto :goto_32

    .line 5214
    :cond_6f
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .registers 18

    .line 3898
    move-object v0, p0

    move-object v4, p1

    move-object/from16 v10, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3899
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 3900
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editProperties: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", caller\'s uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3904
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3900
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 3899
    :cond_4c
    move/from16 v6, p3

    .line 3906
    :goto_4e
    if-eqz v4, :cond_aa

    .line 3907
    if-eqz v10, :cond_a2

    .line 3908
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 3909
    invoke-direct {p0, v10, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 3910
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_7c

    .line 3911
    :cond_63
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3913
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v10, v0, v1

    .line 3911
    const-string/jumbo v1, "uid %s cannot edit authenticator properites for account type: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3915
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3917
    :cond_7c
    :goto_7c
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v11

    .line 3919
    :try_start_80
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3920
    new-instance v13, Lcom/android/server/accounts/AccountManagerService$17;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 3932
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountManagerService$17;->bind()V
    :try_end_98
    .catchall {:try_start_80 .. :try_end_98} :catchall_9d

    .line 3934
    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3935
    nop

    .line 3936
    return-void

    .line 3934
    :catchall_9d
    move-exception v0

    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3907
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3906
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .registers 22

    .line 3500
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v3, p5

    const-string v5, "failed to decrypt session bundle"

    const/4 v6, 0x1

    invoke-static {v0, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3502
    const/4 v8, 0x2

    const-string v9, "AccountManagerService"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_64

    .line 3503
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finishSession: response "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", expectActivityLaunch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", caller\'s uid "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", caller\'s user id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", pid "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", for user id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3503
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 3502
    :cond_64
    move/from16 v11, p3

    .line 3511
    :goto_66
    const/4 v10, 0x0

    if-eqz v4, :cond_6b

    move v12, v6

    goto :goto_6c

    :cond_6b
    move v12, v10

    :goto_6c
    const-string/jumbo v13, "response cannot be null"

    invoke-static {v12, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3514
    if-eqz v0, :cond_136

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v12

    if-eqz v12, :cond_136

    .line 3519
    invoke-direct {v2, v7, v3}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v12

    if-nez v12, :cond_118

    .line 3527
    invoke-direct {v2, v3, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v6

    if-nez v6, :cond_91

    .line 3528
    const/16 v0, 0x64

    const-string v1, "User is not allowed to add an account!"

    invoke-direct {v2, v4, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3531
    invoke-direct {v2, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3532
    return-void

    .line 3535
    :cond_91
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 3540
    const/16 v8, 0x8

    :try_start_97
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v10

    .line 3541
    invoke-virtual {v10, v0}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3542
    if-nez v0, :cond_a5

    .line 3543
    invoke-direct {v2, v4, v8, v5}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3547
    return-void

    .line 3549
    :cond_a5
    const-string v10, "accountType"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3552
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b8

    .line 3553
    const/4 v0, 0x7

    const-string v1, "accountType is empty"

    invoke-direct {v2, v4, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3557
    return-void

    .line 3564
    :cond_b8
    if-eqz v1, :cond_bd

    .line 3565
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3569
    :cond_bd
    const-string v1, "callerUid"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3570
    const-string v1, "callerPid"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_c7
    .catch Ljava/security/GeneralSecurityException; {:try_start_97 .. :try_end_c7} :catch_107

    .line 3580
    nop

    .line 3582
    invoke-direct {v2, v3, v12, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_d9

    .line 3583
    const/16 v0, 0x65

    const-string v1, "User cannot modify accounts of this type (policy)."

    invoke-direct {v2, v4, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3587
    invoke-direct {v2, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3589
    return-void

    .line 3592
    :cond_d9
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    .line 3594
    :try_start_dd
    invoke-virtual {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3595
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    const-string v5, "accounts"

    invoke-direct {v2, v3, v1, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3600
    new-instance v15, Lcom/android/server/accounts/AccountManagerService$12;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v5, v12

    move/from16 v6, p3

    move-object v11, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 3620
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$12;->bind()V
    :try_end_fd
    .catchall {:try_start_dd .. :try_end_fd} :catchall_102

    .line 3622
    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3623
    nop

    .line 3624
    return-void

    .line 3622
    :catchall_102
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3571
    :catch_107
    move-exception v0

    .line 3572
    const/4 v1, 0x3

    invoke-static {v9, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 3573
    const-string v1, "Failed to decrypt session bundle!"

    invoke-static {v9, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3575
    :cond_114
    invoke-direct {v2, v4, v8, v5}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3579
    return-void

    .line 3520
    :cond_118
    new-instance v0, Ljava/lang/SecurityException;

    new-array v1, v8, [Ljava/lang/Object;

    .line 3523
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    .line 3524
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 3521
    const-string v2, "User %s trying to finish session for %s without cross user permission"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3515
    :cond_136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sessionBundle is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 4543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4544
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4545
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 4546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccount: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4548
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4550
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4546
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    :cond_4e
    if-eqz p1, :cond_9a

    .line 4553
    if-eqz p2, :cond_92

    .line 4555
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4557
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v9

    .line 4559
    :try_start_5a
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4560
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 4561
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move v3, v6

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p2

    .line 4564
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_5a .. :try_end_71} :catchall_8d

    .line 4598
    invoke-static {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4566
    return-void

    .line 4569
    :cond_75
    :try_start_75
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$19;

    invoke-direct {v3, p0, p1, p4}, Lcom/android/server/accounts/AccountManagerService$19;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V

    .line 4589
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4596
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_8d

    .line 4598
    invoke-static {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4599
    nop

    .line 4600
    return-void

    .line 4598
    :catchall_8d
    move-exception p1

    invoke-static {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 4553
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "accountType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4552
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "response is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 9

    .line 593
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 596
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 597
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_3e

    .line 598
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_3e

    .line 599
    :cond_23
    new-array p2, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 601
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v0

    .line 599
    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 603
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 605
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 607
    :try_start_42
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 608
    const-string v1, "android:accounts:key_legacy_visible"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 609
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_82

    .line 610
    if-eqz p1, :cond_59

    .line 611
    nop

    .line 626
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 611
    return p1

    .line 613
    :cond_59
    nop

    .line 626
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 613
    return v3

    .line 616
    :cond_5e
    :try_start_5e
    const-string v1, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 617
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_82

    .line 618
    if-eqz p1, :cond_71

    .line 619
    nop

    .line 626
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 619
    return p1

    .line 621
    :cond_71
    const/4 p1, 0x4

    .line 626
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 621
    return p1

    .line 624
    :cond_76
    :try_start_76
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_82

    .line 626
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 624
    return p1

    .line 626
    :catchall_82
    move-exception p1

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 11

    .line 4214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4215
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4216
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4218
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4219
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 4221
    :cond_16
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 4223
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 4224
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    .line 4231
    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4224
    return-object p1

    .line 4231
    :catchall_29
    move-exception p1

    invoke-static {v6, v7}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 4

    .line 4453
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 493
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 494
    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    .line 495
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v3

    .line 497
    if-eqz p2, :cond_1a

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1a
    if-nez p2, :cond_3e

    if-eqz v2, :cond_1f

    goto :goto_3e

    .line 499
    :cond_1f
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountsAndVisibilityForPackage() called from unauthorized uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with packageName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 503
    :cond_3e
    :goto_3e
    if-eqz p2, :cond_48

    .line 504
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 505
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_48
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 510
    :try_start_4c
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p2

    .line 511
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_5c

    .line 514
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 511
    return-object p1

    .line 514
    :catchall_5c
    move-exception p1

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 13

    .line 4291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4292
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4293
    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    .line 4608
    move-object v0, p0

    move-object v7, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4609
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v9, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4610
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 4611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccounts: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4613
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4615
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4611
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    :cond_56
    if-eqz v7, :cond_cf

    .line 4618
    if-eqz v5, :cond_c7

    .line 4619
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 4621
    invoke-direct {p0, v9, v2, v8}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 4623
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v10, "accounts"

    if-nez v3, :cond_80

    .line 4624
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4626
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4628
    :try_start_74
    invoke-interface {p1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_77} :catch_78

    .line 4631
    goto :goto_7f

    .line 4629
    :catch_78
    move-exception v0

    move-object v2, v0

    .line 4630
    const-string v0, "Cannot respond to caller do to exception."

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4632
    :goto_7f
    return-void

    .line 4635
    :cond_80
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v11

    .line 4637
    :try_start_84
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4638
    if-eqz v6, :cond_a7

    array-length v1, v6

    if-nez v1, :cond_8e

    goto :goto_a7

    .line 4646
    :cond_8e
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v13, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v9

    move-object/from16 v8, p4

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4653
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_c2

    .line 4655
    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4656
    nop

    .line 4657
    return-void

    .line 4639
    :cond_a7
    :goto_a7
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move v4, v9

    move-object/from16 v5, p4

    :try_start_af
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    .line 4641
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4642
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4643
    invoke-direct {p0, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_be
    .catchall {:try_start_af .. :try_end_be} :catchall_c2

    .line 4655
    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4644
    return-void

    .line 4655
    :catchall_c2
    move-exception v0

    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 4618
    :cond_c7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4617
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 12

    .line 4473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4474
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4475
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4476
    nop

    .line 4478
    :try_start_e
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_44

    .line 4482
    nop

    .line 4483
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_28

    if-eqz p1, :cond_28

    .line 4484
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_28

    .line 4485
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 4487
    :cond_28
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_3a

    if-nez p1, :cond_3a

    .line 4488
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    .line 4491
    :cond_3a
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    .line 4479
    :catch_44
    move-exception p1

    .line 4480
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t determine the packageUid for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 13

    .line 4459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4460
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4465
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v8, 0x1

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    .line 4462
    :cond_1b
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with uid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 12

    .line 5978
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Method should not be called with cacheLock"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 5980
    if-eqz p2, :cond_35

    .line 5982
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5983
    :try_start_12
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    .line 5984
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_32

    .line 5985
    if-nez p2, :cond_20

    .line 5986
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p1

    .line 5988
    :cond_20
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [Landroid/accounts/Account;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    .line 5984
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1

    .line 5992
    :cond_35
    nop

    .line 5994
    iget-object p2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5995
    :try_start_39
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    .line 5996
    array-length v3, v3

    add-int/2addr v2, v3

    .line 5997
    goto :goto_45

    .line 5998
    :cond_54
    if-nez v2, :cond_5a

    .line 5999
    sget-object p1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    monitor-exit p2

    return-object p1

    .line 6001
    :cond_5a
    new-array v2, v2, [Landroid/accounts/Account;

    .line 6002
    nop

    .line 6003
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 6004
    array-length v5, v4

    invoke-static {v4, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6006
    array-length v4, v4

    add-int/2addr v3, v4

    .line 6007
    goto :goto_68

    .line 6008
    :cond_7b
    monitor-exit p2
    :try_end_7c
    .catchall {:try_start_39 .. :try_end_7c} :catchall_86

    .line 6009
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1

    .line 6008
    :catchall_86
    move-exception p1

    :try_start_87
    monitor-exit p2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw p1
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .registers 5

    .line 4259
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 4260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 4261
    const/4 v2, 0x0

    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_20

    .line 4262
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v2

    .line 4261
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4264
    :cond_20
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .registers 33

    .line 2809
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v10, p6

    const/4 v1, 0x1

    invoke-static {v10, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2810
    const/4 v8, 0x2

    const-string v9, "AccountManagerService"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notifyOnAuthFailure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p5

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2816
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2817
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2811
    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 2810
    :cond_68
    move/from16 v14, p5

    .line 2819
    :goto_6a
    if-eqz v7, :cond_6e

    move v3, v1

    goto :goto_6f

    :cond_6e
    const/4 v3, 0x0

    :goto_6f
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2821
    const/4 v3, 0x7

    if-nez v11, :cond_85

    .line 2822
    :try_start_78
    const-string v0, "getAuthToken called with null account"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    const-string v0, "account is null"

    invoke-interface {v7, v3, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 2824
    return-void

    .line 2831
    :catch_83
    move-exception v0

    goto :goto_92

    .line 2826
    :cond_85
    if-nez v12, :cond_a7

    .line 2827
    const-string v0, "getAuthToken called with null authTokenType"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const-string v0, "authTokenType is null"

    invoke-interface {v7, v3, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_91} :catch_83

    .line 2829
    return-void

    .line 2832
    :goto_92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report error back to the client."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    return-void

    .line 2834
    :cond_a7
    nop

    .line 2835
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2840
    :try_start_b0
    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v15

    .line 2841
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    iget-object v2, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2842
    invoke-static {v2}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    invoke-static {v15}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    .line 2841
    invoke-interface {v6, v2, v8}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_1ea

    .line 2844
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2845
    nop

    .line 2847
    if-eqz v2, :cond_d5

    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v2, v2, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v2, :cond_d5

    move/from16 v18, v1

    goto :goto_d7

    :cond_d5
    const/16 v18, 0x0

    .line 2851
    :goto_d7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2852
    if-nez v18, :cond_e7

    .line 2853
    invoke-direct {v0, v11, v12, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_e4

    goto :goto_e7

    :cond_e4
    const/16 v19, 0x0

    goto :goto_e9

    :cond_e7
    :goto_e7
    move/from16 v19, v1

    .line 2856
    :goto_e9
    const-string v2, "androidPackageName"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2860
    :try_start_f3
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4
    :try_end_fd
    .catchall {:try_start_f3 .. :try_end_fd} :catchall_1e5

    .line 2862
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2863
    nop

    .line 2864
    if-eqz v6, :cond_1ca

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 2873
    const-string v2, "callerUid"

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2874
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "callerPid"

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2876
    if-eqz v13, :cond_11f

    .line 2877
    const-string/jumbo v2, "notifyOnAuthFailure"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2880
    :cond_11f
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 2883
    :try_start_123
    invoke-direct {v0, v6}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    move-result-object v22
    :try_end_127
    .catchall {:try_start_123 .. :try_end_127} :catchall_1c5

    .line 2887
    const-string v5, "accountType"

    const-string v4, "authAccount"

    const-string v3, "authtoken"

    if-nez v18, :cond_150

    if-eqz v19, :cond_150

    .line 2888
    :try_start_131
    invoke-virtual {v0, v15, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2889
    if-eqz v1, :cond_150

    .line 2890
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2891
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    invoke-direct {v0, v7, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_14c
    .catchall {:try_start_131 .. :try_end_14c} :catchall_1c5

    .line 3028
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2895
    return-void

    .line 2899
    :cond_150
    if-eqz v18, :cond_18e

    .line 2905
    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v23, v8

    move-object v8, v3

    move-object/from16 v3, p2

    move-object v10, v4

    move-object/from16 v4, p3

    move-object v12, v5

    move-object v5, v6

    move-object/from16 v24, v6

    move-object/from16 v6, v22

    :try_start_163
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    .line 2911
    if-eqz v1, :cond_192

    .line 2912
    const/4 v2, 0x2

    invoke-static {v9, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 2913
    const-string v2, "getAuthToken: cache hit ofr custom token authenticator."

    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    :cond_175
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2916
    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    invoke-direct {v0, v7, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_18a
    .catchall {:try_start_163 .. :try_end_18a} :catchall_1c5

    .line 3028
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2920
    return-void

    .line 2899
    :cond_18e
    move-object/from16 v24, v6

    move/from16 v23, v8

    .line 2924
    :cond_192
    :try_start_192
    new-instance v25, Lcom/android/server/accounts/AccountManagerService$8;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v10, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p1

    move/from16 v6, p5

    move v7, v8

    move/from16 v0, v23

    move-object v8, v10

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, v19

    move-object/from16 v19, v15

    move v15, v0

    move/from16 v16, v18

    move-object/from16 v17, v24

    move-object/from16 v18, v22

    invoke-direct/range {v1 .. v19}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3026
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_1c0
    .catchall {:try_start_192 .. :try_end_1c0} :catchall_1c5

    .line 3028
    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3029
    nop

    .line 3030
    return-void

    .line 3028
    :catchall_1c5
    move-exception v0

    invoke-static/range {v20 .. v21}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 2864
    :cond_1ca
    move-object/from16 v24, v6

    move v0, v8

    .line 2865
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2867
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object v24, v2, v1

    .line 2865
    const-string v0, "Uid %s is attempting to illegally masquerade as package %s!"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2869
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2862
    :catchall_1e5
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2844
    :catchall_1ea
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2755
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "accountType cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2756
    if-eqz p3, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "authTokenType cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2758
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    .line 2759
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    .line 2760
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_51

    .line 2763
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2764
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    .line 2766
    move-object v1, p0

    :try_start_2d
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2767
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$7;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2795
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_4c

    .line 2797
    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2798
    nop

    .line 2799
    return-void

    .line 2797
    :catchall_4c
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 2761
    :cond_51
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "can only call from system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 7

    .line 1589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1590
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthenticatorTypes: for user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1591
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_35
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1605
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1607
    :try_start_3f
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_47

    .line 1610
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1607
    return-object p1

    .line 1610
    :catchall_47
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 1598
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1601
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1602
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 1599
    const-string p1, "User %s tying to get authenticator types for %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getBindInstantServiceAllowed(I)Z
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getBindInstantServiceAllowed(I)Z

    move-result p1

    return p1
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 547
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 549
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 550
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_36

    .line 551
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_36

    .line 552
    :cond_1c
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 553
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string/jumbo p1, "uid %s cannot get secrets for account %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 554
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_36
    :goto_36
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 559
    :try_start_3a
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 560
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_54

    .line 561
    :try_start_41
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_51

    .line 562
    :try_start_44
    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4e

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_51

    .line 566
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 562
    return-object p1

    .line 563
    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p1

    .line 564
    :catchall_51
    move-exception p1

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    :try_start_53
    throw p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 566
    :catchall_54
    move-exception p1

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7

    .line 1475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1476
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1477
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_39
    if-eqz p1, :cond_77

    .line 1482
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1483
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1490
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1492
    :try_start_4b
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1493
    invoke-direct {p0, v2, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_57

    .line 1495
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1493
    return-object p1

    .line 1495
    :catchall_57
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 1484
    :cond_5c
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, v1, v0

    .line 1484
    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1488
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1481
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "account is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 5

    .line 1518
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1519
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_35
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1525
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1527
    :try_start_42
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1528
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4e

    .line 1530
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1528
    return-object p1

    .line 1530
    :catchall_4e
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .registers 3

    .line 4244
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_e

    .line 4248
    nop

    .line 4249
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v0

    return-object v0

    .line 4245
    :catch_e
    move-exception v0

    .line 4247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .registers 4

    .line 4440
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p1

    .line 4441
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    .line 4442
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4443
    :try_start_b
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->getSharedAccounts()Ljava/util/List;

    move-result-object p1

    .line 4444
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/Account;

    .line 4445
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4446
    monitor-exit v0

    return-object v1

    .line 4447
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 7

    .line 1293
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 1294
    :catch_5
    move-exception v0

    .line 1295
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") reading its account database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne p1, v1, :cond_5e

    if-eqz p1, :cond_5e

    .line 1304
    const-string v1, "Switching to system user first"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :try_start_40
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_48} :catch_49

    .line 1309
    goto :goto_5e

    .line 1307
    :catch_49
    move-exception v1

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not switch to 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_5e
    :goto_5e
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->removeUserEvenWhenDisallowed(I)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not remove user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_7c
    throw v0

    .line 1297
    :cond_7d
    throw v0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1556
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_30

    .line 1557
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    .line 1558
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    const/4 v6, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1557
    const-string v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1559
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_30
    const-string v3, "account cannot be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    const-string v3, "key cannot be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1564
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 1571
    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_6a

    .line 1572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "User "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " data is locked. callingUid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-object v4

    .line 1575
    :cond_6a
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1577
    :try_start_6e
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1578
    invoke-direct {p0, v2, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v3
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_85

    if-nez v3, :cond_7d

    .line 1579
    nop

    .line 1583
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1579
    return-object v4

    .line 1581
    :cond_7d
    :try_start_7d
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_85

    .line 1583
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1581
    return-object p1

    .line 1583
    :catchall_85
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 1565
    :cond_8a
    new-array p2, v1, [Ljava/lang/Object;

    .line 1567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v4

    .line 1565
    const-string/jumbo p1, "uid %s cannot get user data for accounts of type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1569
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 11

    .line 5756
    if-eqz p1, :cond_5e

    if-nez p2, :cond_5

    goto :goto_5e

    .line 5760
    :cond_5
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5761
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5762
    :try_start_10
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_5b

    .line 5763
    :try_start_13
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 5764
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_24

    .line 5765
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v3, v4, p2, p3}, Lcom/android/server/accounts/AccountsDb;->insertGrant(JLjava/lang/String;I)J

    .line 5767
    :cond_24
    nop

    .line 5768
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p2

    .line 5769
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 5767
    invoke-direct {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 5771
    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 5772
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_58

    .line 5773
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_5b

    .line 5777
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5778
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v2, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$nCdu9dc3c8qBwJIwS0ZQk2waXfY;

    invoke-direct {v2, v0, p1, p3}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$nCdu9dc3c8qBwJIwS0ZQk2waXfY;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5779
    goto :goto_40

    .line 5780
    :cond_57
    return-void

    .line 5772
    :catchall_58
    move-exception p1

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw p1

    .line 5773
    :catchall_5b
    move-exception p1

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5b

    throw p1

    .line 5757
    :cond_5e
    :goto_5e
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "AccountManagerService"

    const-string p3, "grantAppPermission: called with invalid arguments"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5758
    return-void
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7

    .line 3941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_52

    .line 3944
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3945
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3946
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3948
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 3950
    const v0, 0x7fffffff

    const/4 v1, 0x0

    const-string/jumbo v2, "user must be concrete"

    invoke-static {p3, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3953
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p3

    .line 3954
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_35} :catch_36

    return p1

    .line 3955
    :catch_36
    move-exception p1

    .line 3956
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package not found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    return v1

    .line 3942
    :cond_52
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can be called only by system UID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1899
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1900
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1901
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFeatures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1906
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1902
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_4e
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_54

    move v3, v1

    goto :goto_55

    :cond_54
    move v3, v2

    :goto_55
    const-string v4, "account cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1909
    if-eqz p1, :cond_5e

    move v3, v1

    goto :goto_5f

    :cond_5e
    move v3, v2

    :goto_5f
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1910
    if-eqz p3, :cond_68

    goto :goto_69

    :cond_68
    move v1, v2

    :goto_69
    const-string v2, "features cannot be null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1911
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1912
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1, p4}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 1915
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1917
    :try_start_7b
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 1918
    new-instance p4, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v4, p4

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_91

    .line 1920
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1921
    nop

    .line 1922
    return-void

    .line 1920
    :catchall_91
    move-exception p1

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 2398
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2399
    const-string v1, "accountType cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2400
    const-string v1, "authToken cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateAuthToken: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2402
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :cond_41
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2407
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 2409
    :try_start_49
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2411
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_9f

    .line 2412
    :try_start_50
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_9c

    .line 2414
    :try_start_55
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2415
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_95

    .line 2417
    :try_start_5e
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2418
    nop

    .line 2419
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_9c

    .line 2420
    :try_start_67
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2421
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/Account;

    .line 2422
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2423
    const/4 v8, 0x0

    invoke-virtual {p0, v0, v7, v6, v8}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    goto :goto_6b

    .line 2426
    :cond_84
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_92

    .line 2428
    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_9c

    .line 2430
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2431
    nop

    .line 2432
    return-void

    .line 2427
    :catchall_92
    move-exception p1

    :try_start_93
    monitor-exit v5
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw p1

    .line 2417
    :catchall_95
    move-exception p1

    iget-object p2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw p1

    .line 2428
    :catchall_9c
    move-exception p1

    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw p1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9f

    .line 2430
    :catchall_9f
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 19

    .line 3815
    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 3816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCredentialsUpdateSuggested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3816
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    :cond_41
    if-eqz v0, :cond_8a

    .line 3824
    if-eqz v10, :cond_82

    .line 3827
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 3831
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3832
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v12

    .line 3834
    move-object v2, p0

    :try_start_54
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3835
    new-instance v14, Lcom/android/server/accounts/AccountManagerService$16;

    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    .line 3889
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountManagerService$16;->bind()V
    :try_end_6f
    .catchall {:try_start_54 .. :try_end_6f} :catchall_74

    .line 3891
    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3892
    nop

    .line 3893
    return-void

    .line 3891
    :catchall_74
    move-exception v0

    invoke-static {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3828
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status token is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3825
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3822
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$new$0$AccountManagerService(I)V
    .registers 16

    .line 376
    nop

    .line 377
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_50

    .line 379
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 382
    :try_start_11
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    move-object v8, v6

    :goto_16
    if-ge v7, v4, :cond_47

    aget-object v9, v0, v7

    .line 385
    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v10, v11, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_25

    .line 388
    goto :goto_44

    .line 391
    :cond_25
    if-nez v8, :cond_37

    .line 392
    const-string v8, "android"

    invoke-virtual {p0, v6, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 393
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_4b

    if-eqz v10, :cond_37

    .line 404
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    return-void

    .line 398
    :cond_37
    :try_start_37
    array-length v10, v8

    move v11, v5

    :goto_39
    if-ge v11, v10, :cond_44

    aget-object v12, v8, v11

    .line 399
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v9, v13}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_4b

    .line 398
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    .line 382
    :cond_44
    :goto_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 404
    :cond_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    goto :goto_50

    .line 404
    :catchall_4b
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 407
    :cond_50
    :goto_50
    return-void
.end method

.method public synthetic lambda$onUnlockUser$1$AccountManagerService(I)V
    .registers 2

    .line 1446
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    return-void
.end method

.method public synthetic lambda$removeAccountInternal$2$AccountManagerService(Landroid/accounts/Account;I)V
    .registers 4

    .line 2386
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    return-void
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4662
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_d

    .line 4663
    return-void

    .line 4665
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4668
    :try_start_15
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v4, :cond_3f

    aget-object v6, v1, v5

    .line 4669
    invoke-virtual {v6}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 4673
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 4674
    const-string v7, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v0, v8}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_44

    .line 4668
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 4680
    :cond_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4681
    nop

    .line 4682
    return-void

    .line 4680
    :catchall_44
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 5180
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .registers 4

    .line 1470
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1471
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .registers 4

    .line 144
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 4688
    new-instance v0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4690
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1072
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 1073
    :catch_5
    move-exception p1

    .line 1076
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_11

    .line 1077
    const-string p2, "AccountManagerService"

    const-string p3, "Account Manager Crash"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    :cond_11
    throw p1
.end method

.method onUnlockUser(I)V
    .registers 5

    .line 1439
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_20
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1443
    :try_start_23
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1444
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_38

    .line 1445
    if-ge p1, v2, :cond_2d

    return-void

    .line 1446
    :cond_2d
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v1, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;-><init>(Lcom/android/server/accounts/AccountManagerService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1447
    return-void

    .line 1444
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method onUserUnlocked(Landroid/content/Intent;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1435
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    .line 1436
    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 2509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2510
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peekAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2511
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_3e
    const-string v3, "account cannot be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    const-string v3, "authTokenType cannot be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2519
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 2526
    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_78

    .line 2527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Authtoken not available - user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " data is locked. callingUid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    const/4 p1, 0x0

    return-object p1

    .line 2531
    :cond_78
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2533
    :try_start_7c
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2534
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_88

    .line 2536
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2534
    return-object p1

    .line 2536
    :catchall_88
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 2520
    :cond_8d
    new-array p2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2522
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v0

    .line 2520
    const-string/jumbo p1, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2524
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 6059
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6060
    :try_start_3
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6061
    if-eqz v1, :cond_17

    .line 6062
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 6064
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_46

    .line 6066
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6067
    :try_start_1b
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_43

    .line 6068
    :try_start_1e
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 6069
    if-nez v2, :cond_37

    .line 6071
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v2

    .line 6072
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6074
    :cond_37
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_40

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_43

    return-object p1

    .line 6075
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw p1

    .line 6076
    :catchall_43
    move-exception p1

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_43

    throw p1

    .line 6064
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method protected readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 7

    .line 6035
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6036
    :try_start_3
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 6038
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 880
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 882
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 883
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 885
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 886
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 888
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 889
    nop

    .line 890
    return-void

    .line 888
    :catchall_1d
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .registers 5

    .line 2129
    nop

    .line 2133
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2129
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 2134
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .registers 18

    .line 2139
    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    move/from16 v1, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2140
    const/4 v2, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", for user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2141
    const-string v4, "AccountManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_4d
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v9, :cond_53

    move v5, v3

    goto :goto_54

    :cond_53
    move v5, v4

    :goto_54
    const-string v6, "account cannot be null"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2148
    if-eqz v8, :cond_5d

    move v5, v3

    goto :goto_5e

    :cond_5d
    move v5, v4

    :goto_5e
    const-string/jumbo v6, "response cannot be null"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2151
    invoke-direct {p0, v7, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v5

    if-nez v5, :cond_134

    .line 2163
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 2164
    iget-object v6, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-direct {p0, v6, v7, v10}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 2165
    invoke-direct {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 2166
    invoke-direct {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v6

    if-eqz v6, :cond_87

    goto :goto_a0

    .line 2167
    :cond_87
    new-array v0, v2, [Ljava/lang/Object;

    .line 2169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 2167
    const-string/jumbo v1, "uid %s cannot remove accounts of type: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2171
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2173
    :cond_a0
    :goto_a0
    invoke-direct {p0, v1, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 2175
    const/16 v0, 0x64

    :try_start_a8
    const-string v1, "User cannot modify accounts"

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_ad} :catch_ae

    .line 2178
    goto :goto_af

    .line 2177
    :catch_ae
    move-exception v0

    .line 2179
    :goto_af
    return-void

    .line 2181
    :cond_b0
    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 2183
    const/16 v0, 0x65

    :try_start_ba
    const-string v1, "User cannot modify accounts of this type (policy)."

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_bf} :catch_c0

    .line 2186
    goto :goto_c1

    .line 2185
    :catch_c0
    move-exception v0

    .line 2187
    :goto_c1
    return-void

    .line 2189
    :cond_c2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    .line 2190
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v12

    .line 2191
    invoke-direct {p0, v12, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2192
    invoke-static {v12}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 2194
    :try_start_d6
    invoke-static {v12}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_108

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2195
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 2196
    invoke-static {v12}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2197
    invoke-direct {p0, v2, v5}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2199
    :cond_107
    goto :goto_e2

    .line 2200
    :cond_108
    monitor-exit v6
    :try_end_109
    .catchall {:try_start_d6 .. :try_end_109} :catchall_131

    .line 2201
    iget-object v1, v12, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    .line 2202
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v3, "accounts"

    move-object v1, p0

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2209
    :try_start_118
    new-instance v7, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v12

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_127
    .catchall {:try_start_118 .. :try_end_127} :catchall_12c

    .line 2211
    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2212
    nop

    .line 2213
    return-void

    .line 2211
    :catchall_12c
    move-exception v0

    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 2200
    :catchall_131
    move-exception v0

    :try_start_132
    monitor-exit v6
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_131

    throw v0

    .line 2152
    :cond_134
    new-instance v0, Ljava/lang/SecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 2155
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2156
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 2153
    const-string v1, "User %s tying remove account for %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .registers 11

    .line 2217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2218
    const/4 v0, 0x2

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2219
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :cond_36
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 2224
    const/4 v3, 0x0

    if-nez p1, :cond_47

    .line 2229
    const-string p1, "account is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    return v3

    .line 2231
    :cond_47
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1, v7, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 2238
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v8

    .line 2239
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 2240
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v2, "accounts"

    move-object v0, p0

    move-object v5, v8

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2246
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2248
    :try_start_67
    invoke-direct {p0, v8, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result p1
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6f

    .line 2250
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2248
    return p1

    .line 2250
    :catchall_6f
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 2232
    :cond_74
    new-array v0, v0, [Ljava/lang/Object;

    .line 2234
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, v0, v1

    .line 2232
    const-string/jumbo p1, "uid %s cannot explicitly remove accounts of type: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2236
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2303
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 2304
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 4

    .line 4423
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z

    move-result p1

    return p1
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 9

    .line 1984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1985
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "renameAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1986
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_3e
    if-eqz p2, :cond_a5

    .line 1991
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1992
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 1999
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2001
    :try_start_50
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 2002
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p2

    .line 2003
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2004
    const-string v3, "authAccount"

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    const-string v3, "accountType"

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    const-string v3, "accountAccessId"

    .line 2007
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object p2

    .line 2006
    invoke-virtual {p3, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_50 .. :try_end_74} :catchall_85

    .line 2009
    :try_start_74
    invoke-interface {p1, p3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_77} :catch_78
    .catchall {:try_start_74 .. :try_end_77} :catchall_85

    .line 2012
    goto :goto_80

    .line 2010
    :catch_78
    move-exception p1

    .line 2011
    :try_start_79
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_85

    .line 2014
    :goto_80
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2015
    nop

    .line 2016
    return-void

    .line 2014
    :catchall_85
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 1993
    :cond_8a
    new-array p1, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 1995
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p3

    const/4 p3, 0x1

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p2, p1, p3

    .line 1993
    const-string/jumbo p2, "uid %s cannot rename accounts of type: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1997
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1990
    :cond_a5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 12

    .line 4408
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p3

    .line 4409
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p3

    .line 4410
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 4411
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/AccountsDb;->renameSharedAccount(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    .line 4412
    if-lez v7, :cond_27

    .line 4413
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v6

    .line 4414
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4417
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    .line 4419
    :cond_27
    if-lez v7, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 14

    .line 758
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 761
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 762
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 763
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_3e

    .line 764
    :cond_22
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 766
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, p3

    .line 764
    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 768
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 770
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 772
    :try_start_42
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v9

    .line 773
    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result p1
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_53

    .line 776
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 773
    return p1

    .line 776
    :catchall_53
    move-exception p1

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2543
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2544
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :cond_3e
    const-string v2, "account cannot be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2550
    const-string v2, "authTokenType cannot be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2552
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2559
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2561
    :try_start_58
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2562
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_64

    .line 2564
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2565
    nop

    .line 2566
    return-void

    .line 2564
    :catchall_64
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 2553
    :cond_69
    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 2555
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, p3

    .line 2553
    const-string/jumbo p1, "uid %s cannot set auth tokens associated with accounts of type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2557
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method setBindInstantServiceAllowed(IZ)V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setBindInstantServiceAllowed(IZ)V

    .line 417
    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 8

    .line 2570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2571
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2572
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_36
    const-string v2, "account cannot be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2577
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2578
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 2585
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v3

    .line 2587
    :try_start_4b
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 2588
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_57

    .line 2590
    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2591
    nop

    .line 2592
    return-void

    .line 2590
    :catchall_57
    move-exception p1

    invoke-static {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 2579
    :cond_5c
    new-array p2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2581
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, v0

    .line 2579
    const-string/jumbo p1, "uid %s cannot set secrets for accounts of type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2583
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2662
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2663
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2667
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2664
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_3e
    if-eqz p2, :cond_90

    .line 2670
    if-eqz p1, :cond_88

    .line 2671
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2672
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 2679
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2681
    :try_start_52
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2682
    invoke-direct {p0, v2, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v3
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_68

    if-nez v3, :cond_60

    .line 2687
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2683
    return-void

    .line 2685
    :cond_60
    :try_start_60
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_68

    .line 2687
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2688
    nop

    .line 2689
    return-void

    .line 2687
    :catchall_68
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1

    .line 2673
    :cond_6d
    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 2675
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p2, p3

    .line 2673
    const-string/jumbo p1, "uid %s cannot set user data for accounts of type: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2677
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2670
    :cond_88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "account is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2669
    :cond_90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .registers 8

    .line 4083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 4086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4088
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v2

    .line 4089
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_17
    if-ltz v3, :cond_2b

    .line 4090
    aget-object v5, v2, v3

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v5, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_30

    if-eqz v5, :cond_28

    .line 4091
    nop

    .line 4096
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4091
    return v4

    .line 4089
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 4094
    :cond_2b
    const/4 p1, 0x0

    .line 4096
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4094
    return p1

    .line 4096
    :catchall_30
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4084
    :cond_35
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Only system can check for accounts across users"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 25

    .line 3306
    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    move-object/from16 v1, p6

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3307
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 3308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAddAccountSession: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", authTokenType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", requiredFeatures "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3312
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", caller\'s uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3315
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3308
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 3307
    :cond_6b
    move-object/from16 v11, p3

    move/from16 v6, p5

    .line 3317
    :goto_6f
    const/4 v4, 0x0

    if-eqz v0, :cond_74

    move v5, v3

    goto :goto_75

    :cond_74
    move v5, v4

    :goto_75
    const-string/jumbo v7, "response cannot be null"

    invoke-static {v5, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3318
    if-eqz v14, :cond_7e

    goto :goto_7f

    :cond_7e
    move v3, v4

    :goto_7f
    const-string v4, "accountType cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3321
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3322
    invoke-direct {v2, v4, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 3324
    const/16 v1, 0x64

    :try_start_94
    const-string v3, "User is not allowed to add an account!"

    invoke-interface {v0, v1, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_99} :catch_9a

    .line 3327
    goto :goto_9b

    .line 3326
    :catch_9a
    move-exception v0

    .line 3328
    :goto_9b
    invoke-direct {v2, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3329
    return-void

    .line 3331
    :cond_9f
    invoke-direct {v2, v4, v14, v3}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_b2

    .line 3333
    const/16 v1, 0x65

    :try_start_a7
    const-string v3, "User cannot modify accounts of this type (policy)."

    invoke-interface {v0, v1, v3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ac} :catch_ad

    .line 3336
    goto :goto_ae

    .line 3335
    :catch_ad
    move-exception v0

    .line 3337
    :goto_ae
    invoke-direct {v2, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3339
    return-void

    .line 3341
    :cond_b2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3342
    if-nez v1, :cond_bd

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_bd
    move-object v13, v1

    .line 3343
    const-string v1, "callerUid"

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3344
    const-string v1, "callerPid"

    invoke-virtual {v13, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3347
    const-string v1, "androidPackageName"

    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3348
    const-string v5, "android.permission.GET_PASSWORD"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v3, v5}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v10

    .line 3351
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v15

    .line 3353
    :try_start_dc
    invoke-virtual {v2, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 3354
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    const-string v5, "accounts"

    invoke-direct {v2, v4, v1, v5, v3}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3356
    new-instance v17, Lcom/android/server/accounts/AccountManagerService$11;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3378
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_103
    .catchall {:try_start_dc .. :try_end_103} :catchall_108

    .line 3380
    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3381
    nop

    .line 3382
    return-void

    .line 3380
    :catchall_108
    move-exception v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 23

    .line 3753
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    const/4 v1, 0x1

    invoke-static {v13, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3754
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 3755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUpdateCredentialsSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3759
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3755
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 3754
    :cond_5f
    move-object/from16 v12, p3

    move/from16 v6, p4

    .line 3761
    :goto_63
    if-eqz v4, :cond_b5

    .line 3764
    if-eqz v11, :cond_ad

    .line 3768
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3769
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3772
    const-string v3, "androidPackageName"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3773
    const-string v5, "android.permission.GET_PASSWORD"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v10

    .line 3776
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 3778
    :try_start_83
    invoke-virtual {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3779
    new-instance v16, Lcom/android/server/accounts/AccountManagerService$15;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3804
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accounts/AccountManagerService$15;->bind()V
    :try_end_a3
    .catchall {:try_start_83 .. :try_end_a3} :catchall_a8

    .line 3806
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3807
    nop

    .line 3808
    return-void

    .line 3806
    :catchall_a8
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3765
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3762
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 913
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 914
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 915
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 916
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 918
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 919
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 921
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 922
    nop

    .line 923
    return-void

    .line 921
    :catchall_1d
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5735
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    .line 5737
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    .line 5741
    if-eqz p4, :cond_12

    .line 5742
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_15

    .line 5744
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 5746
    :goto_15
    return-void

    .line 5738
    :cond_16
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 23

    .line 3710
    move-object/from16 v0, p1

    move-object/from16 v11, p2

    const/4 v1, 0x1

    move-object/from16 v13, p5

    invoke-static {v13, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3711
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 3712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3716
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3717
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3712
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 3711
    :cond_5d
    move-object/from16 v12, p3

    move/from16 v6, p4

    .line 3719
    :goto_61
    if-eqz v0, :cond_a2

    .line 3720
    if-eqz v11, :cond_9a

    .line 3721
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 3722
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 3724
    move-object/from16 v2, p0

    :try_start_6f
    invoke-virtual {v2, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3725
    new-instance v16, Lcom/android/server/accounts/AccountManagerService$14;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3740
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accounts/AccountManagerService$14;->bind()V
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_95

    .line 3742
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3743
    nop

    .line 3744
    return-void

    .line 3742
    :catchall_95
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3720
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3719
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateAccounts(I)V
    .registers 3

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    .line 1098
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1099
    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 6044
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6045
    if-nez v0, :cond_19

    .line 6046
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 6047
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6049
    :cond_19
    if-nez p4, :cond_1f

    .line 6050
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 6052
    :cond_1f
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6054
    :goto_22
    return-void
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 6017
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6018
    if-nez v0, :cond_19

    .line 6019
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 6020
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6022
    :cond_19
    if-nez p4, :cond_1f

    .line 6023
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 6025
    :cond_1f
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6027
    :goto_22
    return-void
.end method

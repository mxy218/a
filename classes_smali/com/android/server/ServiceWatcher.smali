.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$RebindServiceTask;,
        Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;,
        Lcom/android/server/ServiceWatcher$BlockingBinderRunner;,
        Lcom/android/server/ServiceWatcher$BinderRunner;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final GEOCODER_ACTION:Ljava/lang/String;

.field private static final NETWORK_PROVIDER_ACTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ServiceWatcher"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private volatile mBestComponent:Landroid/content/ComponentName;

.field private mBestService:Landroid/os/IBinder;

.field private volatile mBestUserId:I

.field private volatile mBestVersion:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    invoke-static {}, Lcom/android/server/LocationManagerService;->getGeoServiceAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceWatcher;->GEOCODER_ACTION:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/android/server/LocationManagerService;->getNetworkServiceAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceWatcher;->NETWORK_PROVIDER_ACTION:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .registers 15
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "logTag"  # Ljava/lang/String;
    .param p3, "action"  # Ljava/lang/String;
    .param p4, "overlaySwitchResId"  # I
    .param p5, "defaultServicePackageNameResId"  # I
    .param p6, "initialPackageNamesResId"  # I
    .param p7, "handler"  # Landroid/os/Handler;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    .local v0, "resources":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 170
    .local v1, "enableOverlay":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    .line 171
    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "pkgs":[Ljava/lang/String;
    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 173
    invoke-static {p1, v3}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 174
    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overlay enabled, packages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v3  # "pkgs":[Ljava/lang/String;
    goto :goto_67

    .line 176
    :cond_3b
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 177
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 178
    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Overlay disabled, default package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_67
    iput-object p7, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 183
    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 184
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 185
    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 187
    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServiceWatcher;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"  # Z

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ServiceWatcher;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ServiceWatcher;

    .line 68
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/ServiceWatcher;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"  # I

    .line 68
    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ServiceWatcher;

    .line 68
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 68
    sget-object v0, Lcom/android/server/ServiceWatcher;->NETWORK_PROVIDER_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 68
    sget-object v0, Lcom/android/server/ServiceWatcher;->GEOCODER_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ServiceWatcher;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ServiceWatcher;

    .line 68
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ServiceWatcher;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ServiceWatcher;

    .line 68
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/ServiceWatcher;

    .line 68
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private addObserver()V
    .registers 4

    .line 551
    sget-object v0, Lcom/android/server/ServiceWatcher;->NETWORK_PROVIDER_ACTION:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/server/ServiceWatcher;->GEOCODER_ACTION:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 552
    :cond_14
    new-instance v0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;-><init>(Lcom/android/server/ServiceWatcher;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    .line 553
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mObserver:Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->observer()V

    .line 555
    :cond_24
    return-void
.end method

.method private bind(Landroid/content/ComponentName;II)V
    .registers 8
    .param p1, "component"  # Landroid/content/ComponentName;
    .param p2, "version"  # I
    .param p3, "userId"  # I

    .line 362
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 364
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 367
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 368
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 369
    iput p3, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 371
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") (u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const v2, 0x40000005  # 2.0000012f

    .line 374
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 372
    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 375
    return-void
.end method

.method private bindBestPackage(Z)V
    .registers 18
    .param p1, "forceRebind"  # Z

    .line 279
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v4, 0x0

    if-ne v0, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v4

    :goto_12
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 282
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 283
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    :cond_24
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v5, 0x10000080

    iget v6, v1, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_3b

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_3c

    .line 289
    :cond_3b
    move-object v5, v0

    .line 293
    .end local v0  # "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v5, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_3c
    const/4 v0, 0x0

    .line 294
    .local v0, "bestComponent":Landroid/content/ComponentName;
    const/high16 v6, -0x80000000

    .line 295
    .local v6, "bestVersion":I
    const/4 v7, 0x0

    .line 297
    .local v7, "bestIsMultiuser":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v6

    move-object v6, v0

    .end local v0  # "bestComponent":Landroid/content/ComponentName;
    .local v6, "bestComponent":Landroid/content/ComponentName;
    .local v9, "bestVersion":I
    :goto_46
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 298
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    .line 299
    .local v11, "component":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 303
    .local v12, "packageName":Ljava/lang/String;
    :try_start_5d
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v13, 0x10000040

    invoke-virtual {v0, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 306
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v14, v1, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {v13, v14}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v13

    if-nez v13, :cond_95

    .line 307
    iget-object v13, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " resolves service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", but has wrong signature, ignoring"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_94} :catch_be

    .line 309
    goto :goto_46

    .line 314
    .end local v0  # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_95
    nop

    .line 317
    invoke-virtual {v1, v12}, Lcom/android/server/ServiceWatcher;->isNetworkProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 318
    goto :goto_46

    .line 323
    :cond_9d
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 324
    .local v0, "metadata":Landroid/os/Bundle;
    const/high16 v13, -0x80000000

    .line 325
    .local v13, "version":I
    const/4 v14, 0x0

    .line 326
    .local v14, "isMultiuser":Z
    if-eqz v0, :cond_b6

    .line 327
    const/high16 v15, -0x80000000

    const-string/jumbo v3, "serviceVersion"

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 328
    const-string/jumbo v3, "serviceIsMultiuser"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 331
    :cond_b6
    if-le v13, v9, :cond_bd

    .line 332
    move-object v3, v11

    .line 333
    .end local v6  # "bestComponent":Landroid/content/ComponentName;
    .local v3, "bestComponent":Landroid/content/ComponentName;
    move v6, v13

    .line 334
    .end local v9  # "bestVersion":I
    .local v6, "bestVersion":I
    move v7, v14

    move v9, v6

    move-object v6, v3

    .line 336
    .end local v0  # "metadata":Landroid/os/Bundle;
    .end local v3  # "bestComponent":Landroid/content/ComponentName;
    .end local v10  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11  # "component":Landroid/content/ComponentName;
    .end local v12  # "packageName":Ljava/lang/String;
    .end local v13  # "version":I
    .end local v14  # "isMultiuser":Z
    .local v6, "bestComponent":Landroid/content/ComponentName;
    .restart local v9  # "bestVersion":I
    :cond_bd
    goto :goto_46

    .line 311
    .restart local v10  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11  # "component":Landroid/content/ComponentName;
    .restart local v12  # "packageName":Ljava/lang/String;
    :catch_be
    move-exception v0

    .line 312
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    goto :goto_46

    .line 339
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11  # "component":Landroid/content/ComponentName;
    .end local v12  # "packageName":Ljava/lang/String;
    :cond_c5
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    aput-object v8, v3, v4

    .line 340
    iget-object v8, v1, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    if-nez v8, :cond_d5

    const-string v8, ""

    goto :goto_ed

    .line 341
    :cond_d5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_ed
    const/4 v10, 0x1

    aput-object v8, v3, v10

    const/4 v8, 0x2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v8

    const/4 v8, 0x3

    .line 342
    if-nez v6, :cond_102

    const-string/jumbo v11, "no new best component"

    goto :goto_114

    .line 343
    :cond_102
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "new best component: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_114
    aput-object v11, v3, v8

    .line 339
    const-string v8, "bindBestPackage for %s : %s found %d, %s"

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-nez v6, :cond_13d

    .line 347
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Odd, no component found for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->unbind()V

    .line 349
    return-void

    .line 352
    :cond_13d
    if-eqz v7, :cond_141

    move v0, v4

    goto :goto_143

    :cond_141
    iget v0, v1, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 353
    .local v0, "userId":I
    :goto_143
    iget-object v3, v1, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_154

    iget v3, v1, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    if-ne v9, v3, :cond_154

    iget v3, v1, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    if-ne v0, v3, :cond_154

    move v4, v10

    :cond_154
    move v3, v4

    .line 355
    .local v3, "alreadyBound":Z
    if-nez p1, :cond_159

    if-nez v3, :cond_15f

    .line 356
    :cond_159
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->unbind()V

    .line 357
    invoke-direct {v1, v6, v9, v0}, Lcom/android/server/ServiceWatcher;->bind(Landroid/content/ComponentName;II)V

    .line 359
    :cond_15f
    return-void
.end method

.method public static varargs getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "packageNames"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v1, "signatureSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    array-length v2, p1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_3f

    aget-object v4, p1, v3

    .line 112
    .local v4, "packageName":Ljava/lang/String;
    const/16 v5, 0x40

    :try_start_12
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 115
    .local v5, "signatures":[Landroid/content/pm/Signature;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v6, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_23} :catch_25

    .line 120
    nop

    .end local v5  # "signatures":[Landroid/content/pm/Signature;
    .end local v6  # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    goto :goto_3c

    .line 118
    :catch_25
    move-exception v5

    .line 119
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ServiceWatcher"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v4  # "packageName":Ljava/lang/String;
    .end local v5  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 122
    :cond_3f
    return-object v1
.end method

.method private isServiceMissing()Z
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 272
    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .registers 7
    .param p0, "signatures"  # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .line 128
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 131
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v1, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 136
    .local v3, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    .end local v3  # "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_24
    goto :goto_10

    .line 140
    :cond_25
    return v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"  # Ljava/lang/Runnable;

    .line 472
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 473
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    .line 475
    :cond_10
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 477
    :goto_15
    return-void
.end method

.method private runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 480
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 482
    :try_start_c
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object v0

    .line 483
    :catch_11
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 488
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_18
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 489
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    :try_start_22
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22 .. :try_end_26} :catch_27

    return-object v1

    .line 492
    :catch_27
    move-exception v1

    .line 494
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private unbind()V
    .registers 4

    .line 378
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_34

    .line 381
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 385
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 386
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 387
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 388
    return-void
.end method


# virtual methods
.method public getCurrentPackageName()Ljava/lang/String;
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 268
    .local v0, "bestComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1
.end method

.method public isNetworkProvider(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "valid":Z
    sget-object v1, Lcom/android/server/ServiceWatcher;->NETWORK_PROVIDER_ACTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lcom/android/server/ServiceWatcher;->GEOCODER_ACTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    .line 544
    :cond_16
    const/4 v0, 0x1

    goto :goto_3a

    .line 533
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_provider_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "settingPackage":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 537
    iget-object v3, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 540
    :cond_30
    if-eqz v1, :cond_38

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 541
    :cond_38
    const/4 v0, 0x1

    .line 543
    .end local v1  # "settingPackage":Ljava/lang/String;
    :cond_39
    nop

    .line 546
    :goto_3a
    return v0
.end method

.method public synthetic lambda$onServiceConnected$3$ServiceWatcher(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "component"  # Landroid/content/ComponentName;
    .param p2, "binder"  # Landroid/os/IBinder;

    .line 444
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 446
    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher;->onBind()V

    .line 447
    return-void
.end method

.method public synthetic lambda$onServiceDisconnected$4$ServiceWatcher(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 453
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 456
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "send service disconnected message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object v1, Lcom/android/server/ServiceWatcher;->NETWORK_PROVIDER_ACTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    sget-object v1, Lcom/android/server/ServiceWatcher;->GEOCODER_ACTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 458
    :cond_35
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/ServiceWatcher$RebindServiceTask;

    invoke-direct {v2, p0, v0}, Lcom/android/server/ServiceWatcher$RebindServiceTask;-><init>(Lcom/android/server/ServiceWatcher;Lcom/android/server/ServiceWatcher$1;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher;->onUnbind()V

    .line 462
    return-void
.end method

.method public synthetic lambda$runOnBinder$1$ServiceWatcher(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .registers 5
    .param p1, "runner"  # Lcom/android/server/ServiceWatcher$BinderRunner;

    .line 396
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 397
    return-void

    .line 401
    :cond_5
    :try_start_5
    invoke-interface {p1, v0}, Lcom/android/server/ServiceWatcher$BinderRunner;->run(Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_34

    .line 407
    :catch_9
    move-exception v0

    goto :goto_35

    .line 402
    :catch_b
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception while while running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_34
    nop

    .line 410
    :goto_35
    return-void
.end method

.method public synthetic lambda$runOnBinderBlocking$2$ServiceWatcher(Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)Ljava/lang/Object;
    .registers 4
    .param p1, "defaultValue"  # Ljava/lang/Object;
    .param p2, "runner"  # Lcom/android/server/ServiceWatcher$BlockingBinderRunner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 427
    return-object p1

    .line 431
    :cond_5
    :try_start_5
    invoke-interface {p2, v0}, Lcom/android/server/ServiceWatcher$BlockingBinderRunner;->run(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    .line 432
    :catch_a
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    return-object p1
.end method

.method public synthetic lambda$start$0$ServiceWatcher()V
    .registers 2

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackage(Z)V

    return-void
.end method

.method protected onBind()V
    .registers 1

    .line 190
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "component"  # Landroid/content/ComponentName;
    .param p2, "binder"  # Landroid/os/IBinder;

    .line 443
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;-><init>(Lcom/android/server/ServiceWatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 452
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;-><init>(Lcom/android/server/ServiceWatcher;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method protected onUnbind()V
    .registers 1

    .line 192
    return-void
.end method

.method public final runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .registers 3
    .param p1, "runner"  # Lcom/android/server/ServiceWatcher$BinderRunner;

    .line 395
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;-><init>(Lcom/android/server/ServiceWatcher;Lcom/android/server/ServiceWatcher$BinderRunner;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method public final runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/ServiceWatcher$BlockingBinderRunner<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    .local p1, "runner":Lcom/android/server/ServiceWatcher$BlockingBinderRunner;, "Lcom/android/server/ServiceWatcher$BlockingBinderRunner<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;-><init>(Lcom/android/server/ServiceWatcher;Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 436
    :catch_a
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/InterruptedException;
    return-object p2
.end method

.method public final start()Z
    .registers 9

    .line 205
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->isServiceMissing()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 208
    :cond_8
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 209
    new-instance v0, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 230
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/ServiceWatcher$1;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 234
    :cond_1b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v3, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->addObserver()V

    .line 258
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 260
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$ServiceWatcher$IP3HV4ye72eH3YxzGb9dMfcGWPE;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$ServiceWatcher$IP3HV4ye72eH3YxzGb9dMfcGWPE;-><init>(Lcom/android/server/ServiceWatcher;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 468
    .local v0, "bestComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_8

    const-string/jumbo v1, "null"

    goto :goto_22

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_22
    return-object v1
.end method

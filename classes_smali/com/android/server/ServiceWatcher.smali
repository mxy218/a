.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$BlockingBinderRunner;,
        Lcom/android/server/ServiceWatcher$BinderRunner;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .registers 9

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 149
    const/4 p3, 0x0

    if-eqz p2, :cond_21

    .line 150
    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 151
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 152
    invoke-static {p1, p2}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 154
    goto :goto_35

    .line 155
    :cond_21
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 156
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    aput-object p5, p2, p4

    invoke-static {p1, p2}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 160
    :goto_35
    iput-object p7, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 162
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 163
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 164
    const/16 p1, -0x2710

    iput p1, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 166
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServiceWatcher;Z)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ServiceWatcher;)I
    .registers 1

    .line 59
    iget p0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/ServiceWatcher;I)I
    .registers 2

    .line 59
    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    return p1
.end method

.method private bind(Landroid/content/ComponentName;II)V
    .registers 6

    .line 331
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

    .line 333
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 336
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 337
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 338
    iput p3, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 341
    iget-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const p2, 0x40000005  # 2.0000012f

    .line 343
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 341
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 344
    return-void
.end method

.method private bindBestPackage(Z)V
    .registers 14

    .line 254
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    :goto_11
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 256
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    :cond_22
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v4, 0x10000080

    iget v5, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 264
    if-nez v0, :cond_37

    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 268
    :cond_37
    const/4 v1, 0x0

    .line 269
    nop

    .line 270
    nop

    .line 272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v4, -0x80000000

    move v5, v3

    move v6, v4

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 273
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v8}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 274
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 278
    :try_start_58
    iget-object v10, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const v11, 0x10000040

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 281
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v11, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {v10, v11}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_90

    .line 282
    iget-object v7, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " resolves service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", but has wrong signature, ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_58 .. :try_end_8f} :catch_b2

    .line 284
    goto :goto_42

    .line 289
    :cond_90
    nop

    .line 292
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 293
    nop

    .line 294
    nop

    .line 295
    if-eqz v7, :cond_a8

    .line 296
    const-string/jumbo v9, "serviceVersion"

    invoke-virtual {v7, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 297
    const-string/jumbo v10, "serviceIsMultiuser"

    invoke-virtual {v7, v10, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_aa

    .line 295
    :cond_a8
    move v7, v3

    move v9, v4

    .line 300
    :goto_aa
    if-le v9, v6, :cond_b1

    .line 301
    nop

    .line 302
    nop

    .line 303
    move v5, v7

    move-object v1, v8

    move v6, v9

    .line 305
    :cond_b1
    goto :goto_42

    .line 286
    :catch_b2
    move-exception v7

    .line 287
    iget-object v8, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    goto :goto_42

    .line 315
    :cond_b9
    if-nez v1, :cond_d7

    .line 316
    iget-object p1, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Odd, no component found for service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbind()V

    .line 318
    return-void

    .line 321
    :cond_d7
    if-eqz v5, :cond_db

    move v0, v3

    goto :goto_dd

    :cond_db
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 322
    :goto_dd
    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget v4, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    if-ne v6, v4, :cond_ee

    iget v4, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    if-ne v0, v4, :cond_ee

    goto :goto_ef

    :cond_ee
    move v2, v3

    .line 324
    :goto_ef
    if-nez p1, :cond_f3

    if-nez v2, :cond_f9

    .line 325
    :cond_f3
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->unbind()V

    .line 326
    invoke-direct {p0, v1, v6, v0}, Lcom/android/server/ServiceWatcher;->bind(Landroid/content/ComponentName;II)V

    .line 328
    :cond_f9
    return-void
.end method

.method public static varargs getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
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

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_3f

    aget-object v3, p1, v2

    .line 90
    const v4, 0x100040

    :try_start_13
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 94
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 95
    invoke-static {v5, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_24} :catch_25

    .line 99
    goto :goto_3c

    .line 97
    :catch_25
    move-exception v4

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceWatcher"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 101
    :cond_3f
    return-object v0
.end method

.method private isServiceMissing()Z
    .registers 5

    .line 247
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

    .line 250
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 247
    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .registers 4
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

    .line 107
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 110
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 111
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 115
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 116
    const/4 p0, 0x1

    return p0

    .line 118
    :cond_24
    goto :goto_10

    .line 119
    :cond_25
    return v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .registers 4

    .line 435
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 436
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    .line 438
    :cond_10
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    :goto_15
    return-void
.end method

.method private runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 4
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

    .line 443
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_18

    .line 445
    :try_start_c
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    .line 446
    :catch_11
    move-exception p1

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 451
    :cond_18
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 452
    iget-object p1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    :try_start_22
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22 .. :try_end_26} :catch_27

    return-object p1

    .line 455
    :catch_27
    move-exception p1

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private unbind()V
    .registers 3

    .line 347
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

    .line 349
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1b

    .line 351
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 354
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 355
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 356
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 357
    return-void
.end method


# virtual methods
.method public getCurrentPackageName()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 243
    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public synthetic lambda$onServiceConnected$3$ServiceWatcher(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 414
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 415
    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher;->onBind()V

    .line 416
    return-void
.end method

.method public synthetic lambda$onServiceDisconnected$4$ServiceWatcher(Landroid/content/ComponentName;)V
    .registers 2

    .line 423
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 424
    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher;->onUnbind()V

    .line 425
    return-void
.end method

.method public synthetic lambda$runOnBinder$1$ServiceWatcher(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 366
    return-void

    .line 370
    :cond_5
    :try_start_5
    invoke-interface {p1, v0}, Lcom/android/server/ServiceWatcher$BinderRunner;->run(Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_34

    .line 376
    :catch_9
    move-exception p1

    goto :goto_35

    .line 371
    :catch_b
    move-exception v0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception while while running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ServiceWatcher"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    :goto_34
    nop

    .line 379
    :goto_35
    return-void
.end method

.method public synthetic lambda$runOnBinderBlocking$2$ServiceWatcher(Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 396
    return-object p1

    .line 400
    :cond_5
    :try_start_5
    invoke-interface {p2, v0}, Lcom/android/server/ServiceWatcher$BlockingBinderRunner;->run(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p1

    .line 401
    :catch_a
    move-exception p2

    .line 402
    return-object p1
.end method

.method public synthetic lambda$start$0$ServiceWatcher()V
    .registers 2

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackage(Z)V

    return-void
.end method

.method protected onBind()V
    .registers 1

    .line 169
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 412
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;-><init>(Lcom/android/server/ServiceWatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 421
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;-><init>(Lcom/android/server/ServiceWatcher;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method protected onUnbind()V
    .registers 1

    .line 171
    return-void
.end method

.method public final runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .registers 3

    .line 364
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;-><init>(Lcom/android/server/ServiceWatcher;Lcom/android/server/ServiceWatcher$BinderRunner;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 380
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

    .line 394
    :try_start_0
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;-><init>(Lcom/android/server/ServiceWatcher;Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    .line 405
    :catch_a
    move-exception p1

    .line 406
    return-object p2
.end method

.method public final start()Z
    .registers 12

    .line 184
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->isServiceMissing()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 187
    :cond_8
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 188
    new-instance v0, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 209
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/ServiceWatcher$1;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 213
    :cond_1b
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v6, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 233
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 235
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$ServiceWatcher$IP3HV4ye72eH3YxzGb9dMfcGWPE;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$ServiceWatcher$IP3HV4ye72eH3YxzGb9dMfcGWPE;-><init>(Lcom/android/server/ServiceWatcher;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 431
    if-nez v0, :cond_8

    const-string/jumbo v0, "null"

    goto :goto_22

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_22
    return-object v0
.end method

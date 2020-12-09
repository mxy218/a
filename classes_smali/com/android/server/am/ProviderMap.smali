.class public final Lcom/android/server/am/ProviderMap;
.super Ljava/lang/Object;
.source "ProviderMap.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProviderMap"


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mProvidersByClassPerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvidersByNamePerUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSingletonByClass:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSingletonByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 66
    return-void
.end method

.method private collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 198
    nop

    .line 199
    invoke-virtual {p5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 200
    const/4 v3, 0x1

    if-eqz p1, :cond_35

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 201
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    if-eqz p2, :cond_35

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 203
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_35

    :cond_33
    move v4, v0

    goto :goto_36

    :cond_35
    :goto_35
    move v4, v3

    .line 204
    :goto_36
    if-eqz v4, :cond_4e

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_46

    if-nez p4, :cond_46

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 205
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    if-nez v4, :cond_4e

    .line 206
    :cond_46
    if-nez p3, :cond_49

    .line 207
    return v3

    .line 209
    :cond_49
    nop

    .line 210
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    .line 212
    :cond_4e
    goto :goto_b

    .line 213
    :cond_4f
    return v1
.end method

.method private dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V
    .registers 13

    .line 375
    array-length v0, p5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_27

    aget-object v2, p5, v1

    .line 376
    if-nez p6, :cond_24

    const-string v3, "--proto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 377
    iget-object p1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_23

    iget-object p1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_23

    .line 378
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;)V

    .line 380
    :cond_23
    return-void

    .line 375
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 383
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 385
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "PROVIDER "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 387
    const-string p1, " pid="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    iget-object p1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_5a

    .line 389
    iget-object p1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5f

    .line 391
    :cond_5a
    const-string p1, "(not running)"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :goto_5f
    if-eqz p6, :cond_65

    .line 394
    const/4 p1, 0x1

    invoke-virtual {p4, p3, v0, p1}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 396
    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_3b .. :try_end_66} :catchall_86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 397
    iget-object p1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_85

    iget-object p1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_85

    .line 398
    const-string p1, "    Client:"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 400
    const-string v1, "      "

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;)V

    .line 402
    :cond_85
    return-void

    .line 396
    :catchall_86
    move-exception p1

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 250
    invoke-virtual {p6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    .line 251
    const/4 v0, 0x0

    move-object v1, p4

    move p4, v0

    .line 252
    :goto_b
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 253
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 254
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 255
    if-eqz p3, :cond_2a

    iget-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 256
    goto :goto_b

    .line 258
    :cond_2a
    if-eqz p5, :cond_32

    .line 259
    const-string p4, ""

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    move p5, v0

    .line 262
    :cond_32
    if-eqz v1, :cond_39

    .line 263
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    const/4 p4, 0x0

    move-object v1, p4

    .line 266
    :cond_39
    const/4 p4, 0x1

    .line 267
    const-string v3, "  * "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    const-string v3, "    "

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/am/ContentProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 270
    goto :goto_b

    .line 271
    :cond_48
    return p4
.end method

.method private dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 276
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    .line 277
    const/4 v0, 0x0

    move v1, p4

    move-object p4, p3

    move p3, v0

    .line 278
    :goto_c
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 279
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 281
    if-eqz p2, :cond_2b

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 282
    goto :goto_c

    .line 284
    :cond_2b
    if-eqz v1, :cond_33

    .line 285
    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    move v1, v0

    .line 288
    :cond_33
    if-eqz p4, :cond_3a

    .line 289
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    const/4 p3, 0x0

    move-object p4, p3

    .line 292
    :cond_3a
    const/4 p3, 0x1

    .line 293
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    goto :goto_c

    .line 298
    :cond_56
    return p3
.end method

.method private dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;)V
    .registers 9

    .line 438
    :try_start_0
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_27

    .line 440
    :try_start_5
    iget-object v1, p4, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 441
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object p4, p4, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-interface {p4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 440
    invoke-interface {v1, v2, p4, p5}, Landroid/app/IApplicationThread;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 445
    const-wide/16 p4, 0x7d0

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_22

    .line 447
    :try_start_1e
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 448
    goto :goto_43

    .line 447
    :catchall_22
    move-exception p1

    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw p1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_27

    .line 451
    :catch_27
    move-exception p1

    .line 452
    const-string p1, "      Got a RemoteException while dumping the service"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_44

    .line 449
    :catch_2e
    move-exception p1

    .line 450
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "      Failure while dumping the provider: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    :goto_43
    nop

    .line 454
    :goto_44
    return-void
.end method

.method private getProvidersByName(I)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .line 169
    if-ltz p1, :cond_18

    .line 170
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 171
    if-nez v0, :cond_17

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    return-object v0

    .line 176
    :cond_17
    return-object v0

    .line 169
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-static {p1}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    .line 337
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 338
    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 339
    const/4 v3, 0x0

    :goto_1e
    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    .line 340
    iget-object v4, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 343
    :cond_38
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/CollectionUtils;->addIf(Ljava/util/List;Ljava/util/Collection;Ljava/util/function/Predicate;)V

    .line 344
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 346
    sget-object p1, Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;->INSTANCE:Lcom/android/server/am/-$$Lambda$HKoBBTwYfMTyX1rzuzxIXu0s2cc;

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 347
    return-object v1

    .line 344
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method


# virtual methods
.method collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;)Z"
        }
    .end annotation

    .line 219
    move-object v7, p0

    move/from16 v8, p5

    .line 220
    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eq v8, v9, :cond_c

    if-nez v8, :cond_a

    goto :goto_c

    :cond_a
    move v11, v10

    goto :goto_1c

    .line 221
    :cond_c
    :goto_c
    iget-object v5, v7, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    move v11, v0

    .line 224
    :goto_1c
    const/4 v12, 0x1

    if-nez p3, :cond_22

    if-eqz v11, :cond_22

    .line 225
    return v12

    .line 227
    :cond_22
    if-ne v8, v9, :cond_4c

    .line 228
    nop

    :goto_25
    iget-object v0, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_61

    .line 229
    iget-object v0, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 230
    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/HashMap;

    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 231
    if-nez p3, :cond_48

    .line 232
    return v12

    .line 234
    :cond_48
    move v11, v12

    .line 228
    :cond_49
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 238
    :cond_4c
    nop

    .line 239
    invoke-virtual {p0, v8}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v5

    .line 240
    if-eqz v5, :cond_61

    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZLjava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v11, v0

    .line 245
    :cond_61
    return v11
.end method

.method protected dumpProvider(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 16

    .line 352
    invoke-direct {p0, p3}, Lcom/android/server/am/ProviderMap;->getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 354
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    if-gtz p5, :cond_c

    .line 355
    return v0

    .line 358
    :cond_c
    nop

    .line 359
    const/4 p5, 0x1

    move v1, v0

    :goto_f
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 360
    if-eqz v1, :cond_1a

    .line 361
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 363
    :cond_1a
    nop

    .line 364
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    const-string v3, ""

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpProvider(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;Z)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    move v1, p5

    goto :goto_f

    .line 366
    :cond_30
    return p5
.end method

.method protected dumpProviderProto(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 13

    .line 411
    array-length v0, p4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    .line 412
    array-length p4, p4

    const-string v0, "--proto"

    aput-object v0, v7, p4

    .line 414
    invoke-direct {p0, p3}, Lcom/android/server/am/ProviderMap;->getProvidersForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 416
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    if-gtz p4, :cond_1b

    .line 417
    return v0

    .line 421
    :cond_1b
    move p4, v0

    :goto_1c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_3e

    .line 422
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    .line 423
    iget-object v2, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3b

    iget-object v2, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_3b

    .line 424
    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProviderMap;->dumpToTransferPipe(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ContentProviderRecord;[Ljava/lang/String;)V

    .line 425
    return v1

    .line 421
    :cond_3b
    add-int/lit8 p4, p4, 0x1

    goto :goto_1c

    .line 428
    :cond_3e
    return v0
.end method

.method dumpProvidersLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 14

    .line 302
    nop

    .line 304
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_19

    .line 305
    iget-object v8, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    const/4 v7, 0x0

    const-string v6, "  Published single-user content providers (by class):"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_1a

    .line 304
    :cond_19
    move v0, v1

    .line 310
    :goto_1a
    move v9, v0

    move v0, v1

    :goto_1c
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_56

    .line 311
    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/HashMap;

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Published user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 313
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " content providers (by class):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v2

    or-int/2addr v9, v2

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 317
    :cond_56
    if-eqz p2, :cond_9f

    .line 318
    iget-object v7, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    const-string v5, "  Single-user authority to provider mappings:"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result p2

    or-int/2addr p2, v9

    .line 321
    nop

    :goto_66
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_a0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 323
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " authority to provider mappings:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    .line 325
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    .line 322
    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v0

    or-int/2addr p2, v0

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 317
    :cond_9f
    move p2, v9

    .line 328
    :cond_a0
    return p2
.end method

.method getProviderByClass(Landroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;
    .registers 3

    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p1

    return-object p1
.end method

.method getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 96
    if-eqz v0, :cond_b

    .line 97
    return-object v0

    .line 101
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ContentProviderRecord;

    return-object p1
.end method

.method getProviderByName(Ljava/lang/String;)Lcom/android/server/am/ContentProviderRecord;
    .registers 3

    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProviderMap;->getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p1

    return-object p1
.end method

.method getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 78
    if-eqz v0, :cond_b

    .line 79
    return-object v0

    .line 83
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ContentProviderRecord;

    return-object p1
.end method

.method getProvidersByClass(I)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation

    .line 181
    if-ltz p1, :cond_18

    .line 182
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 184
    if-nez v0, :cond_17

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    return-object v0

    .line 190
    :cond_17
    return-object v0

    .line 181
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 4

    .line 122
    iget-boolean v0, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_a

    .line 123
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 125
    :cond_a
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_19
    return-void
.end method

.method putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
    .registers 4

    .line 109
    iget-boolean v0, p2, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v0, :cond_a

    .line 110
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 112
    :cond_a
    iget-object v0, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 113
    invoke-direct {p0, v0}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_19
    return-void
.end method

.method removeProviderByClass(Landroid/content/ComponentName;I)V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 153
    iget-object p2, p0, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 155
    :cond_e
    if-ltz p2, :cond_23

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 163
    iget-object p1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 166
    :cond_22
    :goto_22
    return-void

    .line 155
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method removeProviderByName(Ljava/lang/String;I)V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 134
    iget-object p2, p0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 136
    :cond_e
    if-ltz p2, :cond_23

    .line 140
    invoke-direct {p0, p2}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 144
    iget-object p1, p0, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 147
    :cond_22
    :goto_22
    return-void

    .line 136
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

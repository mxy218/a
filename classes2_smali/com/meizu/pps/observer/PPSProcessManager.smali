.class public Lcom/meizu/pps/observer/PPSProcessManager;
.super Ljava/lang/Object;
.source "PPSProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/pps/observer/PPSProcessManager$Instance;
    }
.end annotation


# instance fields
.field private final mAdjList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOomList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOomStringList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/pps/observer/PPSProcess;",
            ">;"
        }
    .end annotation
.end field

.field private mTopProcess:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mTopProcess:I

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mAdjList:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomList:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomStringList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/pps/observer/PPSProcessManager$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/meizu/pps/observer/PPSProcessManager$1;

    .line 34
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSProcessManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/meizu/pps/observer/PPSProcessManager;
    .registers 1

    .line 49
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager$Instance;->access$100()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "reason"  # Ljava/lang/String;

    .line 79
    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    .line 81
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    new-instance v1, Lcom/meizu/pps/observer/PPSProcess;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/meizu/pps/observer/PPSProcess;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 85
    invoke-static {p1}, Lcom/android/server/am/AmsUtils;->getCloneId(Ljava/lang/Object;)I

    move-result v5

    iget v8, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 82
    move-object v6, p2

    move v7, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/meizu/pps/observer/PPSEventDispatcher;->add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    .line 89
    :cond_27
    monitor-exit p0

    .line 90
    return-void

    .line 89
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public applyUpdate()V
    .registers 9

    .line 216
    monitor-enter p0

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    :try_start_2
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/pps/observer/PPSEventDispatcher;->isConnected()Z

    move-result v1

    .line 219
    .local v1, "isReady":Z
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_c
    iget-object v4, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_67

    .line 220
    iget-object v4, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/pps/observer/PPSProcess;

    move-object v0, v4

    .line 222
    iget v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomPid:I

    iget v5, v0, Lcom/meizu/pps/observer/PPSProcess;->mSetOomPid:I

    if-ne v4, v5, :cond_2d

    iget-object v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomString:Ljava/lang/String;

    iget-object v5, v0, Lcom/meizu/pps/observer/PPSProcess;->mSetOomString:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 224
    :cond_2d
    iget v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomPid:I

    iput v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mSetOomPid:I

    .line 225
    iget-object v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomString:Ljava/lang/String;

    iput-object v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mSetOomString:Ljava/lang/String;

    .line 226
    if-eqz v1, :cond_4b

    .line 227
    iget-object v4, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomList:Landroid/util/SparseArray;

    iget v5, v0, Lcom/meizu/pps/observer/PPSProcess;->mPid:I

    iget v6, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomPid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    iget-object v4, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomStringList:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_4b
    iget v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurAdj:I

    iget v5, v0, Lcom/meizu/pps/observer/PPSProcess;->mSetAdj:I

    if-eq v4, v5, :cond_64

    .line 233
    iget v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurAdj:I

    iput v4, v0, Lcom/meizu/pps/observer/PPSProcess;->mSetAdj:I

    .line 234
    if-eqz v1, :cond_64

    .line 235
    iget-object v4, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mAdjList:Landroid/util/SparseArray;

    iget v5, v0, Lcom/meizu/pps/observer/PPSProcess;->mPid:I

    iget v6, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurAdj:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 241
    .end local v3  # "i":I
    :cond_67
    iget-object v3, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 242
    .local v3, "len":I
    if-lez v3, :cond_ad

    .line 243
    new-array v4, v3, [I

    .line 244
    .local v4, "pid":[I
    new-array v5, v3, [I

    .line 245
    .local v5, "oomPid":[I
    move v6, v2

    .local v6, "i":I
    :goto_74
    iget-object v7, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomList:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_95

    .line 246
    iget-object v7, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomList:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v4, v6

    .line 247
    iget-object v7, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomList:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    .line 249
    .end local v6  # "i":I
    :cond_95
    new-array v6, v3, [Ljava/lang/String;

    .line 250
    .local v6, "oomString":[Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomStringList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 251
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v6}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setOom([I[I[Ljava/lang/String;)V

    .line 252
    iget-object v7, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomStringList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 253
    iget-object v7, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mOomList:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 257
    .end local v4  # "pid":[I
    .end local v5  # "oomPid":[I
    .end local v6  # "oomString":[Ljava/lang/String;
    :cond_ad
    iget-object v4, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mAdjList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v4

    .line 258
    if-lez v3, :cond_e8

    .line 259
    new-array v4, v3, [I

    .line 260
    .restart local v4  # "pid":[I
    new-array v5, v3, [I

    .line 261
    .local v5, "oomAdj":[I
    nop

    .local v2, "i":I
    :goto_bb
    iget-object v6, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mAdjList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_dc

    .line 262
    iget-object v6, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mAdjList:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v4, v2

    .line 263
    iget-object v6, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mAdjList:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 265
    .end local v2  # "i":I
    :cond_dc
    iget-object v2, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mAdjList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 266
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setAdj([I[I)V

    .line 268
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    .end local v1  # "isReady":Z
    .end local v3  # "len":I
    .end local v4  # "pid":[I
    .end local v5  # "oomAdj":[I
    :cond_e8
    monitor-exit p0

    .line 269
    return-void

    .line 268
    :catchall_ea
    move-exception v0

    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_2 .. :try_end_ec} :catchall_ea

    throw v0
.end method

.method public clearProcessWindow(I)V
    .registers 6
    .param p1, "pid"  # I

    .line 290
    monitor-enter p0

    .line 291
    if-nez p1, :cond_5

    :try_start_3
    monitor-exit p0

    return-void

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/pps/observer/PPSProcess;

    .line 293
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v0, :cond_1c

    .line 294
    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSProcess;->destroyWindow()V

    .line 295
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setFlags(III)V

    .line 300
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    :cond_1c
    monitor-exit p0

    .line 301
    return-void

    .line 300
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public destoryWindow(II)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "winId"  # I

    .line 166
    monitor-enter p0

    .line 167
    if-nez p1, :cond_5

    :try_start_3
    monitor-exit p0

    return-void

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/pps/observer/PPSProcess;

    .line 169
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v0, :cond_1f

    invoke-virtual {v0, p2}, Lcom/meizu/pps/observer/PPSProcess;->hideWindow(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 170
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setFlags(III)V

    .line 175
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    :cond_1f
    monitor-exit p0

    .line 176
    return-void

    .line 175
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 304
    monitor-enter p0

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 307
    iget-object v3, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/pps/observer/PPSProcess;

    move-object v0, v3

    .line 308
    iget-object v3, v0, Lcom/meizu/pps/observer/PPSProcess;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    const-string v3, " pid:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    iget v3, v0, Lcom/meizu/pps/observer/PPSProcess;->mPid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 311
    const-string v3, " adj:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget v3, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurAdj:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 313
    const-string v3, " visible:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget v3, v0, Lcom/meizu/pps/observer/PPSProcess;->mFlags:I

    sget v4, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_3d

    move v3, v4

    goto :goto_3e

    :cond_3d
    move v3, v1

    :goto_3e
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    const-string v3, " flags:0x%x\n"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/meizu/pps/observer/PPSProcess;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 317
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    .end local v2  # "i":I
    :cond_5b
    monitor-exit p0

    .line 318
    return-void

    .line 317
    :catchall_5d
    move-exception v0

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method public fillProcesses(Lcom/meizu/common/pps/event/DoInitArgs;)V
    .registers 8
    .param p1, "args"  # Lcom/meizu/common/pps/event/DoInitArgs;

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 55
    .local v0, "size":I
    new-array v1, v0, [Lcom/meizu/common/pps/event/DoInitArgs$P;

    iput-object v1, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "p":Lcom/meizu/pps/observer/PPSProcess;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_9f

    .line 58
    iget-object v3, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/pps/observer/PPSProcess;

    move-object v1, v3

    .line 59
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    new-instance v4, Lcom/meizu/common/pps/event/DoInitArgs$P;

    invoke-direct {v4}, Lcom/meizu/common/pps/event/DoInitArgs$P;-><init>()V

    aput-object v4, v3, v2

    .line 60
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->pkg:Ljava/lang/String;

    .line 61
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->uid:I

    .line 62
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/am/AmsUtils;->getCloneId(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->id:I

    .line 63
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->packageFlags:I

    .line 64
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mCreateReason:Ljava/lang/String;

    iput-object v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->reason:Ljava/lang/String;

    .line 65
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mName:Ljava/lang/String;

    iput-object v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->name:Ljava/lang/String;

    .line 66
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mPid:I

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->pid:I

    .line 67
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mCurAdj:I

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->adj:I

    .line 68
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mCurOomPid:I

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->oomPid:I

    .line 69
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mFlags:I

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->flags:I

    .line 70
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mPss:I

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->pss:I

    .line 71
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mRss:I

    iput v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->rss:I

    .line 72
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget-wide v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mCreateTime:J

    iput-wide v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->createTime:J

    .line 73
    iget-object v3, p1, Lcom/meizu/common/pps/event/DoInitArgs;->mProcesses:[Lcom/meizu/common/pps/event/DoInitArgs$P;

    aget-object v3, v3, v2

    iget-wide v4, v1, Lcom/meizu/pps/observer/PPSProcess;->mLastActiveTime:J

    iput-wide v4, v3, Lcom/meizu/common/pps/event/DoInitArgs$P;->lastActiveTime:J

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 75
    .end local v0  # "size":I
    .end local v1  # "p":Lcom/meizu/pps/observer/PPSProcess;
    .end local v2  # "i":I
    :cond_9f
    monitor-exit p0

    .line 76
    return-void

    .line 75
    :catchall_a1
    move-exception v0

    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_1 .. :try_end_a3} :catchall_a1

    throw v0
.end method

.method public getNativePss()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AmsExecutor;->getNativeMemInfo()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "nativeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/util/List;>;"
    if-eqz v0, :cond_7a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7a

    .line 323
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 324
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 325
    .local v2, "procNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 326
    .local v3, "procsLen":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 327
    .local v4, "procNamesLen":I
    if-nez v3, :cond_2d

    if-eqz v4, :cond_7a

    if-ne v3, v4, :cond_7a

    .line 328
    :cond_2d
    new-array v5, v3, [I

    .line 329
    .local v5, "pids":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_30
    if-ge v6, v3, :cond_41

    .line 330
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    .line 329
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 332
    .end local v6  # "i":I
    :cond_41
    invoke-virtual {p0, v5}, Lcom/meizu/pps/observer/PPSProcessManager;->getPssExt([I)[I

    move-result-object v6

    .line 333
    .local v6, "pss":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4b
    if-ge v8, v3, :cond_79

    .line 335
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 337
    .end local v8  # "i":I
    :cond_79
    return-object v7

    .line 340
    .end local v1  # "procs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2  # "procNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3  # "procsLen":I
    .end local v4  # "procNamesLen":I
    .end local v5  # "pids":[I
    .end local v6  # "pss":[I
    .end local v7  # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPss([I)[I
    .registers 8
    .param p1, "pids"  # [I

    .line 281
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_4
    array-length v0, p1

    new-array v0, v0, [I

    .line 283
    .local v0, "pss":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    .line 284
    aget v2, p1, v1

    invoke-static {v2}, Landroid/os/Process;->getPss(I)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, v0, v1

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 286
    .end local v1  # "i":I
    :cond_1a
    return-object v0
.end method

.method public getPssExt([I)[I
    .registers 7
    .param p1, "pids"  # [I

    .line 344
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 345
    :cond_4
    array-length v1, p1

    new-array v1, v1, [I

    .line 346
    .local v1, "pss":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_17

    .line 347
    aget v3, p1, v2

    invoke-static {v3, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v1, v2

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 349
    .end local v2  # "i":I
    :cond_17
    return-object v1
.end method

.method public hideWindow(II)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "winId"  # I

    .line 153
    monitor-enter p0

    .line 154
    if-nez p1, :cond_5

    :try_start_3
    monitor-exit p0

    return-void

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/pps/observer/PPSProcess;

    .line 156
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v0, :cond_1f

    invoke-virtual {v0, p2}, Lcom/meizu/pps/observer/PPSProcess;->hideWindow(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 157
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setFlags(III)V

    .line 162
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    :cond_1f
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public isAppRunning(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 370
    monitor-enter p0

    .line 371
    :try_start_1
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 372
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_29

    .line 373
    iget-object v2, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/pps/observer/PPSProcess;

    .line 374
    .local v2, "ppsProcess":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v2, :cond_26

    .line 375
    iget-object v3, v2, Lcom/meizu/pps/observer/PPSProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, p2, :cond_26

    iget-object v3, v2, Lcom/meizu/pps/observer/PPSProcess;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 376
    monitor-exit p0

    const/4 v3, 0x1

    return v3

    .line 372
    .end local v2  # "ppsProcess":Lcom/meizu/pps/observer/PPSProcess;
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 380
    .end local v0  # "length":I
    .end local v1  # "i":I
    :cond_29
    monitor-exit p0

    .line 381
    const/4 v0, 0x0

    return v0

    .line 380
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public isVisible(ILjava/lang/String;)Z
    .registers 7
    .param p1, "pid"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 353
    monitor-enter p0

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "visiable":Z
    :try_start_2
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    if-eqz v1, :cond_2c

    .line 357
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/pps/observer/PPSProcess;

    .line 358
    .local v1, "ppsProcess":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v1, :cond_2c

    .line 359
    invoke-virtual {v1}, Lcom/meizu/pps/observer/PPSProcess;->isVisible()Z

    move-result v2

    move v0, v2

    .line 360
    if-nez v0, :cond_2c

    const-string v2, "com.android.systemui:ui"

    iget-object v3, v1, Lcom/meizu/pps/observer/PPSProcess;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "system:ui"

    iget-object v3, v1, Lcom/meizu/pps/observer/PPSProcess;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 361
    :cond_2b
    const/4 v0, 0x1

    .line 365
    .end local v1  # "ppsProcess":Lcom/meizu/pps/observer/PPSProcess;
    :cond_2c
    monitor-exit p0

    return v0

    .line 366
    .end local v0  # "visiable":Z
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public killProcess(II)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "pid"  # I

    .line 272
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AmsExecutor;->killProcess(II)V

    .line 273
    return-void
.end method

.method public moveBackground(I)V
    .registers 2
    .param p1, "pid"  # I

    .line 126
    return-void
.end method

.method public moveForeground(I)V
    .registers 7
    .param p1, "pid"  # I

    .line 102
    monitor-enter p0

    .line 103
    :try_start_1
    iget v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mTopProcess:I

    if-eq p1, v0, :cond_3e

    .line 104
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    iget v1, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mTopProcess:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/pps/observer/PPSProcess;

    .line 105
    .local v0, "bgProc":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v0, :cond_22

    .line 106
    sget v1, Lcom/meizu/common/pps/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v0, v1}, Lcom/meizu/pps/observer/PPSProcess;->clearFlags(I)V

    .line 107
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v1

    iget v2, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mTopProcess:I

    const/4 v3, 0x0

    sget v4, Lcom/meizu/common/pps/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setFlags(III)V

    .line 113
    :cond_22
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/pps/observer/PPSProcess;

    .line 114
    .local v1, "fgProc":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v1, :cond_3c

    .line 115
    sget v2, Lcom/meizu/common/pps/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v1, v2}, Lcom/meizu/pps/observer/PPSProcess;->addFlags(I)V

    .line 116
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v2

    sget v3, Lcom/meizu/common/pps/Consts$ProcessFlags;->FOREGROUND:I

    sget v4, Lcom/meizu/common/pps/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setFlags(III)V

    .line 120
    :cond_3c
    iput p1, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mTopProcess:I

    .line 122
    .end local v0  # "bgProc":Lcom/meizu/pps/observer/PPSProcess;
    .end local v1  # "fgProc":Lcom/meizu/pps/observer/PPSProcess;
    :cond_3e
    monitor-exit p0

    .line 123
    return-void

    .line 122
    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public notifyPosted(II)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "id"  # I

    .line 179
    monitor-enter p0

    .line 180
    if-eqz p1, :cond_25

    :try_start_3
    sget v0, Lcom/android/server/am/AmsInjector;->MY_PID:I

    if-ne p1, v0, :cond_8

    goto :goto_25

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/pps/observer/PPSProcess;

    .line 182
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v0, :cond_23

    invoke-virtual {v0, p2}, Lcom/meizu/pps/observer/PPSProcess;->notifyPosted(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 183
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v1

    sget v2, Lcom/meizu/common/pps/Consts$ProcessFlags;->NOTIFICATION:I

    sget v3, Lcom/meizu/common/pps/Consts$ProcessFlags;->NOTIFICATION:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setFlags(III)V

    .line 188
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    :cond_23
    monitor-exit p0

    .line 189
    return-void

    .line 180
    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    .line 188
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public notifyRemoved(II)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "id"  # I

    .line 192
    monitor-enter p0

    .line 193
    if-eqz p1, :cond_24

    :try_start_3
    sget v0, Lcom/android/server/am/AmsInjector;->MY_PID:I

    if-ne p1, v0, :cond_8

    goto :goto_24

    .line 194
    :cond_8
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/pps/observer/PPSProcess;

    .line 195
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v0, :cond_22

    invoke-virtual {v0, p2}, Lcom/meizu/pps/observer/PPSProcess;->notifyRemoved(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 196
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/meizu/common/pps/Consts$ProcessFlags;->NOTIFICATION:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setFlags(III)V

    .line 201
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    :cond_22
    monitor-exit p0

    .line 202
    return-void

    .line 193
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 201
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public remove(ILjava/lang/String;)V
    .registers 4
    .param p1, "pid"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 96
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/pps/observer/PPSEventDispatcher;->remove(ILjava/lang/String;)V

    .line 98
    :cond_15
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public setAdjAndOom(IIILjava/lang/String;)V
    .registers 6
    .param p1, "pid"  # I
    .param p2, "adj"  # I
    .param p3, "oomPid"  # I
    .param p4, "oomString"  # Ljava/lang/String;

    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/pps/observer/PPSProcess;

    .line 207
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v0, :cond_11

    .line 208
    iput p3, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomPid:I

    .line 209
    iput p2, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurAdj:I

    .line 210
    iput-object p4, v0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomString:Ljava/lang/String;

    .line 212
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    :cond_11
    monitor-exit p0

    .line 213
    return-void

    .line 212
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public setPss(II)V
    .registers 6
    .param p1, "pid"  # I
    .param p2, "pss"  # I

    .line 129
    invoke-static {p1}, Lcom/android/server/am/AmsUtils;->getRss(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 130
    .local v0, "rss":I
    monitor-enter p0

    .line 131
    :try_start_6
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/pps/observer/PPSProcess;

    .line 132
    .local v1, "r":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v1, :cond_1a

    .line 133
    invoke-virtual {v1, p2, v0}, Lcom/meizu/pps/observer/PPSProcess;->setPss(II)V

    .line 134
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setPss(III)V

    .line 136
    .end local v1  # "r":Lcom/meizu/pps/observer/PPSProcess;
    :cond_1a
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public showWindow(II)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "winId"  # I

    .line 140
    monitor-enter p0

    .line 141
    if-nez p1, :cond_5

    :try_start_3
    monitor-exit p0

    return-void

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/pps/observer/PPSProcess;

    .line 143
    .local v0, "r":Lcom/meizu/pps/observer/PPSProcess;
    if-eqz v0, :cond_20

    invoke-virtual {v0, p2}, Lcom/meizu/pps/observer/PPSProcess;->showWindow(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 144
    invoke-static {}, Lcom/meizu/pps/observer/PPSEventDispatcher;->getInstance()Lcom/meizu/pps/observer/PPSEventDispatcher;

    move-result-object v1

    sget v2, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    sget v3, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/meizu/pps/observer/PPSEventDispatcher;->setFlags(III)V

    .line 149
    .end local v0  # "r":Lcom/meizu/pps/observer/PPSProcess;
    :cond_20
    monitor-exit p0

    .line 150
    return-void

    .line 149
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public stopPackage(Ljava/lang/String;II)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "clonedId"  # I

    .line 277
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AmsExecutor;->stopPackage(Ljava/lang/String;I)V

    .line 278
    return-void
.end method

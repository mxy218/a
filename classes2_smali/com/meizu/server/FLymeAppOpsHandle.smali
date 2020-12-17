.class Lcom/meizu/server/FLymeAppOpsHandle;
.super Ljava/lang/Object;
.source "FLymeAppOpsHandle.java"


# static fields
.field private static final ASK:I = 0x1

.field private static final ASK_NOT_INIT:I = -0x1

.field private static final NO_ASK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FLymeAppOpsHandle"


# instance fields
.field private final mAom:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mFastWriteScheduled:Z

.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Landroid/os/Handler;

.field private final mReqCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/meizu/server/FlymePermissionDialogReqQueue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteRunner:Ljava/lang/Runnable;

.field private final opGroups:[[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mReqCache:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$bbfxD03MoO-aOqVflu_UMjwNLNY;

    invoke-direct {v0, p0}, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$bbfxD03MoO-aOqVflu_UMjwNLNY;-><init>(Lcom/meizu/server/FLymeAppOpsHandle;)V

    iput-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mWriteRunner:Ljava/lang/Runnable;

    .line 372
    const/16 v0, 0xd

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_ba

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    new-array v4, v2, [I

    const/16 v5, 0x1a

    aput v5, v4, v3

    aput-object v4, v0, v2

    new-array v4, v2, [I

    const/4 v5, 0x4

    aput v5, v4, v3

    aput-object v4, v0, v1

    new-array v4, v2, [I

    const/16 v6, 0x3e

    aput v6, v4, v3

    const/4 v6, 0x3

    aput-object v4, v0, v6

    new-array v4, v2, [I

    const/4 v6, 0x5

    aput v6, v4, v3

    aput-object v4, v0, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_c2

    aput-object v4, v0, v6

    new-array v4, v2, [I

    const/16 v5, 0x1b

    aput v5, v4, v3

    const/4 v5, 0x6

    aput-object v4, v0, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_ca

    const/4 v7, 0x7

    aput-object v4, v0, v7

    new-array v4, v6, [I

    fill-array-data v4, :array_d2

    const/16 v7, 0x8

    aput-object v4, v0, v7

    new-array v4, v2, [I

    aput v5, v4, v3

    const/16 v5, 0x9

    aput-object v4, v0, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_e0

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-array v1, v2, [I

    const/16 v2, 0x14

    aput v2, v1, v3

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v6, [I

    fill-array-data v1, :array_e8

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->opGroups:[[I

    .line 63
    iput-object p1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "system/appops_ext.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFile:Landroid/util/AtomicFile;

    .line 65
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mAom:Landroid/app/AppOpsManager;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/meizu/server/FLymeAppOpsHandle;->readState()V

    .line 68
    return-void

    nop

    :array_ba
    .array-data 4
        0x8
        0x9
    .end array-data

    :array_c2
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_ca
    .array-data 4
        0x33
        0x41
    .end array-data

    :array_d2
    .array-data 4
        0xd
        0x34
        0x35
        0x45
        0x4a
    .end array-data

    :array_e0
    .array-data 4
        0x7
        0x36
    .end array-data

    :array_e8
    .array-data 4
        0xe
        0x10
        0x13
        0x12
        0x39
    .end array-data
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p0, "uid"  # I

    .line 215
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 216
    :catch_9
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getReqQueue(II)Lcom/meizu/server/FlymePermissionDialogReqQueue;
    .registers 6
    .param p1, "uid"  # I
    .param p2, "opGroup"  # I

    .line 276
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mReqCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 277
    .local v0, "uidState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/meizu/server/FlymePermissionDialogReqQueue;>;"
    if-nez v0, :cond_15

    .line 278
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 279
    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mReqCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/server/FlymePermissionDialogReqQueue;

    .line 282
    .local v1, "info":Lcom/meizu/server/FlymePermissionDialogReqQueue;
    if-nez v1, :cond_26

    .line 283
    new-instance v2, Lcom/meizu/server/FlymePermissionDialogReqQueue;

    invoke-direct {v2}, Lcom/meizu/server/FlymePermissionDialogReqQueue;-><init>()V

    move-object v1, v2

    .line 284
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    :cond_26
    return-object v1
.end method

.method private getUidStateLocked(IZ)Landroid/util/SparseIntArray;
    .registers 5
    .param p1, "uid"  # I
    .param p2, "edit"  # Z

    .line 222
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 223
    invoke-static {p1}, Landroid/os/UserHandle;->convertMultiOpenUid(I)I

    move-result p1

    .line 225
    :cond_e
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 226
    .local v0, "uidState":Landroid/util/SparseIntArray;
    if-nez v0, :cond_27

    .line 227
    if-nez p2, :cond_1c

    .line 228
    const/4 v1, 0x0

    return-object v1

    .line 230
    :cond_1c
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    move-object v0, v1

    .line 231
    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    :cond_27
    return-object v0
.end method

.method private isAsk(IILjava/lang/String;)Z
    .registers 8
    .param p1, "switchCode"  # I
    .param p2, "uid"  # I
    .param p3, "pkg"  # Ljava/lang/String;

    .line 362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 364
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mAom:Landroid/app/AppOpsManager;

    invoke-virtual {v2, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 365
    invoke-virtual {p0, p2, p1}, Lcom/meizu/server/FLymeAppOpsHandle;->queryOpAskState(II)I

    move-result v2
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_19

    if-ne v2, v3, :cond_14

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    .line 367
    :goto_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    return v3

    .line 367
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private queryOpGroup(I)[I
    .registers 10
    .param p1, "switchCode"  # I

    .line 407
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->opGroups:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 408
    .local v4, "group":[I
    array-length v5, v4

    move v6, v2

    :goto_b
    if-ge v6, v5, :cond_15

    aget v7, v4, v6

    .line 409
    .local v7, "i":I
    if-ne v7, p1, :cond_12

    .line 410
    return-object v4

    .line 408
    .end local v7  # "i":I
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 407
    .end local v4  # "group":[I
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 414
    :cond_18
    new-array v0, v2, [I

    return-object v0
.end method

.method private readState()V
    .registers 12

    .line 115
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 116
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_e9

    .line 119
    :try_start_4
    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_a} :catch_c2
    .catchall {:try_start_4 .. :try_end_a} :catchall_c0

    .line 123
    .local v1, "stream":Ljava/io/FileInputStream;
    nop

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "success":Z
    :try_start_c
    iget-object v3, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_c0

    .line 127
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 128
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 130
    :goto_1e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_2a

    if-eq v5, v6, :cond_2a

    goto :goto_1e

    .line 135
    :cond_2a
    if-ne v5, v7, :cond_80

    .line 139
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 140
    .local v4, "outerDepth":I
    :cond_30
    :goto_30
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    if-eq v7, v6, :cond_74

    const/4 v7, 0x3

    if-ne v5, v7, :cond_40

    .line 141
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_74

    .line 142
    :cond_40
    if-eq v5, v7, :cond_30

    const/4 v7, 0x4

    if-ne v5, v7, :cond_46

    .line 143
    goto :goto_30

    .line 146
    :cond_46
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "uid"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 148
    invoke-direct {p0, v3}, Lcom/meizu/server/FLymeAppOpsHandle;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_73

    .line 150
    :cond_56
    const-string v8, "FLymeAppOpsHandle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops-ext>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 150
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_73} :catch_8a
    .catchall {:try_start_11 .. :try_end_73} :catchall_88

    .line 154
    .end local v7  # "tagName":Ljava/lang/String;
    :goto_73
    goto :goto_30

    .line 155
    :cond_74
    const/4 v2, 0x1

    .line 159
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4  # "outerDepth":I
    .end local v5  # "type":I
    if-nez v2, :cond_7c

    .line 160
    :try_start_77
    iget-object v3, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_c0

    .line 163
    :cond_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_ad
    .catchall {:try_start_7c .. :try_end_7f} :catchall_c0

    goto :goto_ac

    .line 136
    .restart local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5  # "type":I
    :cond_80
    :try_start_80
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "no start tag found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1  # "stream":Ljava/io/FileInputStream;
    .end local v2  # "success":Z
    .end local p0  # "this":Lcom/meizu/server/FLymeAppOpsHandle;
    throw v4
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_88} :catch_8a
    .catchall {:try_start_80 .. :try_end_88} :catchall_88

    .line 159
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5  # "type":I
    .restart local v1  # "stream":Ljava/io/FileInputStream;
    .restart local v2  # "success":Z
    .restart local p0  # "this":Lcom/meizu/server/FLymeAppOpsHandle;
    :catchall_88
    move-exception v3

    goto :goto_b2

    .line 156
    :catch_8a
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8b
    const-string v4, "FLymeAppOpsHandle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_8b .. :try_end_a1} :catchall_88

    .line 159
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    if-nez v2, :cond_a9

    .line 160
    :try_start_a4
    iget-object v3, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_c0

    .line 163
    :cond_a9
    :try_start_a9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_c0

    .line 166
    :goto_ac
    goto :goto_af

    .line 164
    :catch_ad
    move-exception v3

    .line 167
    nop

    .line 168
    .end local v1  # "stream":Ljava/io/FileInputStream;
    .end local v2  # "success":Z
    :goto_af
    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_c0

    .line 169
    :try_start_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_e9

    .line 170
    return-void

    .line 159
    .restart local v1  # "stream":Ljava/io/FileInputStream;
    .restart local v2  # "success":Z
    :goto_b2
    if-nez v2, :cond_b9

    .line 160
    :try_start_b4
    iget-object v4, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_c0

    .line 163
    :cond_b9
    :try_start_b9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_c0

    .line 166
    goto :goto_be

    .line 164
    :catch_bd
    move-exception v4

    .line 166
    :goto_be
    nop

    .end local p0  # "this":Lcom/meizu/server/FLymeAppOpsHandle;
    :try_start_bf
    throw v3

    .line 168
    .end local v1  # "stream":Ljava/io/FileInputStream;
    .end local v2  # "success":Z
    .restart local p0  # "this":Lcom/meizu/server/FLymeAppOpsHandle;
    :catchall_c0
    move-exception v1

    goto :goto_e7

    .line 120
    :catch_c2
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "FLymeAppOpsHandle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing app ops "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; starting empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_bf .. :try_end_e5} :catchall_c0

    :try_start_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e9

    return-void

    .line 168
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    :goto_e7
    :try_start_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_c0

    .end local p0  # "this":Lcom/meizu/server/FLymeAppOpsHandle;
    :try_start_e8
    throw v1

    .line 169
    .restart local p0  # "this":Lcom/meizu/server/FLymeAppOpsHandle;
    :catchall_e9
    move-exception v1

    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_e9

    throw v1
.end method

.method private readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const-string v0, "n"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 175
    .local v2, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 177
    .local v3, "outerDepth":I
    :cond_f
    :goto_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_6a

    const/4 v4, 0x3

    if-ne v5, v4, :cond_20

    .line 178
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_6a

    .line 179
    :cond_20
    if-eq v5, v4, :cond_f

    const/4 v4, 0x4

    if-ne v5, v4, :cond_26

    .line 180
    goto :goto_f

    .line 183
    :cond_26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "tagName":Ljava/lang/String;
    const-string v7, "op"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 185
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 186
    .local v7, "code":I
    const-string v8, "m"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 187
    .local v8, "mode":I
    invoke-direct {p0, v2, v6}, Lcom/meizu/server/FLymeAppOpsHandle;->getUidStateLocked(IZ)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    .end local v7  # "code":I
    .end local v8  # "mode":I
    goto :goto_69

    .line 189
    :cond_4c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <uid-ops>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 189
    const-string v7, "FLymeAppOpsHandle"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 193
    .end local v4  # "tagName":Ljava/lang/String;
    :goto_69
    goto :goto_f

    .line 194
    :cond_6a
    return-void
.end method

.method private scheduleFastWriteLocked()V
    .registers 5

    .line 265
    iget-boolean v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFastWriteScheduled:Z

    if-nez v0, :cond_17

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFastWriteScheduled:Z

    .line 267
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    :cond_17
    return-void
.end method


# virtual methods
.method askOperationLocked(IILjava/lang/String;)Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;
    .registers 15
    .param p1, "switchCode"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 290
    invoke-direct {p0, p1}, Lcom/meizu/server/FLymeAppOpsHandle;->queryOpGroup(I)[I

    move-result-object v0

    .line 291
    .local v0, "ops":[I
    array-length v1, v0

    if-eqz v1, :cond_28

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/server/FLymeAppOpsHandle;->isAsk(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_28

    .line 295
    :cond_e
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 296
    .local v1, "opGroup":I
    new-instance v2, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {v2}, Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;-><init>()V

    move-object v8, v2

    .line 297
    .local v8, "request":Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;
    iget-object v9, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;

    move-object v2, v10

    move-object v3, p0

    move v4, p2

    move v5, v1

    move-object v6, v8

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/meizu/server/-$$Lambda$FLymeAppOpsHandle$pUuOByHIBorDBXHk9dVSCbjHttY;-><init>(Lcom/meizu/server/FLymeAppOpsHandle;IILcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-object v8

    .line 292
    .end local v1  # "opGroup":I
    .end local v8  # "request":Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;
    :cond_28
    :goto_28
    const/4 v1, 0x0

    return-object v1
.end method

.method checkOpAllow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "pkg"  # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mAom:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 419
    .local v0, "mode":I
    return v0
.end method

.method clearOperation(I)V
    .registers 9
    .param p1, "uid"  # I

    .line 336
    monitor-enter p0

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 338
    invoke-direct {p0}, Lcom/meizu/server/FLymeAppOpsHandle;->scheduleFastWriteLocked()V

    .line 339
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_4e

    .line 341
    const-class v0, Lcom/meizu/server/FLymeAppOpsHandle;

    monitor-enter v0

    .line 342
    :try_start_d
    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mReqCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 343
    .local v1, "uidState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/meizu/server/FlymePermissionDialogReqQueue;>;"
    if-nez v1, :cond_19

    .line 344
    monitor-exit v0

    return-void

    .line 347
    :cond_19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 348
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/server/FlymePermissionDialogReqQueue;

    .line 349
    .local v3, "reqQueue":Lcom/meizu/server/FlymePermissionDialogReqQueue;
    invoke-virtual {v3}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->getDialog()Lcom/meizu/server/FlymePermissionDialog;

    move-result-object v4

    .line 350
    .local v4, "dialog":Lcom/meizu/server/FlymePermissionDialog;
    if-eqz v4, :cond_41

    .line 351
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->notifyAll(I)V

    .line 352
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->setDialog(Lcom/meizu/server/FlymePermissionDialog;)V

    .line 353
    iget-object v5, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/meizu/server/-$$Lambda$WKcjHmJDCjQ2p-jHZy5rFBEiLa0;

    invoke-direct {v6, v4}, Lcom/meizu/server/-$$Lambda$WKcjHmJDCjQ2p-jHZy5rFBEiLa0;-><init>(Lcom/meizu/server/FlymePermissionDialog;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    .end local v3  # "reqQueue":Lcom/meizu/server/FlymePermissionDialogReqQueue;
    .end local v4  # "dialog":Lcom/meizu/server/FlymePermissionDialog;
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 357
    .end local v2  # "i":I
    :cond_44
    iget-object v2, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mReqCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 358
    .end local v1  # "uidState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/meizu/server/FlymePermissionDialogReqQueue;>;"
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_d .. :try_end_4d} :catchall_4b

    throw v1

    .line 339
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public synthetic lambda$askOperationLocked$1$FLymeAppOpsHandle(IILcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;Ljava/lang/String;)V
    .registers 15
    .param p1, "uid"  # I
    .param p2, "opGroup"  # I
    .param p3, "request"  # Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;
    .param p4, "packageName"  # Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "permDialog":Lcom/meizu/server/FlymePermissionDialog;
    const-class v1, Lcom/meizu/server/FLymeAppOpsHandle;

    monitor-enter v1

    .line 300
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/meizu/server/FLymeAppOpsHandle;->getReqQueue(II)Lcom/meizu/server/FlymePermissionDialogReqQueue;

    move-result-object v2

    .line 301
    .local v2, "reqQueue":Lcom/meizu/server/FlymePermissionDialogReqQueue;
    invoke-virtual {v2, p3}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->register(Lcom/meizu/server/FlymePermissionDialogReqQueue$PermissionDialogReq;)V

    .line 302
    invoke-virtual {v2}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->getDialog()Lcom/meizu/server/FlymePermissionDialog;

    move-result-object v3

    if-nez v3, :cond_21

    .line 303
    new-instance v3, Lcom/meizu/server/FlymePermissionDialog;

    iget-object v5, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mContext:Landroid/content/Context;

    move-object v4, v3

    move-object v6, p0

    move v7, p2

    move v8, p1

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/meizu/server/FlymePermissionDialog;-><init>(Landroid/content/Context;Lcom/meizu/server/FLymeAppOpsHandle;IILjava/lang/String;)V

    move-object v0, v3

    .line 305
    invoke-virtual {v2, v0}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->setDialog(Lcom/meizu/server/FlymePermissionDialog;)V

    .line 307
    .end local v2  # "reqQueue":Lcom/meizu/server/FlymePermissionDialogReqQueue;
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_28

    .line 308
    if-eqz v0, :cond_27

    .line 309
    invoke-virtual {v0}, Lcom/meizu/server/FlymePermissionDialog;->show()V

    .line 311
    :cond_27
    return-void

    .line 307
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public synthetic lambda$new$0$FLymeAppOpsHandle()V
    .registers 2

    .line 56
    monitor-enter p0

    .line 57
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFastWriteScheduled:Z

    .line 58
    new-instance v0, Lcom/meizu/server/-$$Lambda$I9ys2h0hnB20VoaJzNnO2QGt4_4;

    invoke-direct {v0, p0}, Lcom/meizu/server/-$$Lambda$I9ys2h0hnB20VoaJzNnO2QGt4_4;-><init>(Lcom/meizu/server/FLymeAppOpsHandle;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 59
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_e

    throw v0
.end method

.method notifyOperation(IIIZ)V
    .registers 11
    .param p1, "opGroup"  # I
    .param p2, "uid"  # I
    .param p3, "mode"  # I
    .param p4, "remember"  # Z

    .line 316
    invoke-direct {p0, p1}, Lcom/meizu/server/FLymeAppOpsHandle;->queryOpGroup(I)[I

    move-result-object v0

    .line 317
    .local v0, "ops":[I
    if-eqz p4, :cond_18

    .line 318
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_18

    aget v4, v0, v3

    .line 319
    .local v4, "op":I
    iget-object v5, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mAom:Landroid/app/AppOpsManager;

    invoke-virtual {v5, v4, p2, p3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 320
    invoke-virtual {p0, p2, v4, v2}, Lcom/meizu/server/FLymeAppOpsHandle;->setOpAskState(III)V

    .line 318
    .end local v4  # "op":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 324
    :cond_18
    const-class v1, Lcom/meizu/server/FLymeAppOpsHandle;

    monitor-enter v1

    .line 325
    :try_start_1b
    iget-object v2, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mReqCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_25

    monitor-exit v1

    return-void

    .line 327
    :cond_25
    invoke-direct {p0, p2, p1}, Lcom/meizu/server/FLymeAppOpsHandle;->getReqQueue(II)Lcom/meizu/server/FlymePermissionDialogReqQueue;

    move-result-object v2

    .line 328
    .local v2, "reqQueue":Lcom/meizu/server/FlymePermissionDialogReqQueue;
    invoke-virtual {v2}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->getDialog()Lcom/meizu/server/FlymePermissionDialog;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 329
    invoke-virtual {v2, p3}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->notifyAll(I)V

    .line 330
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/server/FlymePermissionDialogReqQueue;->setDialog(Lcom/meizu/server/FlymePermissionDialog;)V

    .line 332
    .end local v2  # "reqQueue":Lcom/meizu/server/FlymePermissionDialogReqQueue;
    :cond_36
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_38

    throw v2
.end method

.method queryOpAskState(II)I
    .registers 5
    .param p1, "uid"  # I
    .param p2, "switchCode"  # I

    .line 237
    monitor-enter p0

    .line 238
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/meizu/server/FLymeAppOpsHandle;->getUidStateLocked(IZ)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 239
    .local v0, "uidState":Landroid/util/SparseIntArray;
    const/4 v1, -0x1

    if-nez v0, :cond_b

    .line 240
    monitor-exit p0

    return v1

    .line 242
    :cond_b
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit p0

    return v1

    .line 243
    .end local v0  # "uidState":Landroid/util/SparseIntArray;
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_11

    throw v0
.end method

.method setOpAskState(III)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "switchCode"  # I
    .param p3, "state"  # I

    .line 247
    monitor-enter p0

    .line 248
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/meizu/server/FLymeAppOpsHandle;->getUidStateLocked(IZ)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 249
    .local v0, "uidState":Landroid/util/SparseIntArray;
    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, p3, :cond_f

    .line 250
    monitor-exit p0

    return-void

    .line 252
    :cond_f
    if-ne p3, v1, :cond_20

    .line 253
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 254
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-gtz v1, :cond_23

    .line 255
    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_23

    .line 258
    :cond_20
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/meizu/server/FLymeAppOpsHandle;->scheduleFastWriteLocked()V

    .line 261
    .end local v0  # "uidState":Landroid/util/SparseIntArray;
    monitor-exit p0

    .line 262
    return-void

    .line 261
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method systemReady()V
    .registers 5

    .line 197
    monitor-enter p0

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "changed":Z
    :try_start_2
    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_25

    .line 201
    iget-object v2, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/meizu/server/FLymeAppOpsHandle;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "packageNames":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 203
    iget-object v3, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 204
    const/4 v0, 0x1

    .line 199
    .end local v2  # "packageNames":[Ljava/lang/String;
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 207
    .end local v1  # "i":I
    :cond_25
    if-eqz v0, :cond_2a

    .line 208
    invoke-direct {p0}, Lcom/meizu/server/FLymeAppOpsHandle;->scheduleFastWriteLocked()V

    .line 210
    .end local v0  # "changed":Z
    :cond_2a
    monitor-exit p0

    .line 211
    return-void

    .line 210
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method writeState()V
    .registers 15

    .line 71
    iget-object v0, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_a2
    .catchall {:try_start_3 .. :try_end_9} :catchall_a0

    .line 78
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 81
    :try_start_a
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 82
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 83
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    const-string v3, "app-ops-ext"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    iget-object v3, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 87
    .local v3, "uidStateCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    if-ge v5, v3, :cond_83

    .line 88
    iget-object v6, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 89
    .local v6, "uid":I
    const-string v7, "uid"

    invoke-interface {v2, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    const-string v7, "n"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    iget-object v7, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseIntArray;

    .line 92
    .local v7, "uidState":Landroid/util/SparseIntArray;
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    .line 93
    .local v8, "opCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_50
    if-ge v9, v8, :cond_7a

    .line 94
    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 95
    .local v10, "op":I
    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    .line 96
    .local v11, "mode":I
    const-string v12, "op"

    invoke-interface {v2, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string v12, "n"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v4, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string v12, "m"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v4, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v12, "op"

    invoke-interface {v2, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    nop

    .end local v10  # "op":I
    .end local v11  # "mode":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    .line 101
    .end local v9  # "j":I
    :cond_7a
    const-string v9, "uid"

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    nop

    .end local v6  # "uid":I
    .end local v7  # "uidState":Landroid/util/SparseIntArray;
    .end local v8  # "opCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 104
    .end local v5  # "i":I
    :cond_83
    const-string v5, "app-ops-ext"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 106
    iget-object v4, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_90} :catch_91
    .catchall {:try_start_a .. :try_end_90} :catchall_a0

    .line 110
    .end local v2  # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3  # "uidStateCount":I
    goto :goto_9e

    .line 107
    :catch_91
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    :try_start_92
    const-string v3, "FLymeAppOpsHandle"

    const-string v4, "Failed to write state, restoring backup."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    iget-object v3, p0, Lcom/meizu/server/FLymeAppOpsHandle;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 111
    .end local v1  # "stream":Ljava/io/FileOutputStream;
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_9e
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_a0
    move-exception v1

    goto :goto_bb

    .line 75
    :catch_a2
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "FLymeAppOpsHandle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    monitor-exit v0

    return-void

    .line 111
    .end local v1  # "e":Ljava/io/IOException;
    :goto_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_92 .. :try_end_bc} :catchall_a0

    throw v1
.end method

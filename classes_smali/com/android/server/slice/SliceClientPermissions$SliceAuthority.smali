.class public Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
.super Ljava/lang/Object;
.source "SliceClientPermissions.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceClientPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceAuthority"
.end annotation


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "/"


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mPaths:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field private final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .registers 5

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 207
    iput-object p1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 208
    iput-object p2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 209
    iput-object p3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Ljava/lang/String;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .registers 1

    .line 199
    iget-object p0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object p0
.end method

.method private decodeSegments(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 316
    const-string v0, "/"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 317
    const/4 v0, 0x0

    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 318
    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 320
    :cond_16
    return-object p1
.end method

.method private encodeSegments([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 308
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 309
    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 310
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 312
    :cond_12
    const-string p1, "/"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    .line 265
    array-length v0, p1

    .line 266
    array-length v1, p2

    const/4 v2, 0x0

    if-ge v1, v0, :cond_6

    return v2

    .line 268
    :cond_6
    move v1, v2

    :goto_7
    if-ge v1, v0, :cond_17

    .line 269
    aget-object v3, p2, v1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 270
    return v2

    .line 268
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 274
    :cond_17
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$equals$0([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 333
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$equals$1([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 334
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$pathToString$2([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 353
    const-string v0, "/"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pathToString(Landroid/util/ArraySet;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 354
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 353
    const-string v0, ", "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method addPath(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_33

    .line 223
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 224
    invoke-direct {p0, v1, p1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 226
    return-void

    .line 228
    :cond_25
    invoke-direct {p0, p1, v1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 229
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 222
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 232
    :cond_33
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object p1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {p1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 234
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 329
    :cond_14
    check-cast p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 330
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eq v0, v2, :cond_25

    return v1

    .line 331
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 333
    sget-object v3, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$gfIfSC_15op1dWInvxEKC7DlOkg;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$gfIfSC_15op1dWInvxEKC7DlOkg;

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 334
    sget-object v3, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$czFcrdPWpaFU7_jx7xCl0wMHBps;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$czFcrdPWpaFU7_jx7xCl0wMHBps;

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 335
    move v3, v1

    :goto_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_72

    .line 336
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 337
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 338
    array-length v6, v4

    array-length v7, v5

    if-eq v6, v7, :cond_5d

    return v1

    .line 339
    :cond_5d
    move v6, v1

    :goto_5e
    array-length v7, v4

    if-ge v6, v7, :cond_6f

    .line 340
    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6c

    return v1

    .line 339
    :cond_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    .line 335
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 343
    :cond_72
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    iget-object p1, p1, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 344
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    const/4 v1, 0x1

    goto :goto_89

    :cond_88
    nop

    .line 343
    :goto_89
    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getPaths()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object v0
.end method

.method public hasPermission(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 257
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 258
    const/4 p1, 0x1

    return p1

    .line 260
    :cond_26
    goto :goto_6

    .line 261
    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized readFrom(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 296
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 297
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 298
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-lt v1, v0, :cond_33

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    const-string/jumbo v1, "path"

    .line 300
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 301
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->decodeSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_2f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_35

    goto :goto_8

    .line 305
    :cond_33
    monitor-exit p0

    return-void

    .line 295
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removePath(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    nop

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_16
    if-ltz v0, :cond_30

    .line 240
    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 241
    invoke-direct {p0, p1, v3}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 242
    nop

    .line 243
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move v2, v1

    .line 239
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 246
    :cond_30
    if-eqz v2, :cond_37

    .line 247
    iget-object p1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {p1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 249
    :cond_37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 349
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->pathToString(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "(%s, %s: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 284
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_32

    .line 285
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 286
    if-eqz v2, :cond_2f

    .line 287
    invoke-static {}, Lcom/android/server/slice/SliceClientPermissions;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "path"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    invoke-direct {p0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->encodeSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    invoke-static {}, Lcom/android/server/slice/SliceClientPermissions;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "path"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_34

    .line 284
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 292
    :cond_32
    monitor-exit p0

    return-void

    .line 282
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

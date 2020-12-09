.class final Lcom/android/server/uri/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriPermission$Snapshot;,
        Lcom/android/server/uri/UriPermission$PersistedTimeComparator;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field globalModeFlags:I

.field private mReadOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field modeFlags:I

.field ownedModeFlags:I

.field persistableModeFlags:I

.field persistedCreateTime:J

.field persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field private stringName:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I

.field final targetUserId:I

.field final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V
    .registers 7

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 67
    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 69
    iput v0, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 71
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 74
    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 80
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 90
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 91
    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 93
    iput p3, p0, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 94
    iput-object p4, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 95
    return-void
.end method

.method private addReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 257
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 258
    iget v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 259
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 261
    :cond_13
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 262
    invoke-virtual {p1, p0}, Lcom/android/server/uri/UriPermissionOwner;->addReadPermission(Lcom/android/server/uri/UriPermission;)V

    .line 264
    :cond_1e
    return-void
.end method

.method private addWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_13

    .line 282
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 283
    iget v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 284
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 286
    :cond_13
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 287
    invoke-virtual {p1, p0}, Lcom/android/server/uri/UriPermissionOwner;->addWritePermission(Lcom/android/server/uri/UriPermission;)V

    .line 289
    :cond_1e
    return-void
.end method

.method private updateModeFlags()V
    .registers 5

    .line 98
    iget v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 99
    iget v1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    iget v2, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 101
    const-string v1, "UriPermission"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_73

    iget v2, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eq v2, v0, :cond_73

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is changing from 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to 0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " via calling UID "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " PID "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 102
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_73
    return-void
.end method


# virtual methods
.method public buildGrantedUriPermission()Landroid/app/GrantedUriPermission;
    .registers 4

    .line 392
    new-instance v0, Landroid/app/GrantedUriPermission;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/GrantedUriPermission;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .registers 6

    .line 388
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iget-wide v3, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 320
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sourcePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " targetPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " owned=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " global=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persistable=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persisted=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-wide v0, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e9

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " persistedCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    :cond_e9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 336
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    const-string v1, "  * "

    if-eqz v0, :cond_123

    .line 337
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v0, "readOwners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_101
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermissionOwner;

    .line 340
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    goto :goto_101

    .line 344
    :cond_123
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v0, :cond_158

    .line 345
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v0, "writeOwners:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_136
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_158

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermissionOwner;

    .line 348
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    goto :goto_136

    .line 352
    :cond_158
    return-void
.end method

.method public getStrength(I)I
    .registers 4

    .line 242
    const/4 v0, 0x3

    and-int/2addr p1, v0

    .line 244
    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_8

    .line 245
    return v0

    .line 246
    :cond_8
    iget v0, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_f

    .line 247
    const/4 p1, 0x2

    return p1

    .line 248
    :cond_f
    iget v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_16

    .line 249
    const/4 p1, 0x1

    return p1

    .line 251
    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method grantModes(ILcom/android/server/uri/UriPermissionOwner;)V
    .registers 4

    .line 127
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 128
    :goto_7
    and-int/lit8 p1, p1, 0x3

    .line 131
    if-eqz v0, :cond_10

    .line 132
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 135
    :cond_10
    if-nez p2, :cond_18

    .line 136
    iget p2, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    goto :goto_26

    .line 138
    :cond_18
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1f

    .line 139
    invoke-direct {p0, p2}, Lcom/android/server/uri/UriPermission;->addReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 141
    :cond_1f
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_26

    .line 142
    invoke-direct {p0, p2}, Lcom/android/server/uri/UriPermission;->addWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 146
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 147
    return-void
.end method

.method initPersistedModes(IJ)V
    .registers 4

    .line 116
    and-int/lit8 p1, p1, 0x3

    .line 119
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 120
    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 121
    iput-wide p2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 123
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 124
    return-void
.end method

.method releasePersistableModes(I)Z
    .registers 5

    .line 175
    and-int/lit8 p1, p1, 0x3

    .line 178
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 180
    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    not-int p1, p1

    and-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 181
    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 183
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-nez p1, :cond_15

    .line 184
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 187
    :cond_15
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 188
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p1, v0, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown read owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UriPermission"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_26
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_3a

    .line 274
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 275
    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 276
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 278
    :cond_3a
    return-void
.end method

.method removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown write owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UriPermission"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_26
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_3a

    .line 299
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 300
    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 301
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 303
    :cond_3a
    return-void
.end method

.method revokeModes(IZ)Z
    .registers 10

    .line 195
    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 196
    :goto_9
    and-int/lit8 p1, p1, 0x3

    .line 199
    iget v3, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 201
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_46

    .line 202
    if-eqz v0, :cond_1e

    .line 203
    iget v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 204
    and-int/lit8 v4, v3, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 206
    :cond_1e
    iget v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 207
    iget-object v4, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v4, :cond_46

    if-eqz p2, :cond_46

    .line 208
    iget v6, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 209
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermissionOwner;

    .line 210
    invoke-virtual {v6, p0}, Lcom/android/server/uri/UriPermissionOwner;->removeReadPermission(Lcom/android/server/uri/UriPermission;)V

    .line 211
    goto :goto_34

    .line 212
    :cond_44
    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 215
    :cond_46
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_80

    .line 216
    if-eqz v0, :cond_58

    .line 217
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 218
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 220
    :cond_58
    iget p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 221
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz p1, :cond_80

    if-eqz p2, :cond_80

    .line 222
    iget p2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 223
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermissionOwner;

    .line 224
    invoke-virtual {p2, p0}, Lcom/android/server/uri/UriPermissionOwner;->removeWritePermission(Lcom/android/server/uri/UriPermission;)V

    .line 225
    goto :goto_6e

    .line 226
    :cond_7e
    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 230
    :cond_80
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-nez p1, :cond_88

    .line 231
    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 234
    :cond_88
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 235
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p1, v3, :cond_90

    move v1, v2

    :cond_90
    return v1
.end method

.method public snapshot()Lcom/android/server/uri/UriPermission$Snapshot;
    .registers 3

    .line 384
    new-instance v0, Lcom/android/server/uri/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriPermission$Snapshot;-><init>(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission$1;)V

    return-object v0
.end method

.method takePersistableModes(I)Z
    .registers 7

    .line 153
    and-int/lit8 p1, p1, 0x3

    .line 156
    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int v1, p1, v0

    const/4 v2, 0x0

    if-eq v1, p1, :cond_37

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested flags 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but only 0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are allowed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    const-string v0, "UriPermission"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v2

    .line 163
    :cond_37
    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 164
    and-int/2addr p1, v0

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 166
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz p1, :cond_47

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 170
    :cond_47
    invoke-direct {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 171
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p1, v1, :cond_4f

    const/4 v2, 0x1

    :cond_4f
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 308
    return-object v0

    .line 310
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 311
    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    return-object v0
.end method

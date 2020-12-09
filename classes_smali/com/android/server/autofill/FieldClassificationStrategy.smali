.class final Lcom/android/server/autofill/FieldClassificationStrategy;
.super Ljava/lang/Object;
.source "FieldClassificationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;,
        Lcom/android/server/autofill/FieldClassificationStrategy$Command;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FieldClassificationStrategy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mQueuedCommands:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/autofill/FieldClassificationStrategy$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 80
    iput p2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/lang/Object;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/FieldClassificationStrategy;)Landroid/service/autofill/IAutofillFieldClassificationService;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/IAutofillFieldClassificationService;)Landroid/service/autofill/IAutofillFieldClassificationService;
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/autofill/FieldClassificationStrategy;)Ljava/util/ArrayList;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/autofill/FieldClassificationStrategy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    return-object p1
.end method

.method private connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V
    .registers 9

    .line 136
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b6

    if-eqz v1, :cond_32

    .line 139
    :try_start_7
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_13

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "running command right away"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_13
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    invoke-interface {p1, v1}, Lcom/android/server/autofill/FieldClassificationStrategy$Command;->run(Landroid/service/autofill/IAutofillFieldClassificationService;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_19
    .catchall {:try_start_7 .. :try_end_18} :catchall_b6

    .line 143
    goto :goto_30

    .line 141
    :catch_19
    move-exception p1

    .line 142
    :try_start_1a
    const-string v1, "FieldClassificationStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception calling service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_30
    monitor-exit v0

    return-void

    .line 146
    :cond_32
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3e

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "service is null; queuing command"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3e
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_4a

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 150
    :cond_4a
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_55

    monitor-exit v0

    return-void

    .line 156
    :cond_55
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_60

    const-string p1, "FieldClassificationStrategy"

    const-string v1, "creating connection"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_60
    new-instance p1, Lcom/android/server/autofill/FieldClassificationStrategy$1;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/FieldClassificationStrategy$1;-><init>(Lcom/android/server/autofill/FieldClassificationStrategy;)V

    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 209
    invoke-direct {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 210
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_85

    const-string v1, "FieldClassificationStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_85
    if-eqz p1, :cond_b4

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_93
    .catchall {:try_start_1a .. :try_end_93} :catchall_b6

    .line 216
    :try_start_93
    iget-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    iget v6, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 217
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 216
    invoke-virtual {p1, v1, v5, v2, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 218
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_ab

    const-string p1, "FieldClassificationStrategy"

    const-string v1, "bound"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_93 .. :try_end_ab} :catchall_af

    .line 220
    :cond_ab
    :try_start_ab
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    goto :goto_b4

    .line 220
    :catchall_af
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 223
    :cond_b4
    :goto_b4
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_b6
    move-exception p1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_ab .. :try_end_b8} :catchall_b6

    throw p1
.end method

.method private getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 246
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 248
    :cond_8
    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 252
    :try_start_e
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_14} :catch_20

    .line 256
    nop

    .line 258
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 259
    invoke-interface {p2, v1, p1}, Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;->get(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 253
    :catch_20
    move-exception p1

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting application resources for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FieldClassificationStrategy"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    return-object v1
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .registers 6

    .line 105
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 108
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 110
    const-string v3, "android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "FieldClassificationStrategy"

    if-nez v0, :cond_39

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not require permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v1

    .line 116
    :cond_39
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceComponentName(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_51
    return-object v2
.end method

.method static synthetic lambda$calculateScores$2(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/service/autofill/IAutofillFieldClassificationService;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    move-object/from16 v0, p8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/service/autofill/IAutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$getAvailableAlgorithms$0(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .registers 2

    .line 232
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getDefaultAlgorithm$1(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 2

    .line 240
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 267
    new-instance v9, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$cXTbqmCb6-V5mVc5dTOipqK5X_E;-><init>(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    move-object v0, p0

    invoke-direct {p0, v9}, Lcom/android/server/autofill/FieldClassificationStrategy;->connectAndRun(Lcom/android/server/autofill/FieldClassificationStrategy$Command;)V

    .line 269
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 272
    invoke-direct {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 273
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User ID: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 274
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Queued commands: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    const-string v2, "N/A"

    if-nez v1, :cond_23

    .line 276
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    .line 278
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 280
    :goto_2a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Implementation: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    if-nez v0, :cond_38

    .line 282
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    return-void

    .line 285
    :cond_38
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    :try_start_3f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Available algorithms: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getAvailableAlgorithms()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Default algorithm: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_61} :catch_62

    .line 293
    goto :goto_6b

    .line 291
    :catch_62
    move-exception p1

    .line 292
    const-string v0, "ERROR CALLING SERVICE: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 294
    :goto_6b
    return-void
.end method

.method getAvailableAlgorithms()[Ljava/lang/String;
    .registers 3

    .line 231
    sget-object v0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$NQQgQ63vxhPkiwOWrnwRyuYSHTM;

    const-string v1, "android.autofill.field_classification.available_algorithms"

    invoke-direct {p0, v1, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getDefaultAlgorithm()Ljava/lang/String;
    .registers 3

    .line 240
    sget-object v0, Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$FieldClassificationStrategy$vGIL1YGX_9ksoSV74T7gO4fkEBE;

    const-string v1, "android.autofill.field_classification.default_algorithm"

    invoke-direct {p0, v1, v0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getMetadataValue(Ljava/lang/String;Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    const/4 v1, 0x0

    const-string v2, "FieldClassificationStrategy"

    if-nez v0, :cond_16

    .line 88
    const-string/jumbo v0, "no external services package!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v1

    .line 92
    :cond_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.autofill.AutofillFieldClassificationService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x84

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_36

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_33

    goto :goto_36

    .line 100
    :cond_33
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 97
    :cond_36
    :goto_36
    const-string v0, "No valid components found."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v1
.end method

.method reset()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1e

    .line 123
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_13

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "reset(): unbinding service."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_13
    iget-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_2a

    .line 127
    :cond_1e
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2a

    const-string v1, "FieldClassificationStrategy"

    const-string/jumbo v2, "reset(): service is not bound. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2a
    :goto_2a
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

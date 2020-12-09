.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final DELIVERY_DELIVERED:I = 0x1

.field static final DELIVERY_PENDING:I = 0x0

.field static final DELIVERY_SKIPPED:I = 0x2

.field static final DELIVERY_TIMEOUT:I = 0x3

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4

.field static sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final allowBackgroundActivityStarts:Z

.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerInstantApp:Z

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field deferred:Z

.field final delivery:[I

.field dispatchClockTime:J

.field dispatchTime:J

.field final duration:[J

.field enqueueClockTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field manifestCount:I

.field manifestSkipCount:I

.field nextReceiver:I

.field final options:Landroid/app/BroadcastOptions;

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final requiredPermissions:[Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field splitCount:I

.field splitToken:I

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field timeoutExempt:Z

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->sNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZZ)V
    .registers 27

    .line 240
    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p12

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 241
    if-eqz v1, :cond_72

    .line 244
    move-object v3, p1

    iput-object v3, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 245
    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 247
    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 248
    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 249
    move v1, p5

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 250
    move v1, p6

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 251
    move v1, p7

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 252
    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 253
    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 254
    move v1, p10

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 255
    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 256
    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 257
    const/4 v1, 0x0

    if-eqz v2, :cond_39

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_3a

    :cond_39
    move v2, v1

    :goto_3a
    new-array v2, v2, [I

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 258
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    .line 259
    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 260
    move/from16 v2, p14

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 261
    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 262
    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 263
    move/from16 v2, p17

    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 264
    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 265
    move/from16 v2, p19

    iput-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 266
    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 267
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 268
    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 269
    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    .line 270
    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 271
    return-void

    .line 242
    :cond_72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t construct with a null intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .registers 5

    .line 277
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 281
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 282
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 283
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 284
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 285
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    .line 286
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 287
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 288
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 289
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 290
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 291
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 292
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 293
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 294
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 295
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 296
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->duration:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    .line 297
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 298
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 299
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 300
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 301
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 302
    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 303
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 304
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 305
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 306
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 307
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 308
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 309
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 310
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 311
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestCount:I

    .line 312
    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->manifestSkipCount:I

    .line 313
    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 314
    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    .line 315
    iget-boolean p1, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    .line 316
    return-void
.end method


# virtual methods
.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 375
    return v1

    .line 378
    :cond_6
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p3, v0, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    .line 379
    :goto_d
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v4, v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    .line 380
    :goto_14
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-eq v4, p3, :cond_1d

    if-nez v3, :cond_1d

    if-nez v0, :cond_1d

    .line 381
    return v1

    .line 384
    :cond_1d
    nop

    .line 386
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v4, v1

    :goto_26
    if-ltz v0, :cond_74

    .line 387
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 388
    instance-of v6, v5, Landroid/content/pm/ResolveInfo;

    if-nez v6, :cond_33

    .line 389
    goto :goto_71

    .line 391
    :cond_33
    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 393
    if-eqz p1, :cond_50

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 394
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    if-eqz p2, :cond_50

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 395
    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    goto :goto_50

    :cond_4e
    move v6, v1

    goto :goto_51

    :cond_50
    :goto_50
    move v6, v2

    .line 396
    :goto_51
    if-eqz v6, :cond_71

    if-nez v3, :cond_5f

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 397
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p3, :cond_71

    .line 398
    :cond_5f
    if-nez p4, :cond_62

    .line 399
    return v2

    .line 401
    :cond_62
    nop

    .line 402
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 403
    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v4, :cond_70

    .line 404
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 386
    :cond_70
    move v4, v2

    :cond_71
    :goto_71
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 408
    :cond_74
    iget p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 410
    return v4
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .registers 15

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 121
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " to user "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v2, :cond_3d

    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eq v2, v3, :cond_3d

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  targetComp: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    :cond_3d
    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_54

    .line 128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  extras: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    :cond_54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "caller="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_6f

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v3

    goto :goto_72

    :cond_6f
    const-string/jumbo v3, "null"

    :goto_72
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    const-string v3, " pid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 133
    const-string v3, " uid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 134
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v3, :cond_91

    array-length v3, v3

    if-gtz v3, :cond_95

    :cond_91
    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v3, v4, :cond_b1

    .line 136
    :cond_95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "requiredPermissions="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    const-string v3, "  appOp="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 140
    :cond_b1
    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v3, :cond_c7

    .line 141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "options="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 143
    :cond_c7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enqueueClockTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    new-instance v3, Ljava/util/Date;

    iget-wide v5, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    const-string v3, " dispatchClockTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljava/util/Date;

    iget-wide v5, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "dispatchTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-wide v5, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 149
    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-wide v5, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-wide v7, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 151
    const-string v3, " since enq)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    iget-wide v5, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_132

    .line 153
    const-string v3, " finishTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 154
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v5, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v0, v5

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 156
    const-string p3, " since disp)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13c

    .line 158
    :cond_132
    const-string p3, " receiverTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    invoke-static {v5, v6, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 160
    :goto_13c
    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz p3, :cond_152

    .line 162
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "anrCount="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 164
    :cond_152
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez p3, :cond_15e

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne p3, v4, :cond_15e

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz p3, :cond_180

    .line 165
    :cond_15e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultTo="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 166
    const-string p3, " resultCode="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 167
    const-string p3, " resultData="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    :cond_180
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz p3, :cond_192

    .line 170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultExtras="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 172
    :cond_192
    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez p3, :cond_1a2

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p3, :cond_1a2

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez p3, :cond_1a2

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p3, :cond_1ce

    .line 173
    :cond_1a2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "resultAbort="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 174
    const-string p3, " ordered="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 175
    const-string p3, " sticky="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 176
    const-string p3, " initialSticky="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 178
    :cond_1ce
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez p3, :cond_1d6

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz p3, :cond_1ee

    .line 179
    :cond_1d6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "nextReceiver="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 180
    const-string p3, " receiver="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 182
    :cond_1ee
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz p3, :cond_1ff

    .line 183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curFilter="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 185
    :cond_1ff
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_210

    .line 186
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curReceiver="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 188
    :cond_210
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz p3, :cond_250

    .line 189
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curApp="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curComponent="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz p3, :cond_232

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    goto :goto_234

    :cond_232
    const-string p3, "--"

    :goto_234
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_250

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_250

    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "curSourceDir="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    :cond_250
    iget p3, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_280

    .line 198
    nop

    .line 199
    if-eq p3, v3, :cond_26d

    if-eq p3, v1, :cond_26a

    if-eq p3, v0, :cond_267

    const/4 v4, 0x4

    if-eq p3, v4, :cond_264

    const-string p3, " (?)"

    goto :goto_26f

    .line 203
    :cond_264
    const-string p3, " (WAITING_SERVICES)"

    goto :goto_26f

    .line 202
    :cond_267
    const-string p3, " (CALL_DONE_RECEIVE)"

    goto :goto_26f

    .line 201
    :cond_26a
    const-string p3, " (CALL_IN_RECEIVE)"

    goto :goto_26f

    .line 200
    :cond_26d
    const-string p3, " (APP_RECEIVE)"

    .line 205
    :goto_26f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "state="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    :cond_280
    iget-object p3, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz p3, :cond_28a

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_28b

    :cond_28a
    move p3, v4

    .line 208
    :goto_28b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 210
    move v7, v4

    :goto_2a2
    if-ge v7, p3, :cond_30f

    .line 211
    iget-object v8, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 212
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v9, v9, v7

    if-eqz v9, :cond_2d1

    if-eq v9, v3, :cond_2cb

    if-eq v9, v1, :cond_2c5

    if-eq v9, v0, :cond_2bf

    .line 218
    const-string v9, "???????"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2d6

    .line 217
    :cond_2bf
    const-string v9, "Timeout"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2d6

    .line 216
    :cond_2c5
    const-string v9, "Skipped"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2d6

    .line 215
    :cond_2cb
    const-string v9, "Deliver"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2d6

    .line 214
    :cond_2d1
    const-string v9, "Pending"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    :goto_2d6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/am/BroadcastRecord;->duration:[J

    aget-wide v9, v9, v7

    invoke-static {v9, v10, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 221
    const-string v9, " #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    instance-of v9, v8, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_2fa

    .line 223
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 224
    check-cast v8, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v8, p1, v5}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_30c

    .line 225
    :cond_2fa
    instance-of v9, v8, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_309

    .line 226
    const-string v9, "(manifest)"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8, v6, v5, v4}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_30c

    .line 229
    :cond_309
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 210
    :goto_30c
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a2

    .line 232
    :cond_30f
    return-void
.end method

.method getReceiverUid(Ljava/lang/Object;)I
    .registers 3

    .line 357
    instance-of v0, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_9

    .line 358
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    iget p1, p1, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return p1

    .line 360
    :cond_9
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    return p1
.end method

.method public maybeStripForHistory()Lcom/android/server/am/BroadcastRecord;
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_9

    .line 366
    return-object p0

    .line 368
    :cond_9
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V

    return-object v0
.end method

.method splitRecipientsLocked(II)Lcom/android/server/am/BroadcastRecord;
    .registers 29

    .line 326
    move-object/from16 v0, p0

    .line 327
    const/4 v1, 0x0

    move/from16 v2, p2

    move-object v15, v1

    :goto_6
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 328
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 329
    invoke-virtual {v0, v3}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v4

    move/from16 v5, p1

    if-ne v4, v5, :cond_2c

    .line 330
    if-nez v15, :cond_23

    .line 331
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 333
    :cond_23
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2e

    .line 336
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    .line 338
    :goto_2e
    goto :goto_6

    .line 341
    :cond_2f
    if-nez v15, :cond_32

    .line 342
    return-object v1

    .line 346
    :cond_32
    new-instance v1, Lcom/android/server/am/BroadcastRecord;

    move-object v3, v1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v10, v0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget v13, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v16, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v19, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v20, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v21, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v22, v2

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v23, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v24, v2

    iget-boolean v2, v0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v25, v2

    invoke-direct/range {v3 .. v25}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZZ)V

    .line 352
    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    iput v0, v1, Lcom/android/server/am/BroadcastRecord;->splitToken:I

    .line 353
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 417
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 421
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 422
    iget v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 423
    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 424
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 425
    return-void
.end method

.class Lcom/android/server/appop/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# static fields
.field static final sBinder:Landroid/os/Binder;


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/appop/AppOpsService;

.field mToken:Landroid/os/IBinder;

.field mode:I

.field modeStr:Ljava/lang/String;

.field nonpackageUid:I

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field targetsUid:Z

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3261
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/appop/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V
    .registers 4

    .line 3265
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 3253
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3266
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 3267
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 3269
    :try_start_a
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    sget-object p2, Lcom/android/server/appop/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    invoke-interface {p1, p2}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 3271
    goto :goto_16

    .line 3270
    :catch_15
    move-exception p1

    .line 3272
    :goto_16
    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 2

    .line 3249
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 4

    .line 3303
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_15

    .line 3304
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3305
    return v0

    .line 3303
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 3309
    :cond_15
    :try_start_15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1a

    return p0

    .line 3310
    :catch_1a
    move-exception v0

    .line 3312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not valid"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3313
    const/4 p0, -0x1

    return p0
.end method

.method private static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 4

    .line 3287
    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 3288
    :catch_5
    move-exception v0

    .line 3291
    :try_start_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    .line 3292
    :catch_b
    move-exception v0

    .line 3295
    :try_start_c
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result p0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_10} :catch_11

    return p0

    .line 3296
    :catch_11
    move-exception p0

    .line 3297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3298
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 2

    .line 3276
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onHelp()V
    .registers 2

    .line 3281
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3282
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 3283
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3317
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3319
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 3320
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3321
    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3322
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_8

    .line 3324
    :cond_21
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 3325
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_8

    .line 3326
    :cond_28
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 3327
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 3332
    :cond_2e
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_39

    .line 3333
    const-string p1, "Error: Operation not specified."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3334
    return v1

    .line 3336
    :cond_39
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3337
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez v0, :cond_44

    .line 3338
    return v1

    .line 3340
    :cond_44
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_51

    .line 3341
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-gez p1, :cond_53

    .line 3342
    return v1

    .line 3345
    :cond_51
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 3347
    :cond_53
    const/4 p1, 0x0

    return p1
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3351
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3353
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3354
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    .line 3355
    const-string v4, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3356
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_8

    .line 3357
    :cond_22
    const-string v4, "--uid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3358
    iput-boolean v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    goto :goto_8

    .line 3360
    :cond_2d
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v4, :cond_34

    .line 3361
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_8

    .line 3362
    :cond_34
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 3363
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3368
    :cond_3a
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v4, -0x1

    if-nez v2, :cond_45

    .line 3369
    const-string p1, "Error: Package name not specified."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3370
    return v4

    .line 3371
    :cond_45
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_51

    if-eqz p1, :cond_51

    .line 3372
    const-string p1, "Error: Operation not specified."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3373
    return v4

    .line 3375
    :cond_51
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz p1, :cond_60

    .line 3376
    invoke-static {p1, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3377
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez p1, :cond_62

    .line 3378
    return v4

    .line 3381
    :cond_60
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3383
    :cond_62
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    if-ne p1, v0, :cond_6c

    .line 3384
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3386
    :cond_6c
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 3388
    :try_start_6e
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_76} :catch_77

    .line 3390
    goto :goto_78

    .line 3389
    :catch_77
    move-exception p1

    .line 3391
    :goto_78
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    const/4 v0, 0x0

    if-ne p1, v4, :cond_117

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_117

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x75

    if-ne p1, v2, :cond_117

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v2, 0x2e

    .line 3392
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_117

    .line 3393
    move p1, v3

    .line 3394
    :goto_9a
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ge p1, v2, :cond_b9

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_b9

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3395
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v5, :cond_b9

    .line 3396
    add-int/lit8 p1, p1, 0x1

    goto :goto_9a

    .line 3398
    :cond_b9
    if-le p1, v3, :cond_117

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_117

    .line 3399
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3401
    :try_start_c9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3402
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 3403
    add-int/2addr p1, v3

    .line 3404
    move v3, p1

    .line 3405
    :goto_d5
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_f0

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_f0

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3406
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v5, :cond_f0

    .line 3407
    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 3409
    :cond_f0
    if-le v3, p1, :cond_115

    .line 3410
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_c9 .. :try_end_f8} :catch_116

    .line 3412
    :try_start_f8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3413
    const/16 v3, 0x61

    if-ne v7, v3, :cond_109

    .line 3414
    add-int/lit16 p1, p1, 0x2710

    invoke-static {v2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_113

    .line 3416
    :cond_109
    const/16 v3, 0x73

    if-ne v7, v3, :cond_113

    .line 3417
    invoke-static {v2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_113
    .catch Ljava/lang/NumberFormatException; {:try_start_f8 .. :try_end_113} :catch_114

    .line 3420
    :cond_113
    :goto_113
    goto :goto_115

    .line 3419
    :catch_114
    move-exception p1

    .line 3423
    :cond_115
    :goto_115
    goto :goto_117

    .line 3422
    :catch_116
    move-exception p1

    .line 3426
    :cond_117
    :goto_117
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    if-eq p1, v4, :cond_11e

    .line 3427
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_15f

    .line 3429
    :cond_11e
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/appop/AppOpsService;->access$1100(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3430
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez p1, :cond_13a

    .line 3431
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v2, 0x2000

    iget v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-interface {p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3434
    :cond_13a
    iget p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez p1, :cond_15f

    .line 3435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: No UID for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    return v4

    .line 3439
    :cond_15f
    :goto_15f
    return v0
.end method

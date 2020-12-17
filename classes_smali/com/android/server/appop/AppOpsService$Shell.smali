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

    .line 3233
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/appop/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V
    .registers 5
    .param p1, "iface"  # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"  # Lcom/android/server/appop/AppOpsService;

    .line 3237
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 3225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3238
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 3239
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 3241
    :try_start_a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    sget-object v1, Lcom/android/server/appop/AppOpsService$Shell;->sBinder:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    .line 3243
    goto :goto_16

    .line 3242
    :catch_15
    move-exception v0

    .line 3244
    :goto_16
    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 3
    .param p0, "x0"  # Ljava/lang/String;
    .param p1, "x1"  # Ljava/io/PrintWriter;

    .line 3221
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    return v0
.end method

.method static strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 4
    .param p0, "modeStr"  # Ljava/lang/String;
    .param p1, "err"  # Ljava/io/PrintWriter;

    .line 3275
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_15

    .line 3276
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3277
    return v0

    .line 3275
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 3281
    .end local v0  # "i":I
    :cond_15
    :try_start_15
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_19} :catch_1a

    return v0

    .line 3282
    :catch_1a
    move-exception v0

    .line 3284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3285
    const/4 v0, -0x1

    return v0
.end method

.method private static strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 5
    .param p0, "op"  # Ljava/lang/String;
    .param p1, "err"  # Ljava/io/PrintWriter;

    .line 3259
    :try_start_0
    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 3260
    :catch_5
    move-exception v0

    .line 3263
    :try_start_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 3264
    :catch_b
    move-exception v0

    .line 3267
    :try_start_c
    invoke-static {p0}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_10} :catch_11

    return v0

    .line 3268
    :catch_11
    move-exception v0

    .line 3269
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3270
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"  # Ljava/lang/String;

    .line 3248
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->onShellCommand(Lcom/android/server/appop/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 2

    .line 3253
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3254
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 3255
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .registers 5
    .param p1, "defMode"  # I
    .param p2, "err"  # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3289
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3291
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 3292
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "argument":Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 3293
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3294
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_8

    .line 3296
    :cond_22
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v0, :cond_29

    .line 3297
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_8

    .line 3298
    :cond_29
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 3299
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 3304
    .end local v1  # "argument":Ljava/lang/String;
    :cond_2f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_3a

    .line 3305
    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3306
    return v1

    .line 3308
    :cond_3a
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3309
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez v0, :cond_45

    .line 3310
    return v1

    .line 3312
    :cond_45
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 3313
    invoke-static {v0, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-gez v0, :cond_54

    .line 3314
    return v1

    .line 3317
    :cond_52
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 3319
    :cond_54
    const/4 v0, 0x0

    return v0
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .registers 14
    .param p1, "reqOp"  # Z
    .param p2, "err"  # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3323
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3325
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3326
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "argument":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_3b

    .line 3327
    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3328
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_8

    .line 3329
    :cond_23
    const-string v2, "--uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3330
    iput-boolean v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    goto :goto_8

    .line 3332
    :cond_2e
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v2, :cond_35

    .line 3333
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_8

    .line 3334
    :cond_35
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 3335
    iput-object v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 3340
    .end local v3  # "argument":Ljava/lang/String;
    :cond_3b
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v3, -0x1

    if-nez v2, :cond_46

    .line 3341
    const-string v0, "Error: Package name not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3342
    return v3

    .line 3343
    :cond_46
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_52

    if-eqz p1, :cond_52

    .line 3344
    const-string v0, "Error: Operation not specified."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3345
    return v3

    .line 3347
    :cond_52
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v2, :cond_61

    .line 3348
    invoke-static {v2, p2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3349
    iget v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez v2, :cond_63

    .line 3350
    return v3

    .line 3353
    :cond_61
    iput v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 3355
    :cond_63
    iget v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    if-ne v2, v0, :cond_6d

    .line 3356
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3358
    :cond_6d
    iput v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 3360
    :try_start_6f
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_77} :catch_78

    .line 3362
    goto :goto_79

    .line 3361
    :catch_78
    move-exception v0

    .line 3363
    :goto_79
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    const/4 v2, 0x0

    if-ne v0, v3, :cond_119

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_119

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x75

    if-ne v0, v5, :cond_119

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v5, 0x2e

    .line 3364
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_119

    .line 3365
    const/4 v0, 0x1

    .line 3366
    .local v0, "i":I
    :goto_9b
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-ge v0, v5, :cond_ba

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_ba

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3367
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v6, :cond_ba

    .line 3368
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 3370
    :cond_ba
    if-le v0, v4, :cond_119

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_119

    .line 3371
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3373
    .local v4, "userStr":Ljava/lang/String;
    :try_start_ca
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3374
    .local v5, "user":I
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 3375
    .local v8, "type":C
    add-int/lit8 v0, v0, 0x1

    .line 3376
    move v9, v0

    .line 3377
    .local v9, "startTypeVal":I
    :goto_d7
    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_f2

    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_f2

    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 3378
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v6, :cond_f2

    .line 3379
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    .line 3381
    :cond_f2
    if-le v0, v9, :cond_117

    .line 3382
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_fa
    .catch Ljava/lang/NumberFormatException; {:try_start_ca .. :try_end_fa} :catch_118

    .line 3384
    .local v6, "typeValStr":Ljava/lang/String;
    :try_start_fa
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3385
    .local v7, "typeVal":I
    const/16 v10, 0x61

    if-ne v8, v10, :cond_10b

    .line 3386
    add-int/lit16 v10, v7, 0x2710

    invoke-static {v5, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_115

    .line 3388
    :cond_10b
    const/16 v10, 0x73

    if-ne v8, v10, :cond_115

    .line 3389
    invoke-static {v5, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iput v10, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_115
    .catch Ljava/lang/NumberFormatException; {:try_start_fa .. :try_end_115} :catch_116

    .line 3392
    .end local v7  # "typeVal":I
    :cond_115
    :goto_115
    goto :goto_117

    .line 3391
    :catch_116
    move-exception v7

    .line 3395
    .end local v5  # "user":I
    .end local v6  # "typeValStr":Ljava/lang/String;
    .end local v8  # "type":C
    .end local v9  # "startTypeVal":I
    :cond_117
    :goto_117
    goto :goto_119

    .line 3394
    :catch_118
    move-exception v5

    .line 3398
    .end local v0  # "i":I
    .end local v4  # "userStr":Ljava/lang/String;
    :cond_119
    :goto_119
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    if-eq v0, v3, :cond_120

    .line 3399
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_161

    .line 3401
    :cond_120
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->access$1000(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3402
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_13c

    .line 3403
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    iget v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-interface {v0, v1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 3406
    :cond_13c
    iget v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez v0, :cond_161

    .line 3407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: No UID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3408
    return v3

    .line 3411
    :cond_161
    :goto_161
    return v2
.end method

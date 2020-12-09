.class final Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;
.super Lcom/android/server/biometrics/EnumerateClient;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalEnumerateClient"
.end annotation


# instance fields
.field private mEnrolledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownHALTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/android/server/biometrics/BiometricUtils;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/BiometricUtils;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;",
            "J",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;",
            "Lcom/android/server/biometrics/BiometricUtils;",
            ")V"
        }
    .end annotation

    .line 334
    move-object v12, p0

    move-object v0, p1

    iput-object v0, v12, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 335
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v2

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/EnumerateClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;)V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    .line 337
    move-object/from16 v0, p12

    iput-object v0, v12, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 338
    move-object/from16 v0, p13

    iput-object v0, v12, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/BiometricUtils;

    .line 339
    return-void
.end method

.method private doTemplateCleanup()V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 364
    return-void

    .line 369
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 370
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 371
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTemplateCleanup(): Removing dangling template from framework: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 375
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getTargetUserId()I

    move-result v4

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    .line 374
    invoke-interface {v2, v3, v4, v1}, Lcom/android/server/biometrics/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 376
    const/16 v1, 0x94

    .line 377
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->statsModality()I

    move-result v2

    const/4 v3, 0x2

    .line 376
    invoke-static {v1, v2, v3}, Landroid/util/StatsLog;->write(III)I

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 380
    :cond_5e
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    return-void
.end method

.method private handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 6

    .line 342
    if-nez p1, :cond_3

    .line 343
    return-void

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnumeratedTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    nop

    .line 347
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 348
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    if-ne v2, v3, :cond_46

    .line 349
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 350
    nop

    .line 351
    const/4 v0, 0x1

    goto :goto_49

    .line 347
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 356
    :cond_49
    :goto_49
    if-nez v0, :cond_56

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-eqz v1, :cond_56

    .line 357
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_56
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Matched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method


# virtual methods
.method public getUnknownHALTemplates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    return-object v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z
    .registers 3

    .line 390
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 391
    if-nez p2, :cond_8

    .line 392
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->doTemplateCleanup()V

    .line 394
    :cond_8
    if-nez p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method protected statsModality()I
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v0

    return v0
.end method

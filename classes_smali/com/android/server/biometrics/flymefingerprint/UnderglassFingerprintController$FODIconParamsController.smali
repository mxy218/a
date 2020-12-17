.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FODIconParamsController"
.end annotation


# instance fields
.field private mAlpha:F

.field private mColors:[I

.field private final mFingerAreaParams:Landroid/view/WindowManager$LayoutParams;

.field private mFingerprintIconView:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

.field private mIconDefaultX:I

.field private mIconDefaultY:I

.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;IIII)V
    .registers 8
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "width"  # I
    .param p5, "height"  # I

    .line 477
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerAreaParams:Landroid/view/WindowManager$LayoutParams;

    .line 478
    iput p2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mIconDefaultX:I

    .line 479
    iput p3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mIconDefaultY:I

    .line 480
    iget-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerAreaParams:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "FPIcon"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 481
    iget-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerAreaParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x804

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 482
    const/16 v0, 0x108

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 484
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 485
    iget-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerAreaParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 486
    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 487
    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 488
    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 489
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 490
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 491
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 492
    iget-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerAreaParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 493
    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Landroid/content/Context;)V
    .registers 11
    .param p2, "context"  # Landroid/content/Context;

    .line 469
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 470
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 471
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 472
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xa0703b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 469
    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;IIII)V

    .line 473
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 474
    .local p1, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0xa0d0004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerprintIconView:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    .line 475
    return-void
.end method


# virtual methods
.method public animateImageAlpha(FI)V
    .registers 7
    .param p1, "alpha"  # F
    .param p2, "duration"  # I

    .line 531
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 532
    :try_start_7
    iput p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mAlpha:F

    .line 533
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 534
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mAlpha:F

    .line 536
    :cond_15
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-virtual {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->isFingerprintIconVisible()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 537
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mAlpha:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerprintIconView:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    iget v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mAlpha:F

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setAlpha(F)V

    .line 540
    :cond_54
    monitor-exit v0

    .line 541
    return-void

    .line 540
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public getCurrentAlpha()F
    .registers 2

    .line 527
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mAlpha:F

    return v0
.end method

.method public getFingerprintView()Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 545
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerprintIconView:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    monitor-exit v0

    return-object v1

    .line 546
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerAreaParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public resetDefaultParams()V
    .registers 3

    .line 559
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mIconDefaultX:I

    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mIconDefaultY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->setParams(II)V

    .line 560
    return-void
.end method

.method public setFingerprintIconDefaultColor([I)V
    .registers 7
    .param p1, "colors"  # [I

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "needUpdate":Z
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mColors:[I

    if-nez v1, :cond_7

    .line 498
    const/4 v0, 0x1

    goto :goto_19

    .line 500
    :cond_7
    array-length v1, p1

    .line 501
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_19

    .line 502
    aget v3, p1, v2

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mColors:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_16

    .line 503
    const/4 v0, 0x1

    .line 501
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 508
    .end local v1  # "length":I
    .end local v2  # "i":I
    :cond_19
    :goto_19
    if-eqz v0, :cond_24

    .line 509
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mColors:[I

    .line 510
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerprintIconView:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mColors:[I

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setDefaultIconColor([I)V

    .line 513
    :cond_24
    return-void
.end method

.method public setFingerprintImageDrawable(I)V
    .registers 3
    .param p1, "resId"  # I

    .line 516
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerprintIconView:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->setDefaultIcon(I)V

    .line 517
    return-void
.end method

.method public setParams(II)V
    .registers 4
    .param p1, "x"  # I
    .param p2, "y"  # I

    .line 554
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerAreaParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 555
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 556
    return-void
.end method

.method public updateFingerprintView(Z)V
    .registers 5
    .param p1, "isFingerDown"  # Z

    .line 520
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 521
    :try_start_7
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mFingerprintIconView:Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintIconView;->updateFingerprintView(Z)V

    .line 522
    if-eqz p1, :cond_11

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_13

    :cond_11
    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->mAlpha:F

    :goto_13
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$FODIconParamsController;->animateImageAlpha(FI)V

    .line 523
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

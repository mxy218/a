.class public Lcom/android/systemui/biometrics/BiometricDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "BiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

.field private mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

.field private mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field private mDialogShowing:Z

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 62
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/systemui/biometrics/BiometricDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    .line 65
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/BiometricDialogImpl;ZLjava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricAuthenticated(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/BiometricDialogImpl;Z)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleTryAgainPressed()V

    return-void
.end method

.method private handleBiometricAuthenticated(ZLjava/lang/String;)V
    .registers 5

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_54

    .line 261
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 263
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getAuthenticatedAccessibilityResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 261
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 264
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->requiresConfirmation()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 265
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    goto :goto_59

    .line 267
    :cond_3c
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v0, p0

    .line 268
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_59

    .line 273
    :cond_54
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    :goto_59
    return-void
.end method

.method private handleBiometricError(Ljava/lang/String;)V
    .registers 4

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_20

    const-string p0, "Dialog already dismissed"

    .line 285
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 288
    :cond_20
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onErrorReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleBiometricHelp(Ljava/lang/String;)V
    .registers 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onHelpReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleButtonNegative()V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_c

    const-string p0, "Receiver is null"

    .line 313
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, 0x2

    .line 317
    :try_start_d
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception v0

    const-string v2, "Remote exception when handling negative button"

    .line 319
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleButtonPositive()V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_c

    const-string p0, "Receiver is null"

    .line 326
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, 0x1

    .line 330
    :try_start_d
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception v0

    const-string v2, "Remote exception when handling positive button"

    .line 332
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleHideDialog(Z)V
    .registers 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHideDialog, userCanceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_2f

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog already dismissed, userCanceled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    if-eqz p1, :cond_3e

    .line 301
    :try_start_31
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception p1

    const-string v0, "RemoteException when hiding dialog"

    .line 303
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 p1, 0x0

    .line 307
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 308
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->startDismiss()V

    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .registers 10

    .line 215
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 216
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const-string v1, "BiometricDialogImpl"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 221
    new-instance v3, Lcom/android/systemui/biometrics/FingerprintDialogView;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/biometrics/FingerprintDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    goto :goto_1f

    :cond_13
    const/4 v3, 0x4

    if-ne v0, v3, :cond_8e

    .line 223
    new-instance v3, Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/biometrics/FaceDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    .line 229
    :goto_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleShowDialog,  savedState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_53

    .line 238
    invoke-virtual {v3, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    goto :goto_5e

    .line 239
    :cond_53
    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-eqz p3, :cond_5e

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_5e

    .line 244
    invoke-virtual {p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->forceRemove()V

    .line 247
    :cond_5e
    :goto_5e
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p3, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 248
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {v3, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 249
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v3, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setRequireConfirmation(Z)V

    .line 250
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v3, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->setUserId(I)V

    .line 251
    invoke-virtual {v3, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setSkipIntro(Z)V

    .line 252
    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 253
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return-void

    .line 225
    :cond_8e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleTryAgainPressed()V
    .registers 3

    .line 343
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onTryAgainPressed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "BiometricDialogImpl"

    const-string v1, "RemoteException when handling try again"

    .line 345
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method private handleUserCanceled()V
    .registers 2

    const/4 v0, 0x1

    .line 338
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method


# virtual methods
.method public hideBiometricDialog()V
    .registers 3

    const-string v0, "BiometricDialogImpl"

    const-string v1, "hideBiometricDialog"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic lambda$handleBiometricAuthenticated$0$BiometricDialogImpl()V
    .registers 2

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .registers 5

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 189
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 190
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 191
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .registers 4

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .registers 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 198
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 199
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 351
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 352
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-eqz v1, :cond_11

    .line 357
    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 360
    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v1, :cond_1d

    .line 361
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->forceRemove()V

    const/4 v1, 0x0

    .line 362
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    :cond_1d
    if-eqz p1, :cond_25

    .line 366
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :cond_25
    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .registers 8

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showBiometricDialog, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requireConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 175
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 176
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 177
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 178
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 179
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 180
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "android.hardware.biometrics.face"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "android.hardware.biometrics.iris"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 155
    :cond_1e
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 157
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_47
    return-void
.end method

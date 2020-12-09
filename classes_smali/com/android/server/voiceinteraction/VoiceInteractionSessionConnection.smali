.class final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field final mBindIntent:Landroid/content/Intent;

.field mBound:Z

.field final mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

.field final mCallingUid:I

.field mCanceled:Z

.field final mContext:Landroid/content/Context;

.field final mFullConnection:Landroid/content/ServiceConnection;

.field mFullyBound:Z

.field final mHandler:Landroid/os/Handler;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final mLock:Ljava/lang/Object;

.field mPendingShowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionOwner:Landroid/os/IBinder;

.field mService:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/IVoiceInteractionSession;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field mShowArgs:Landroid/os/Bundle;

.field private mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

.field mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field mShowFlags:I

.field mShown:Z

.field final mToken:Landroid/os/IBinder;

.field final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field final mUser:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V
    .registers 16

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 131
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    .line 490
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    .line 142
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 143
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 144
    iput p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    .line 145
    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    .line 146
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    .line 147
    iput p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    .line 148
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    .line 150
    const-class p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 151
    nop

    .line 152
    const-string/jumbo p1, "window"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 151
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    .line 153
    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    .line 154
    new-instance p1, Lcom/android/server/am/AssistDataRequester;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    .line 155
    const-string p3, "appops"

    invoke-virtual {v1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Landroid/app/AppOpsManager;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    const/16 v6, 0x31

    const/16 v7, 0x32

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 157
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "voicesession:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-interface {p1, p2}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    .line 160
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.service.voice.VoiceInteractionService"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    .line 161
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    new-instance p3, Landroid/os/UserHandle;

    iget p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {p3, p4}, Landroid/os/UserHandle;-><init>(I)V

    const p4, 0x100031

    invoke-virtual {p1, p2, p0, p4, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 166
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const-string p2, "VoiceInteractionServiceManager"

    if-eqz p1, :cond_d2

    .line 168
    :try_start_c0
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    const/16 p4, 0x7ef

    const/4 p5, 0x0

    invoke-interface {p1, p3, p4, p5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_ca} :catch_cb

    goto :goto_d1

    .line 169
    :catch_cb
    move-exception p1

    .line 170
    const-string p3, "Failed adding window token"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :goto_d1
    goto :goto_e8

    .line 173
    :cond_d2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed binding to voice interaction session service "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_e8
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksFailedLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksShownLocked()V

    return-void
.end method

.method private notifyPendingShowCallbacksFailedLocked()V
    .registers 3

    .line 445
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 447
    :try_start_9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 449
    goto :goto_16

    .line 448
    :catch_15
    move-exception v1

    .line 445
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    :cond_19
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    return-void
.end method

.method private notifyPendingShowCallbacksShownLocked()V
    .registers 3

    .line 435
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 437
    :try_start_9
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 439
    goto :goto_16

    .line 438
    :catch_15
    move-exception v1

    .line 435
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    :cond_19
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 442
    return-void
.end method


# virtual methods
.method public canHandleReceivedAssistDataLocked()Z
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public cancelLocked(Z)V
    .registers 5

    .line 385
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    .line 387
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 388
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    const-string v2, "VoiceInteractionServiceManager"

    if-eqz v0, :cond_1b

    .line 390
    :try_start_11
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 393
    goto :goto_1b

    .line 391
    :catch_15
    move-exception v0

    .line 392
    const-string v0, "Voice interation session already dead"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p1, :cond_2c

    .line 397
    :try_start_21
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {p1, v0}, Landroid/app/IActivityTaskManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 399
    goto :goto_2c

    .line 398
    :catch_2b
    move-exception p1

    .line 401
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 403
    :try_start_31
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-interface {p1, v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_39

    .line 406
    goto :goto_3f

    .line 404
    :catch_39
    move-exception p1

    .line 405
    const-string v0, "Failed removing window token"

    invoke-static {v2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    :goto_3f
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    .line 408
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 409
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 410
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 412
    :cond_48
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz p1, :cond_55

    .line 413
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 414
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 416
    :cond_55
    return-void
.end method

.method public deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 5

    .line 420
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 421
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 422
    iget-boolean p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz p2, :cond_1e

    .line 424
    :try_start_8
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {p1, p2, v0, v1}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 425
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 426
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    .line 428
    goto :goto_19

    .line 427
    :catch_18
    move-exception p1

    .line 429
    :goto_19
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->processPendingAssistData()V

    .line 431
    :cond_1e
    const/4 p1, 0x1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 477
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 479
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowArgs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 480
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 482
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    if-eqz v0, :cond_70

    .line 483
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSession="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInteractor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 487
    :cond_70
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AssistDataRequester;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 488
    return-void
.end method

.method public getUserDisabledShowContextLocked()I
    .registers 6

    .line 179
    nop

    .line 180
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    const/4 v2, 0x1

    const-string v3, "assist_structure_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_14

    .line 182
    move v0, v2

    goto :goto_15

    .line 180
    :cond_14
    const/4 v0, 0x0

    .line 184
    :goto_15
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    const-string v4, "assist_screenshot_enabled"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_27

    .line 186
    or-int/lit8 v0, v0, 0x2

    .line 188
    :cond_27
    return v0
.end method

.method grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V
    .registers 13

    .line 334
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 335
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 337
    :cond_12
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 338
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 339
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    .line 341
    :cond_2a
    return-void
.end method

.method grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V
    .registers 14

    .line 345
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 346
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    .line 347
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 349
    :cond_16
    return-void
.end method

.method grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 16

    .line 309
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    const-string v0, "content"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_d

    .line 310
    return-void

    .line 312
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 315
    :try_start_11
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v4, 0x0

    .line 316
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 317
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    invoke-static {p1, p4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    .line 315
    move v3, p3

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 319
    iget p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 320
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 321
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v7, 0x1

    iget v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    move v4, p3

    move-object v5, p5

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3d} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_3d} :catch_40
    .catchall {:try_start_11 .. :try_end_3d} :catchall_3e

    goto :goto_4e

    .line 327
    :catchall_3e
    move-exception p1

    goto :goto_49

    .line 324
    :catch_40
    move-exception p1

    .line 325
    :try_start_41
    const-string p2, "VoiceInteractionServiceManager"

    const-string p3, "Can\'t propagate permission"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_3e

    goto :goto_4e

    .line 327
    :goto_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 323
    :catch_4d
    move-exception p1

    .line 327
    :goto_4e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    nop

    .line 330
    return-void
.end method

.method public hideLocked()Z
    .registers 7

    .line 352
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 353
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_41

    .line 354
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 356
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 357
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v2}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    .line 358
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 359
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_23

    .line 361
    :try_start_1e
    invoke-interface {v2}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22

    .line 363
    goto :goto_23

    .line 362
    :catch_22
    move-exception v2

    .line 365
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 367
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_3c

    .line 369
    :try_start_31
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 371
    goto :goto_3c

    .line 370
    :catch_3b
    move-exception v0

    .line 373
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionHidden(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 375
    :cond_41
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-eqz v0, :cond_4e

    .line 376
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 377
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 379
    :cond_4e
    const/4 v0, 0x1

    return v0

    .line 381
    :cond_50
    return v1
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .registers 17

    .line 250
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_7

    .line 251
    return-void

    .line 254
    :cond_7
    if-nez v1, :cond_1e

    .line 256
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    :try_start_17
    invoke-interface/range {v0 .. v7}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1c

    .line 257
    :catch_1b
    move-exception v0

    .line 259
    :goto_1c
    goto/16 :goto_9f

    .line 261
    :cond_1e
    const-string/jumbo v2, "taskId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 262
    const-string v2, "activityId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 263
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 264
    const-string/jumbo v2, "structure"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/assist/AssistStructure;

    .line 265
    const-string v2, "content"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/app/assist/AssistContent;

    .line 266
    nop

    .line 267
    const/4 v1, -0x1

    if-eqz v9, :cond_50

    .line 268
    const-string v2, "android.intent.extra.ASSIST_UID"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v12, v1

    goto :goto_51

    .line 267
    :cond_50
    move v12, v1

    .line 270
    :goto_51
    if-ltz v12, :cond_90

    if-eqz v11, :cond_90

    .line 271
    invoke-virtual {v11}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_7c

    .line 273
    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 274
    if-eqz v2, :cond_7c

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v3}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 275
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget v5, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 276
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 275
    move-object v1, p0

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 279
    :cond_7c
    invoke-virtual {v11}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_90

    .line 281
    const/4 v3, 0x1

    iget v5, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 282
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 281
    move-object v1, p0

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    .line 286
    :cond_90
    :try_start_90
    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move v9, p2

    move/from16 v10, p3

    invoke-interface/range {v3 .. v10}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(ILandroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9d} :catch_9e

    .line 290
    goto :goto_9f

    .line 288
    :catch_9e
    move-exception v0

    .line 292
    :goto_9f
    return-void
.end method

.method public onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_5

    .line 298
    return-void

    .line 302
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 305
    goto :goto_a

    .line 303
    :catch_9
    move-exception p1

    .line 306
    :goto_a
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 456
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 457
    :try_start_3
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 458
    iget-boolean p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    if-nez p2, :cond_21

    .line 460
    :try_start_d
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-interface {p2, v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSessionService;->newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_23

    .line 463
    goto :goto_21

    .line 461
    :catch_19
    move-exception p2

    .line 462
    :try_start_1a
    const-string v0, "VoiceInteractionServiceManager"

    const-string v1, "Failed adding window token"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    :cond_21
    :goto_21
    monitor-exit p1

    .line 466
    return-void

    .line 465
    :catchall_23
    move-exception p2

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_23

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 470
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 471
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 472
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    .line 473
    monitor-exit p1

    .line 474
    return-void

    .line 473
    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "II",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a1

    .line 194
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    if-nez v0, :cond_1f

    .line 195
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    const v4, 0x8180001

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    .line 202
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    .line 203
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 204
    iput p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    .line 206
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result p1

    or-int/2addr p1, p3

    .line 207
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v1

    :goto_34
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_3a

    move v5, v0

    goto :goto_3b

    :cond_3a
    move v5, v1

    :goto_3b
    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_41

    move v6, v0

    goto :goto_42

    :cond_41
    move v6, v1

    :goto_42
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_48

    move v7, v0

    goto :goto_49

    :cond_48
    move v7, v1

    :goto_49
    iget v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    .line 212
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 207
    move-object v3, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->getPendingDataCount()I

    move-result p1

    if-gtz p1, :cond_68

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 215
    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->getPendingScreenshotCount()I

    move-result p1

    if-lez p1, :cond_66

    goto :goto_68

    :cond_66
    move p1, v1

    goto :goto_69

    :cond_68
    :goto_68
    move p1, v0

    .line 216
    :goto_69
    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 217
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_7c
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p1, :cond_94

    .line 221
    :try_start_80
    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    iget p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    invoke-interface {p1, p2, p3, p4}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 222
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    .line 223
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_8c} :catch_8d

    .line 225
    goto :goto_8e

    .line 224
    :catch_8d
    move-exception p1

    .line 226
    :goto_8e
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {p1}, Lcom/android/server/am/AssistDataRequester;->processPendingAssistData()V

    goto :goto_9b

    .line 227
    :cond_94
    if-eqz p4, :cond_9b

    .line 228
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_9b
    :goto_9b
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    invoke-interface {p1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionShown(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    .line 231
    return v0

    .line 233
    :cond_a1
    if-eqz p4, :cond_a8

    .line 235
    :try_start_a3
    invoke-interface {p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_a6} :catch_a7

    .line 237
    goto :goto_a8

    .line 236
    :catch_a7
    move-exception p1

    .line 239
    :cond_a8
    :goto_a8
    return v1
.end method

.class final Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
.super Ljava/lang/Object;
.source "AppPredictionPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/AppPredictionPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppPredictionSessionInfo"
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/prediction/IPredictionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field private final mRemoveSessionInfoAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Landroid/app/prediction/AppPredictionContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;

    invoke-direct {v0, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 360
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 361
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 362
    iput-object p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mRemoveSessionInfoAction:Ljava/util/function/Consumer;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method


# virtual methods
.method addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 371
    return-void
.end method

.method destroy()V
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 387
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mRemoveSessionInfoAction:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public synthetic lambda$resurrectSessionLocked$0$AppPredictionPerUserService$AppPredictionSessionInfo(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 379
    return-void
.end method

.method resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 397
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 400
    return-void
.end method

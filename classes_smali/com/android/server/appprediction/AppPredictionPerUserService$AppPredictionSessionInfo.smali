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
.field private static final DEBUG:Z


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
    .param p1, "id"  # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "predictionContext"  # Landroid/app/prediction/AppPredictionContext;
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

    .line 322
    .local p3, "removeSessionInfoAction":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/prediction/AppPredictionSessionId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;

    invoke-direct {v0, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 326
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 327
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 328
    iput-object p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mRemoveSessionInfoAction:Ljava/util/function/Consumer;

    .line 329
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 300
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method


# virtual methods
.method addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .registers 3
    .param p1, "callback"  # Landroid/app/prediction/IPredictionCallback;

    .line 336
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 337
    return-void
.end method

.method destroy()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 353
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mRemoveSessionInfoAction:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public synthetic lambda$resurrectSessionLocked$0$AppPredictionPerUserService$AppPredictionSessionInfo(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4
    .param p1, "service"  # Lcom/android/server/appprediction/AppPredictionPerUserService;
    .param p2, "callback"  # Landroid/app/prediction/IPredictionCallback;

    .line 365
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .registers 3
    .param p1, "callback"  # Landroid/app/prediction/IPredictionCallback;

    .line 344
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 345
    return-void
.end method

.method resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 357
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 363
    .local v0, "callbackCount":I
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 364
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 366
    return-void
.end method

.class Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;
.super Landroid/os/RemoteCallbackList;
.source "AppPredictionPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/app/prediction/IPredictionCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;


# direct methods
.method constructor <init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;->this$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/app/prediction/IPredictionCallback;)V
    .registers 2

    .line 349
    iget-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;->this$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    invoke-static {p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_11

    .line 350
    iget-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;->this$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    invoke-virtual {p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->destroy()V

    .line 352
    :cond_11
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    .line 342
    check-cast p1, Landroid/app/prediction/IPredictionCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;->onCallbackDied(Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

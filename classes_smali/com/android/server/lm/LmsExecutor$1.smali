.class Lcom/android/server/lm/LmsExecutor$1;
.super Landroid/os/Handler;
.source "LmsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lm/LmsExecutor;->initialize(Lcom/android/server/LocationManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lm/LmsExecutor;


# direct methods
.method constructor <init>(Lcom/android/server/lm/LmsExecutor;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/lm/LmsExecutor;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 50
    iput-object p1, p0, Lcom/android/server/lm/LmsExecutor$1;->this$0:Lcom/android/server/lm/LmsExecutor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 53
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    .line 55
    .local v0, "what":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 57
    .local v2, "userId":I
    const/4 v3, 0x0

    .line 59
    .local v3, "uid":I
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-interface {v4, v1, v5, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v4
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1a

    move v3, v4

    .line 62
    goto :goto_1e

    .line 60
    :catch_1a
    move-exception v4

    .line 61
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 63
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_1e
    const/4 v4, 0x1

    if-ne v0, v4, :cond_27

    .line 64
    iget-object v4, p0, Lcom/android/server/lm/LmsExecutor$1;->this$0:Lcom/android/server/lm/LmsExecutor;

    invoke-static {v4, v1, v3}, Lcom/android/server/lm/LmsExecutor;->access$100(Lcom/android/server/lm/LmsExecutor;Ljava/lang/String;I)V

    goto :goto_2f

    .line 65
    :cond_27
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2f

    .line 66
    iget-object v4, p0, Lcom/android/server/lm/LmsExecutor$1;->this$0:Lcom/android/server/lm/LmsExecutor;

    invoke-static {v4, v1, v3}, Lcom/android/server/lm/LmsExecutor;->access$200(Lcom/android/server/lm/LmsExecutor;Ljava/lang/String;I)V

    .line 68
    :cond_2f
    :goto_2f
    return-void
.end method

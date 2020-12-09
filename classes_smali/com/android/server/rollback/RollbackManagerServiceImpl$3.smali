.class Lcom/android/server/rollback/RollbackManagerServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 240
    const/4 p1, -0x1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 241
    if-ne p2, p1, :cond_16

    .line 242
    return-void

    .line 244
    :cond_16
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$500(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/os/UserHandle;)V

    .line 246
    :cond_1f
    return-void
.end method

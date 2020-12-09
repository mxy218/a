.class Lcom/android/server/rollback/RollbackManagerServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V
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

    .line 269
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 273
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$600(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V

    .line 277
    :cond_19
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 279
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p2, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$700(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V

    .line 281
    :cond_2e
    return-void
.end method

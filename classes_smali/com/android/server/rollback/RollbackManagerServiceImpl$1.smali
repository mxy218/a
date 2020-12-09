.class Lcom/android/server/rollback/RollbackManagerServiceImpl$1;
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

    .line 178
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$RollbackManagerServiceImpl$1(ILjava/io/File;[III)V
    .registers 12

    .line 194
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$200(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/io/File;[III)Z

    move-result p1

    .line 196
    nop

    .line 197
    if-nez p1, :cond_10

    .line 198
    const/4 p1, -0x1

    goto :goto_11

    .line 197
    :cond_10
    const/4 p1, 0x1

    .line 201
    :goto_11
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 203
    invoke-virtual {p2, p5, p1}, Landroid/content/pm/PackageManagerInternal;->setEnableRollbackCode(II)V

    .line 204
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 182
    const/4 p1, -0x1

    const-string v0, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 184
    const/4 p1, 0x0

    const-string v0, "android.content.pm.extra.ENABLE_ROLLBACK_INSTALL_FLAGS"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 186
    const-string v0, "android.content.pm.extra.ENABLE_ROLLBACK_INSTALLED_USERS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    .line 188
    const-string v0, "android.content.pm.extra.ENABLE_ROLLBACK_USER"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 191
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$TqXV32QQcmn2m-AeooJgWwLsvfE;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;ILjava/io/File;[III)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->abortBroadcast()V

    .line 211
    :cond_46
    return-void
.end method

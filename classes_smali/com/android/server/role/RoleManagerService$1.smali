.class Lcom/android/server/role/RoleManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/role/RoleManagerService;->registerUserRemovedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$1;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 173
    const/4 p1, 0x0

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 174
    iget-object p2, p0, Lcom/android/server/role/RoleManagerService$1;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {p2, p1}, Lcom/android/server/role/RoleManagerService;->access$400(Lcom/android/server/role/RoleManagerService;I)V

    .line 176
    :cond_18
    return-void
.end method

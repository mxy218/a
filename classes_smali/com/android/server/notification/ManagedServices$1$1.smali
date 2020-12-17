.class Lcom/android/server/notification/ManagedServices$1$1;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ManagedServices$1;->onBindingDied(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/ManagedServices$1;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ManagedServices$1;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "this$1"  # Lcom/android/server/notification/ManagedServices$1;

    .line 1158
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1163
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    invoke-static {v1}, Lcom/android/server/notification/ManagedServices;->access$500(Lcom/android/server/notification/ManagedServices;)Landroid/app/ActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget v2, v2, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityManager;->checkFrozen(Ljava/lang/String;I)Z

    move-result v1

    .line 1165
    .local v1, "isFrozen":Z
    if-eqz v1, :cond_3b

    .line 1166
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification package name + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isFrozen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void

    .line 1170
    :cond_3b
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$1;->this$0:Lcom/android/server/notification/ManagedServices;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$1$1;->val$name:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$1$1;->this$1:Lcom/android/server/notification/ManagedServices$1;

    iget v4, v4, Lcom/android/server/notification/ManagedServices$1;->val$userid:I

    invoke-static {v2, v3, v4}, Lcom/android/server/notification/ManagedServices;->access$600(Lcom/android/server/notification/ManagedServices;Landroid/content/ComponentName;I)V

    .line 1171
    return-void
.end method

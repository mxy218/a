.class Lcom/android/CtsStateMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "CtsStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CtsStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CtsStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/CtsStateMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/CtsStateMonitor;

    .line 186
    iput-object p1, p0, Lcom/android/CtsStateMonitor$2;->this$0:Lcom/android/CtsStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 191
    const/4 v1, 0x0

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 192
    .local v1, "rm_uid":I
    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 193
    iget-object v2, p0, Lcom/android/CtsStateMonitor$2;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v2}, Lcom/android/CtsStateMonitor;->access$500(Lcom/android/CtsStateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 194
    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_34

    .line 195
    const-string/jumbo v2, "persist.sys.cp_on_runtime"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_34
    iget-object v2, p0, Lcom/android/CtsStateMonitor$2;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/CtsStateMonitor;->access$700(Lcom/android/CtsStateMonitor;Landroid/util/SparseIntArray;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsCtsRunning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/CtsStateMonitor$2;->this$0:Lcom/android/CtsStateMonitor;

    invoke-static {v3}, Lcom/android/CtsStateMonitor;->access$500(Lcom/android/CtsStateMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,sUidpackage.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/CtsStateMonitor;->access$000()Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",rm_uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CtsStateMonitor"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v1  # "rm_uid":I
    :cond_72
    return-void
.end method

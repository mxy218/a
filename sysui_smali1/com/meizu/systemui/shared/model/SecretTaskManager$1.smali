.class Lcom/meizu/systemui/shared/model/SecretTaskManager$1;
.super Ljava/lang/Object;
.source "SecretTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/systemui/shared/model/SecretTaskManager;->updatePayAppList(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/meizu/systemui/shared/model/SecretTaskManager;Landroid/content/Context;)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;->this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    iput-object p2, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;->this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    invoke-static {v0}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->access$000(Lcom/meizu/systemui/shared/model/SecretTaskManager;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 118
    :try_start_7
    iget-object v1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;->this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    iget-object v2, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;->this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    invoke-static {v2}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->access$100(Lcom/meizu/systemui/shared/model/SecretTaskManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->access$002(Lcom/meizu/systemui/shared/model/SecretTaskManager;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 119
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_34

    .line 121
    iget-object v0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "recents_secret_alphame"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$1;->this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    invoke-static {p0}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->access$000(Lcom/meizu/systemui/shared/model/SecretTaskManager;)Ljava/util/HashSet;

    move-result-object p0

    const-string v1, "packageList"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_34
    move-exception p0

    .line 119
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

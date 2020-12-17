.class Lcom/flyme/server/pm/FlymeDexOptManager$1;
.super Ljava/lang/Thread;
.source "FlymeDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/server/pm/FlymeDexOptManager;->performDexOpt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flyme/server/pm/FlymeDexOptManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"  # Lcom/flyme/server/pm/FlymeDexOptManager;
    .param p2, "x0"  # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

    iput-object p3, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 105
    invoke-static {}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$000()Z

    move-result v0

    const-string v1, "FLYME_LUNCH_OPT"

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

    invoke-static {v0}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$100(Lcom/flyme/server/pm/FlymeDexOptManager;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

    invoke-static {v0}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$200(Lcom/flyme/server/pm/FlymeDexOptManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_7a

    .line 110
    :cond_19
    invoke-static {}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDexOpt "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

    invoke-static {v0}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$100(Lcom/flyme/server/pm/FlymeDexOptManager;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "speed-profile"

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    goto :goto_79

    .line 116
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDexOpt bg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

    .line 118
    invoke-static {v0}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$100(Lcom/flyme/server/pm/FlymeDexOptManager;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v2, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

    .line 119
    invoke-static {v2}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$200(Lcom/flyme/server/pm/FlymeDexOptManager;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/flyme/server/pm/FlymeDexOptManager$1$1;

    invoke-direct {v3, p0}, Lcom/flyme/server/pm/FlymeDexOptManager$1$1;-><init>(Lcom/flyme/server/pm/FlymeDexOptManager$1;)V

    .line 117
    invoke-static {v0, v2, v3}, Lcom/android/server/pm/BackgroundDexOptService;->runFlymeIdleOptimizationsNow(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 123
    .local v0, "success":Z
    if-eqz v0, :cond_79

    .line 124
    const-string v2, "performDexOpt success"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0  # "success":Z
    :cond_79
    :goto_79
    return-void

    .line 106
    :cond_7a
    :goto_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDexOpt return  IN_USING = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$000()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPackageManagerService = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

    .line 107
    invoke-static {v2}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$100(Lcom/flyme/server/pm/FlymeDexOptManager;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mContext = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->this$0:Lcom/flyme/server/pm/FlymeDexOptManager;

    invoke-static {v2}, Lcom/flyme/server/pm/FlymeDexOptManager;->access$200(Lcom/flyme/server/pm/FlymeDexOptManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

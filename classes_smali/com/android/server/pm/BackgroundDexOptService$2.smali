.class Lcom/android/server/pm/BackgroundDexOptService$2;
.super Ljava/lang/Thread;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->runIdleOptimization(Landroid/app/job/JobParameters;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BackgroundDexOptService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pkgs:Landroid/util/ArraySet;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/app/job/JobParameters;)V
    .registers 6

    .line 253
    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pkgs:Landroid/util/ArraySet;

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$pkgs:Landroid/util/ArraySet;

    invoke-static {v0, v1, v2, v0}, Lcom/android/server/pm/BackgroundDexOptService;->access$100(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/content/Context;)I

    move-result v0

    .line 257
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    .line 258
    const-string v0, "BackgroundDexOptService"

    const-string v1, "Idle optimizations aborted because of space constraints."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->this$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$2;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 263
    :cond_1c
    return-void
.end method

.class Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;
.super Landroid/os/Handler;
.source "FrameworkResourcesServiceNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Landroid/os/Looper;Landroid/os/Handler$Callback;ZI)V
    .registers 6

    .line 141
    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iput p5, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->val$userId:I

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_17

    .line 145
    iget-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-static {p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->access$000(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_b
    iget-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->val$userId:I

    invoke-virtual {p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->resetTemporaryService(I)V

    .line 147
    monitor-exit v0

    goto :goto_2f

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw p1

    .line 149
    :cond_17
    invoke-static {}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid handler msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_2f
    return-void
.end method

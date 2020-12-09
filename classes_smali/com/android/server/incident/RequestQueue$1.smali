.class Lcom/android/server/incident/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/incident/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/incident/RequestQueue;


# direct methods
.method constructor <init>(Lcom/android/server/incident/RequestQueue;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 84
    nop

    .line 85
    iget-object v0, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    invoke-static {v0}, Lcom/android/server/incident/RequestQueue;->access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_8
    iget-object v1, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    invoke-static {v1}, Lcom/android/server/incident/RequestQueue;->access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    invoke-static {v2}, Lcom/android/server/incident/RequestQueue;->access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    iget-object v2, p0, Lcom/android/server/incident/RequestQueue$1;->this$0:Lcom/android/server/incident/RequestQueue;

    invoke-static {v2}, Lcom/android/server/incident/RequestQueue;->access$000(Lcom/android/server/incident/RequestQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2a

    .line 86
    :cond_29
    const/4 v1, 0x0

    .line 90
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_43

    .line 91
    if-eqz v1, :cond_42

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 93
    const/4 v2, 0x0

    :goto_32
    if-ge v2, v0, :cond_42

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/incident/RequestQueue$Rec;

    iget-object v3, v3, Lcom/android/server/incident/RequestQueue$Rec;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 97
    :cond_42
    return-void

    .line 90
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

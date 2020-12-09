.class Lcom/android/server/am/AppCompactor$1;
.super Ljava/lang/Object;
.source "AppCompactor.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppCompactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppCompactor;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppCompactor;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$000(Lcom/android/server/am/AppCompactor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 135
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    const-string/jumbo v2, "use_compaction"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 137
    iget-object v1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->access$100(Lcom/android/server/am/AppCompactor;)V

    goto/16 :goto_a0

    .line 138
    :cond_2b
    const-string v2, "compact_action_1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    const-string v2, "compact_action_2"

    .line 139
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_9b

    .line 141
    :cond_3c
    const-string v2, "compact_throttle_1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    const-string v2, "compact_throttle_2"

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    const-string v2, "compact_throttle_3"

    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    const-string v2, "compact_throttle_4"

    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    goto :goto_95

    .line 146
    :cond_5d
    const-string v2, "compact_statsd_sample_rate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 147
    iget-object v1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->access$400(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 148
    :cond_6b
    const-string v2, "compact_full_rss_throttle_kb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 149
    iget-object v1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->access$500(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 150
    :cond_79
    const-string v2, "compact_full_delta_rss_throttle_kb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 151
    iget-object v1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->access$600(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 152
    :cond_87
    const-string v2, "compact_proc_state_throttle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 153
    iget-object v1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->access$700(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 145
    :cond_95
    :goto_95
    iget-object v1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->access$300(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 140
    :cond_9b
    :goto_9b
    iget-object v1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v1}, Lcom/android/server/am/AppCompactor;->access$200(Lcom/android/server/am/AppCompactor;)V

    .line 155
    :cond_a0
    :goto_a0
    goto/16 :goto_f

    .line 156
    :cond_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_7 .. :try_end_a3} :catchall_b5

    .line 157
    iget-object p1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {p1}, Lcom/android/server/am/AppCompactor;->access$800(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

    move-result-object p1

    if-eqz p1, :cond_b4

    .line 158
    iget-object p1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {p1}, Lcom/android/server/am/AppCompactor;->access$800(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;->onPropertyChanged()V

    .line 160
    :cond_b4
    return-void

    .line 156
    :catchall_b5
    move-exception p1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p1
.end method

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
    .param p1, "this$0"  # Lcom/android/server/am/AppCompactor;

    .line 134
    iput-object p1, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"  # Landroid/provider/DeviceConfig$Properties;

    .line 137
    iget-object v0, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$000(Lcom/android/server/am/AppCompactor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "use_compaction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 140
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$100(Lcom/android/server/am/AppCompactor;)V

    goto/16 :goto_a0

    .line 141
    :cond_2b
    const-string v3, "compact_action_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v3, "compact_action_2"

    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_9b

    .line 144
    :cond_3c
    const-string v3, "compact_throttle_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    const-string v3, "compact_throttle_2"

    .line 145
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    const-string v3, "compact_throttle_3"

    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    const-string v3, "compact_throttle_4"

    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_95

    .line 149
    :cond_5d
    const-string v3, "compact_statsd_sample_rate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 150
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$400(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 151
    :cond_6b
    const-string v3, "compact_full_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 152
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$500(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 153
    :cond_79
    const-string v3, "compact_full_delta_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 154
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$600(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 155
    :cond_87
    const-string v3, "compact_proc_state_throttle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 156
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$700(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 148
    :cond_95
    :goto_95
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$300(Lcom/android/server/am/AppCompactor;)V

    goto :goto_a0

    .line 143
    :cond_9b
    :goto_9b
    iget-object v3, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v3}, Lcom/android/server/am/AppCompactor;->access$200(Lcom/android/server/am/AppCompactor;)V

    .line 158
    .end local v2  # "name":Ljava/lang/String;
    :cond_a0
    :goto_a0
    goto/16 :goto_f

    .line 159
    :cond_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_7 .. :try_end_a3} :catchall_b5

    .line 160
    iget-object v0, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$800(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 161
    iget-object v0, p0, Lcom/android/server/am/AppCompactor$1;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$800(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/AppCompactor$PropertyChangedCallbackForTest;->onPropertyChanged()V

    .line 163
    :cond_b4
    return-void

    .line 159
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1
.end method

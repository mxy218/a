.class Lcom/android/server/net/NetworkPolicyManagerService$18;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5159
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "msg"  # Landroid/os/Message;

    .line 5162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1b6

    .line 5278
    :pswitch_7  #0x3, 0x4, 0x8, 0x9, 0xc, 0xe
    return v1

    .line 5272
    :pswitch_8  #0x12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 5273
    .local v0, "template":Landroid/net/NetworkTemplate;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_11

    move v1, v2

    .line 5274
    .local v1, "enabled":Z
    :cond_11
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    .line 5275
    return v2

    .line 5266
    .end local v0  # "template":Landroid/net/NetworkTemplate;
    .end local v1  # "enabled":Z
    :pswitch_17  #0x11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5267
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 5268
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 5269
    return v2

    .line 5254
    .end local v0  # "userId":I
    .end local v1  # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_23  #0x10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5255
    .local v0, "overrideMask":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 5256
    .local v1, "overrideValue":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5257
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 5258
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    if-ge v5, v4, :cond_50

    .line 5259
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 5260
    .local v6, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v3, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    .line 5258
    .end local v6  # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 5262
    .end local v5  # "i":I
    :cond_50
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5263
    return v2

    .line 5250
    .end local v0  # "overrideMask":I
    .end local v1  # "overrideValue":I
    .end local v3  # "subId":I
    .end local v4  # "length":I
    :pswitch_5a  #0xf
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 5251
    return v2

    .line 5214
    :pswitch_62  #0xd
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5215
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 5216
    .local v1, "policy":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 5218
    .local v3, "notifyApp":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 5219
    .restart local v4  # "length":I
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_75
    if-ge v5, v4, :cond_8b

    .line 5220
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 5221
    .restart local v6  # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 5219
    .end local v6  # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 5223
    .end local v5  # "i":I
    :cond_8b
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5225
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 5226
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    .line 5228
    :cond_9f
    return v2

    .line 5246
    .end local v0  # "uid":I
    .end local v1  # "policy":I
    .end local v3  # "notifyApp":Ljava/lang/Boolean;
    .end local v4  # "length":I
    :pswitch_a0  #0xb
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 5247
    return v2

    .line 5239
    :pswitch_aa  #0xa
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 5241
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 5243
    return v2

    .line 5231
    :pswitch_cd  #0x7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5234
    .local v0, "lowestRule":J
    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    .line 5235
    .local v3, "persistThreshold":J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/net/NetworkStatsManagerInternal;->advisePersistThreshold(J)V

    .line 5236
    return v2

    .line 5200
    .end local v0  # "lowestRule":J
    .end local v3  # "persistThreshold":J
    :pswitch_e3  #0x6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_e8

    move v1, v2

    :cond_e8
    move v0, v1

    .line 5201
    .local v0, "restrictBackground":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 5202
    .local v1, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f4
    if-ge v3, v1, :cond_10a

    .line 5203
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 5204
    .local v4, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 5202
    .end local v4  # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .line 5206
    .end local v3  # "i":I
    :cond_10a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5207
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5209
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000  # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5210
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5211
    return v2

    .line 5185
    .end local v0  # "restrictBackground":Z
    .end local v1  # "length":I
    .end local v3  # "intent":Landroid/content/Intent;
    :pswitch_12b  #0x5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5187
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5188
    :try_start_134
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    .line 5191
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsManagerInternal;->forceUpdate()V

    .line 5193
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 5194
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 5196
    :cond_153
    monitor-exit v1

    .line 5197
    return v2

    .line 5196
    :catchall_155
    move-exception v2

    monitor-exit v1
    :try_end_157
    .catchall {:try_start_134 .. :try_end_157} :catchall_155

    throw v2

    .line 5175
    .end local v0  # "iface":Ljava/lang/String;
    :pswitch_158  #0x2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 5176
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 5177
    .restart local v1  # "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_167
    if-ge v3, v1, :cond_17d

    .line 5178
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 5179
    .restart local v4  # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 5177
    .end local v4  # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_167

    .line 5181
    .end local v3  # "i":I
    :cond_17d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5182
    return v2

    .line 5164
    .end local v0  # "meteredIfaces":[Ljava/lang/String;
    .end local v1  # "length":I
    :pswitch_187  #0x1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5165
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 5166
    .local v1, "uidRules":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 5167
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_196
    if-ge v4, v3, :cond_1ac

    .line 5168
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 5169
    .local v5, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 5167
    .end local v5  # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_196

    .line 5171
    .end local v4  # "i":I
    :cond_1ac
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5172
    return v2

    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_187  #00000001
        :pswitch_158  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_12b  #00000005
        :pswitch_e3  #00000006
        :pswitch_cd  #00000007
        :pswitch_7  #00000008
        :pswitch_7  #00000009
        :pswitch_aa  #0000000a
        :pswitch_a0  #0000000b
        :pswitch_7  #0000000c
        :pswitch_62  #0000000d
        :pswitch_7  #0000000e
        :pswitch_5a  #0000000f
        :pswitch_23  #00000010
        :pswitch_17  #00000011
        :pswitch_8  #00000012
    .end packed-switch
.end method

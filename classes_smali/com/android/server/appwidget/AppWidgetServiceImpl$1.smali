.class Lcom/android/server/appwidget/AppWidgetServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 172
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 178
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$000()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppWidgetServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_30
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_c2

    :cond_3d
    goto :goto_6f

    :sswitch_3e
    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v2, v5

    goto :goto_6f

    :sswitch_48
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v2, v4

    goto :goto_6f

    :sswitch_52
    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v2, v8

    goto :goto_6f

    :sswitch_5c
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v2, v6

    goto :goto_6f

    :sswitch_66
    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move v2, v7

    :goto_6f
    if-eqz v2, :cond_ba

    if-eq v2, v8, :cond_a9

    if-eq v2, v7, :cond_a9

    if-eq v2, v6, :cond_96

    if-eq v2, v5, :cond_83

    .line 201
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    goto :goto_c0

    .line 197
    :cond_83
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 198
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    invoke-static {v2, p2, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    .line 199
    goto :goto_c0

    .line 193
    :cond_96
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V

    .line 194
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->getSendingUserId()I

    move-result v3

    invoke-static {v2, p2, v8, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V

    .line 195
    goto :goto_c0

    .line 188
    :cond_a9
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 189
    :try_start_b0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 190
    monitor-exit v2

    .line 191
    goto :goto_c0

    .line 190
    :catchall_b7
    move-exception v3

    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_b7

    throw v3

    .line 184
    :cond_ba
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 185
    nop

    .line 204
    :goto_c0
    return-void

    nop

    :sswitch_data_c2
    .sparse-switch
        -0x49d08e2b -> :sswitch_66
        -0x3bb3e592 -> :sswitch_5c
        -0x33813a72 -> :sswitch_52
        0x9780086 -> :sswitch_48
        0x4cef8b35 -> :sswitch_3e
    .end sparse-switch
.end method

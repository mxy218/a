.class Lcom/android/server/am/PreBootBroadcaster$1;
.super Landroid/os/Handler;
.source "PreBootBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreBootBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PreBootBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/am/PreBootBroadcaster;
    .param p2, "x0"  # Landroid/os/Looper;
    .param p3, "x1"  # Landroid/os/Handler$Callback;
    .param p4, "x2"  # Z

    .line 129
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"  # Landroid/os/Message;

    .line 132
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-static {v0}, Lcom/android/server/am/PreBootBroadcaster;->access$000(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 133
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/app/NotificationManager;

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 135
    .local v1, "notifManager":Landroid/app/NotificationManager;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 136
    .local v2, "max":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 138
    .local v3, "index":I
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xd

    const-string v6, "PreBootBroadcaster"

    const/4 v7, 0x1

    if-eq v4, v7, :cond_31

    const/4 v7, 0x2

    if-eq v4, v7, :cond_22

    goto/16 :goto_ad

    .line 174
    :cond_22
    iget-object v4, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 175
    invoke-static {v4}, Lcom/android/server/am/PreBootBroadcaster;->access$100(Lcom/android/server/am/PreBootBroadcaster;)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 174
    invoke-virtual {v1, v6, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_ad

    .line 140
    :cond_31
    const v4, 0x1040086

    .line 141
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 143
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.HelpTrampoline"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v9, "android.intent.extra.TEXT"

    const-string v10, "help_url_upgrading"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_5b

    .line 150
    invoke-static {v0, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .local v9, "contentIntent":Landroid/app/PendingIntent;
    goto :goto_5c

    .line 152
    .end local v9  # "contentIntent":Landroid/app/PendingIntent;
    :cond_5b
    const/4 v9, 0x0

    .line 155
    .restart local v9  # "contentIntent":Landroid/app/PendingIntent;
    :goto_5c
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 156
    invoke-static {v12}, Lcom/android/server/am/PreBootBroadcaster;->access$000(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x10807ef

    .line 158
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 159
    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 160
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 161
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const v12, 0x106001c

    .line 162
    invoke-virtual {v0, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 164
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 165
    invoke-virtual {v11, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 166
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 167
    invoke-virtual {v7, v2, v3, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 168
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 169
    .local v7, "notif":Landroid/app/Notification;
    iget-object v10, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 170
    invoke-static {v10}, Lcom/android/server/am/PreBootBroadcaster;->access$100(Lcom/android/server/am/PreBootBroadcaster;)I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    .line 169
    invoke-virtual {v1, v6, v5, v7, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 171
    nop

    .line 178
    .end local v4  # "title":Ljava/lang/CharSequence;
    .end local v7  # "notif":Landroid/app/Notification;
    .end local v8  # "intent":Landroid/content/Intent;
    .end local v9  # "contentIntent":Landroid/app/PendingIntent;
    :goto_ad
    return-void
.end method

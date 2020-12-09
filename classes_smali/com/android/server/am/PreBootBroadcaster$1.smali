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

    .line 126
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 129
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-static {v0}, Lcom/android/server/am/PreBootBroadcaster;->access$000(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 130
    const-class v1, Landroid/app/NotificationManager;

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 132
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 133
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 135
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xd

    const-string v5, "PreBootBroadcaster"

    const/4 v6, 0x1

    if-eq p1, v6, :cond_31

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    goto/16 :goto_ad

    .line 171
    :cond_22
    iget-object p1, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 172
    invoke-static {p1}, Lcom/android/server/am/PreBootBroadcaster;->access$100(Lcom/android/server/am/PreBootBroadcaster;)I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 171
    invoke-virtual {v1, v5, v4, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_ad

    .line 137
    :cond_31
    const p1, 0x1040089

    .line 138
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 140
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 141
    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.HelpTrampoline"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v8, "android.intent.extra.TEXT"

    const-string v9, "help_url_upgrading"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_5b

    .line 147
    invoke-static {v0, v9, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    goto :goto_5c

    .line 149
    :cond_5b
    const/4 v7, 0x0

    .line 152
    :goto_5c
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 153
    invoke-static {v10}, Lcom/android/server/am/PreBootBroadcaster;->access$000(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v10, 0x10807e2

    .line 155
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v10, 0x0

    .line 156
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 157
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 158
    invoke-virtual {v8, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v10, 0x106001c

    .line 159
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v2, v3, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    .line 167
    invoke-static {v0}, Lcom/android/server/am/PreBootBroadcaster;->access$100(Lcom/android/server/am/PreBootBroadcaster;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 166
    invoke-virtual {v1, v5, v4, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 168
    nop

    .line 175
    :goto_ad
    return-void
.end method

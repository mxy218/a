.class Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNotificationForParent(Landroid/view/ViewParent;)Landroid/service/notification/StatusBarNotification;
    .registers 2

    :goto_0
    if-eqz p1, :cond_12

    .line 265
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_d

    .line 266
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0

    .line 268
    :cond_d
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .registers 12

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->shouldHandleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const v0, 0x10203de

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 280
    instance-of v1, v0, [Landroid/app/RemoteInput;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 281
    check-cast v0, [Landroid/app/RemoteInput;

    move-object v5, v0

    goto :goto_1d

    :cond_1c
    move-object v5, v2

    :goto_1d
    const/4 v0, 0x0

    if-nez v5, :cond_21

    return v0

    .line 290
    :cond_21
    array-length v1, v5

    move-object v6, v2

    move v2, v0

    :goto_24
    if-ge v2, v1, :cond_32

    aget-object v3, v5, v2

    .line 291
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object v6, v3

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_32
    if-nez v6, :cond_35

    return v0

    .line 300
    :cond_35
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const/4 v8, 0x0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z

    move-result p0

    return p0
.end method

.method private logActionClick(Landroid/view/View;Landroid/app/PendingIntent;)V
    .registers 13

    const v0, 0x1020368

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_c

    return-void

    .line 221
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 222
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->getNotificationForParent(Landroid/view/ViewParent;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    const-string v3, "NotifRemoteInputManager"

    if-nez v2, :cond_1e

    const-string p0, "Couldn\'t determine notification for click."

    .line 224
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_1e
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x102017d

    if-ne v6, v7, :cond_3a

    if-eqz v1, :cond_3a

    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3a

    .line 232
    check-cast v1, Landroid/view/ViewGroup;

    .line 233
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    move v6, p1

    goto :goto_3b

    :cond_3a
    move v6, v4

    .line 235
    :goto_3b
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v1

    .line 240
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v4, :cond_a5

    .line 241
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    array-length v4, v4

    if-lt v7, v4, :cond_6b

    goto :goto_a5

    .line 246
    :cond_6b
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v7, v2, v0

    .line 247
    iget-object v0, v7, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_85

    const-string p0, "actionIntent does not match"

    .line 248
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 251
    :cond_85
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 253
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    .line 252
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p2

    const/4 v0, 0x1

    .line 255
    invoke-static {v5, v1, p1, v0, p2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v8

    .line 257
    :try_start_9c
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a4} :catch_a4

    :catch_a4
    return-void

    :cond_a5
    :goto_a5
    const-string/jumbo p0, "statusBarNotification.getNotification().actions is null or invalid"

    .line 242
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClickHandler$0$NotificationRemoteInputManager$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 8

    const-string v0, "NotifRemoteInputManager"

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$200(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/view/ViewParent;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 169
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getQuickReplyTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_13
    const-string v1, ""

    .line 173
    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_a9

    if-eqz v1, :cond_a9

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 174
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p3, p3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectQuickReplyClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getActivityOptions()Landroid/os/Bundle;

    move-result-object p3

    const/4 v1, 0x1

    const-string/jumbo v2, "start_windowmode"

    .line 177
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    :try_start_43
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/systemui/quickreply/QuickReplyController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/quickreply/QuickReplyController;

    move-result-object v2

    .line 180
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v2, v3}, Lcom/flyme/systemui/quickreply/QuickReplyController;->isWindowSpaceModePackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    const-string/jumbo v2, "start_spacemode"

    .line 181
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",SpaceMode:true succeed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    :cond_8d
    :goto_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteViews OnClickHandler isQuickReply, so setWindowMode. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const/4 p1, 0x0

    invoke-static {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$300(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 192
    :cond_a9
    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p0

    .line 194
    iget-object p3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/content/Intent;

    const/high16 v0, 0x8000000

    const/high16 v1, 0x200000

    if-eqz p3, :cond_c2

    .line 196
    iget-object v2, p3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v2, v1}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 197
    iget-object p3, p3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {p3, v0}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    goto :goto_d9

    .line 199
    :cond_c2
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 200
    iget-object v2, p3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v2, v1}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 201
    iget-object v1, p3, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    invoke-virtual {v1, v0}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 203
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityOptions;

    invoke-static {p3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 207
    :goto_d9
    iget-object p3, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Landroid/app/ActivityOptions;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 209
    invoke-static {p1, p2, p0}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 8

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$000(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "NOTIFICATION_CLICK"

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/systemui/statusbar/phone/ShadeController;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x1

    return p0

    .line 155
    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->logActionClick(Landroid/view/View;Landroid/app/PendingIntent;)V

    .line 161
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_27

    .line 164
    :catch_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$1$ca-Z4BPYNmQzv2-SkXiGcHr5Mxc;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->handleRemoteViewClick(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z

    move-result p0

    return p0
.end method

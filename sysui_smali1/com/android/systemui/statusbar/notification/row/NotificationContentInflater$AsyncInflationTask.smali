.class public Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;
.super Landroid/os/AsyncTask;
.source "NotificationContentInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/InflationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncInflationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;",
        ">;",
        "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;",
        "Lcom/android/systemui/statusbar/InflationTask;"
    }
.end annotation


# instance fields
.field private final mCachedContentViews:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mContext:Landroid/content/Context;

.field private mError:Ljava/lang/Exception;

.field private final mInflateSynchronously:Z

.field private final mIsChildInGroup:Z

.field private final mIsLowPriority:Z

.field private mReInflateFlags:I

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final mSbn:Landroid/service/notification/StatusBarNotification;

.field private final mUsesIncreasedHeadsUpHeight:Z

.field private final mUsesIncreasedHeight:Z


# direct methods
.method private constructor <init>(Landroid/service/notification/StatusBarNotification;ZILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "ZI",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "ZZZZ",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;",
            "Landroid/widget/RemoteViews$OnClickHandler;",
            ")V"
        }
    .end annotation

    .line 813
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 814
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 815
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 816
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mInflateSynchronously:Z

    .line 817
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    .line 818
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCachedContentViews:Landroid/util/ArrayMap;

    .line 819
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    .line 820
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsLowPriority:Z

    .line 821
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsChildInGroup:Z

    .line 822
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    .line 823
    iput-boolean p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    .line 824
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 825
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    .line 826
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    .line 827
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/StatusBarNotification;ZILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;)V
    .registers 13

    .line 784
    invoke-direct/range {p0 .. p11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;-><init>(Landroid/service/notification/StatusBarNotification;ZILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .registers 6

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->onInflationTaskFinished()V

    .line 910
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t inflate view for notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatusBar"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    new-instance v1, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t inflate contentViews"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    const/4 v0, 0x1

    .line 920
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 921
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_b

    .line 922
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_b
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .registers 12

    .line 839
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 841
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 840
    invoke-static {p1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 843
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 846
    new-instance v1, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 848
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V

    .line 850
    :cond_2a
    invoke-static {p1}, Lcom/flyme/systemui/quickreply/QuickReplyController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/quickreply/QuickReplyController;

    move-result-object v1

    .line 851
    iget-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 852
    invoke-virtual {v1}, Lcom/flyme/systemui/quickreply/QuickReplyController;->isforceQuickReply()Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 853
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/flyme/systemui/quickreply/QuickReplyController;->isQuickReplyPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    if-eqz v3, :cond_4c

    .line 855
    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    move v8, v1

    if-eqz v8, :cond_64

    .line 857
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->notification_quick_reply_action:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-static {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1500(Landroid/app/Notification$Builder;Landroid/app/Notification;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->saveQuickReplyTitle(Ljava/lang/String;)V

    .line 862
    :cond_64
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsLowPriority:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mIsChildInGroup:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1600(ILandroid/app/Notification$Builder;ZZZZLandroid/content/Context;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object v0

    .line 886
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setDisableExpandableWhenKeyguard(Z)V

    .line 889
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 890
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v8

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 891
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getExistingSmartRepliesAndActions()Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object v9

    move-object v3, v0

    move-object v7, p1

    .line 889
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->access$1700(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_97} :catch_98

    return-object v0

    :catch_98
    move-exception p1

    .line 893
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 784
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object p0

    return-object p0
.end method

.method public getReInflateFlags()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 833
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    return p0
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .registers 3

    .line 936
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .registers 4

    .line 942
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->onInflationTaskFinished()V

    .line 943
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onNotificationUpdated()V

    .line 944
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 948
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->purgeCache()V

    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V
    .registers 10

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_17

    .line 901
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mInflateSynchronously:Z

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCachedContentViews:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object v2, p1

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->apply(ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILandroid/util/ArrayMap;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;)Landroid/os/CancellationSignal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    goto :goto_1a

    .line 904
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    :goto_1a
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 784
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    return-void
.end method

.method public supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .registers 3

    .line 928
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;

    if-eqz v0, :cond_d

    .line 930
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->mReInflateFlags:I

    :cond_d
    return-void
.end method

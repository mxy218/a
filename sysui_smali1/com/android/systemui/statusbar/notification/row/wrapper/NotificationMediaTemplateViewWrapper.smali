.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "NotificationMediaTemplateViewWrapper.java"


# instance fields
.field private mActions:Landroid/view/View;

.field private mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsViewVisible:Z

.field private mMediaCallback:Landroid/media/session/MediaController$Callback;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnPreDrawListenerRegistered:Z

.field protected final mOnUpdateTimerTick:Ljava/lang/Runnable;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarElapsedTime:Landroid/widget/TextView;

.field private mSeekBarTimer:Ljava/util/Timer;

.field private mSeekBarTotalTime:Landroid/widget/TextView;

.field private mSeekBarView:Landroid/view/View;

.field protected mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mVisibilityListener:Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 4

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 60
    sget-object p2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x0

    .line 66
    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mDuration:J

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mOnPreDrawListenerRegistered:Z

    .line 76
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 96
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mVisibilityListener:Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    .line 115
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$3;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 127
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    .line 163
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$5;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 345
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mOnUpdateTimerTick:Ljava/lang/Runnable;

    .line 176
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    .line 177
    const-class p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 178
    const-class p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/logging/MetricsLogger;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 180
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    instance-of p2, p1, Lcom/android/internal/widget/MediaNotificationView;

    if-eqz p2, :cond_68

    .line 181
    check-cast p1, Lcom/android/internal/widget/MediaNotificationView;

    .line 182
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mVisibilityListener:Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/MediaNotificationView;->addVisibilityListener(Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_68
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/session/MediaController;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/widget/SeekBar;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/view/View$OnAttachStateChangeListener;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;Landroid/media/session/PlaybackState;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->updatePlaybackUi(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/MediaMetadata;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->updateDuration()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->removeOnPreDrawListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/os/Handler;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->addOnPreDrawListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;I)Landroid/metrics/LogMaker;
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;Z)Z
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mIsViewVisible:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Ljava/util/Timer;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/view/View;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->startTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->clearTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mVisibilityListener:Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    return-object p0
.end method

.method private addOnPreDrawListener()V
    .registers 2

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mOnPreDrawListenerRegistered:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mOnPreDrawListenerRegistered:Z

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_12
    return-void
.end method

.method private canSeekMedia(Landroid/media/session/PlaybackState;)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 320
    :cond_4
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_12

    const/4 p0, 0x1

    :cond_12
    return p0
.end method

.method private clearTimer()V
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTimer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    .line 296
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTimer:Ljava/util/Timer;

    .line 300
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->removeOnPreDrawListener()V

    return-void
.end method

.method private millisecondsToTimeString(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x3e8

    .line 379
    div-long/2addr p1, v0

    .line 380
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private newLog(I)Landroid/metrics/LogMaker;
    .registers 4

    .line 439
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 441
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6cf

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 443
    invoke-virtual {p1, p0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private newLog(II)Landroid/metrics/LogMaker;
    .registers 5

    .line 451
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 452
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6cf

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 453
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 454
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 455
    invoke-virtual {p1, p0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private removeOnPreDrawListener()V
    .registers 5

    .line 287
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mOnPreDrawListenerRegistered:Z

    if-eqz v0, :cond_1b

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mOnUpdateTimerTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mOnPreDrawListenerRegistered:Z

    :cond_1b
    return-void
.end method

.method private resolveViews()V
    .registers 10

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mActions:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mIsViewVisible:Z

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.mediaSession"

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getShowCompactMediaSeekbar()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v0, :cond_195

    .line 195
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "media"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    if-nez v1, :cond_45

    goto/16 :goto_195

    .line 204
    :cond_45
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaController:Landroid/media/session/MediaController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    goto :goto_58

    :cond_56
    move v0, v3

    goto :goto_6b

    .line 205
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_61

    .line 206
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v5}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 208
    :cond_61
    new-instance v1, Landroid/media/session/MediaController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaController:Landroid/media/session/MediaController;

    move v0, v4

    .line 212
    :goto_6b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v1, :cond_ce

    const-string v5, "android.media.metadata.DURATION"

    .line 214
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_b0

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    const/4 v3, 0x2

    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_a0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->clearTimer()V

    goto :goto_af

    .line 221
    :cond_a0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    if-nez v1, :cond_af

    if-eqz v0, :cond_af

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_af
    :goto_af
    return-void

    .line 227
    :cond_b0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_ce

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->updateDuration()V

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->startTimer()V

    .line 237
    :cond_ce
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 238
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_18f

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    const v1, 0x109009b

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 242
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    const v1, 0x1020377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/systemui/R$dimen;->notification_media_seek_bar_padding_top:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 249
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->notification_media_seek_bar_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 250
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v0, v2, v1, v5}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    const v1, 0x1020375

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarElapsedTime:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    const v1, 0x102037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTotalTime:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTimer:Ljava/util/Timer;

    if-nez v0, :cond_18f

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_17f

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->canSeekMedia(Landroid/media/session/PlaybackState;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->newLog(II)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    goto :goto_182

    .line 261
    :cond_17f
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->setScrubberVisible(Z)V

    .line 263
    :goto_182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->updateDuration()V

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->startTimer()V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 268
    :cond_18f
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->updateSeekBarTint(Landroid/view/View;)V

    return-void

    .line 196
    :cond_195
    :goto_195
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarView:Landroid/view/View;

    if-eqz p0, :cond_19c

    .line 197
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_19c
    return-void
.end method

.method private setScrubberVisible(Z)V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_b

    goto :goto_29

    .line 329
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_16

    const/16 v1, 0xff

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->newLog(II)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_29
    :goto_29
    return-void
.end method

.method private startTimer()V
    .registers 2

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->clearTimer()V

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mIsViewVisible:Z

    if-eqz v0, :cond_a

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->addOnPreDrawListener()V

    :cond_a
    return-void
.end method

.method private updateDuration()V
    .registers 6

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_27

    const-string v1, "android.media.metadata.DURATION"

    .line 336
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 337
    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mDuration:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_27

    .line 338
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mDuration:J

    .line 339
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mDuration:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 340
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTotalTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->millisecondsToTimeString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    return-void
.end method

.method private updatePlaybackUi(Landroid/media/session/PlaybackState;)V
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarElapsedTime:Landroid/widget/TextView;

    if-nez v0, :cond_9

    goto :goto_23

    .line 369
    :cond_9
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    .line 370
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 372
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->millisecondsToTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->canSeekMedia(Landroid/media/session/PlaybackState;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->setScrubberVisible(Z)V

    :cond_23
    :goto_23
    return-void
.end method

.method private updateSeekBarTint(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 397
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 401
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result p1

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBarTotalTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    const/high16 v2, 0x3fc00000  # 1.5f

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 406
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    const/16 v0, 0xc0

    .line 408
    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    const/16 v0, 0x80

    .line 410
    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 411
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public isDimmable()Z
    .registers 1

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->resolveViews()V

    .line 389
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public setRemoved()V
    .registers 3

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->clearTimer()V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_c

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mMediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 309
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/internal/widget/MediaNotificationView;

    if-eqz v1, :cond_20

    .line 310
    check-cast v0, Lcom/android/internal/widget/MediaNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mVisibilityListener:Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MediaNotificationView;->removeVisibilityListener(Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mAttachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_20
    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method protected updateTransformedTypes()V
    .registers 3

    .line 417
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->mActions:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 419
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_d
    return-void
.end method

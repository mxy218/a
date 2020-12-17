.class public Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "CornerAlphaOptimizedImageButton.java"

# interfaces
.implements Lcom/meizu/common/TimeTickManager$Callback;


# static fields
.field private static MAX_NOTIFICATION_COUNT:I = 0x63

.field private static ONE_DAY_MILLISECOND:J = 0x5265c00L

.field private static TAG:Ljava/lang/String; = "CornerAlphaOptimizedImageButton"

.field private static sXfermode:Landroid/graphics/Xfermode;


# instance fields
.field private AUTO_CLEAR_SETTING:Z

.field private CLEAR_DAY_MILLISECOND:J

.field private NOTIFICATION_READ:Ljava/lang/String;

.field private NOTIFICATION_UNREAD:Ljava/lang/String;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mCurrentPowerMode:I

.field private mEarliestTime:J

.field private mFilterPanelShow:Z

.field private mNotificationNumOffsetX:I

.field private mNotificationNumOffsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mShowUnreadNotificationCounts:Z

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mToalNotificationCounts:I

.field private mUnreadNotificationCounts:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->sXfermode:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 53
    iput p2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    .line 63
    sget-wide v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->ONE_DAY_MILLISECOND:J

    iput-wide v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->CLEAR_DAY_MILLISECOND:J

    const/16 v0, 0x18

    .line 67
    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetX:I

    const/16 v0, 0x20

    .line 68
    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetY:I

    .line 69
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    .line 70
    iput p2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mToalNotificationCounts:I

    const-string/jumbo v0, "unread"

    .line 71
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_UNREAD:Ljava/lang/String;

    const-string v0, "read"

    .line 72
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_READ:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mCurrentPowerMode:I

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->AUTO_CLEAR_SETTING:Z

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41000000  # 8.0f

    .line 81
    invoke-static {v0, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40a00000  # 5.0f

    .line 85
    invoke-static {v0, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->sXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const-string v0, "sans-serif-medium"

    .line 89
    invoke-static {v0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->filter_num_offset_x:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetX:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->filter_num_offset_y:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetY:I

    return-void
.end method

.method private clearNotification()V
    .registers 15

    .line 195
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_f5

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 199
    iget-wide v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    cmp-long v7, v5, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1e

    sub-long v5, v3, v5

    iget-wide v10, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->CLEAR_DAY_MILLISECOND:J

    cmp-long v5, v5, v10

    if-lez v5, :cond_68

    .line 201
    :cond_1e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v8

    :goto_24
    if-ge v6, v0, :cond_48

    .line 203
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 204
    instance-of v10, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v10, :cond_45

    .line 205
    check-cast v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 206
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v10

    sub-long v10, v3, v10

    .line 207
    iget-wide v12, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->CLEAR_DAY_MILLISECOND:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_45

    .line 208
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 212
    :cond_48
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 214
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 215
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_52

    :cond_66
    move v0, v9

    goto :goto_69

    :cond_68
    move v0, v8

    .line 219
    :goto_69
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 220
    sget v4, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    if-le v3, v4, :cond_bd

    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v8

    :goto_79
    if-ge v5, v3, :cond_8d

    .line 223
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 224
    instance-of v7, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v7, :cond_8a

    .line 225
    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 228
    :cond_8d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sget v6, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    if-le v5, v6, :cond_bd

    .line 231
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 232
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v5, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;

    invoke-direct {v5, p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton$1;-><init>(Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;)V

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v4, v8

    .line 244
    :goto_aa
    sget v5, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    sub-int v5, v3, v5

    if-ge v4, v5, :cond_bc

    .line 245
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification(Landroid/service/notification/StatusBarNotification;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    :cond_bc
    move v0, v9

    :cond_bd
    if-nez v0, :cond_c5

    .line 249
    iget-wide v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_f7

    .line 250
    :cond_c5
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 251
    iput-wide v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    if-lez v0, :cond_f7

    :goto_cf
    if-ge v8, v0, :cond_f7

    .line 254
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 255
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_f2

    .line 256
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 257
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    .line 259
    iget-wide v5, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    cmp-long v7, v5, v3

    if-gez v7, :cond_f0

    cmp-long v7, v5, v1

    if-eqz v7, :cond_f0

    move-wide v3, v5

    .line 260
    :cond_f0
    iput-wide v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    :cond_f2
    add-int/lit8 v8, v8, 0x1

    goto :goto_cf

    .line 266
    :cond_f5
    iput-wide v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mEarliestTime:J

    :cond_f7
    return-void
.end method

.method private clearNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 8

    .line 271
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    .line 275
    :try_start_c
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 276
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x3

    .line 275
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClearForReason(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p0

    .line 278
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method private getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .registers 7

    const/4 p0, 0x0

    if-eqz p2, :cond_22

    .line 335
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 336
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 337
    new-array v1, v0, [F

    .line 338
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move p1, p0

    :goto_13
    if-ge p0, v0, :cond_21

    .line 340
    aget p2, v1, p0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_13

    :cond_21
    move p0, p1

    :cond_22
    return p0
.end method

.method private loadSetting()V
    .registers 5

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mShowUnreadNotificationCounts:Z

    const-wide/16 v0, 0x3

    .line 187
    sget-wide v2, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->ONE_DAY_MILLISECOND:J

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->CLEAR_DAY_MILLISECOND:J

    .line 189
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_11

    .line 190
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->updateNotificationCounts()V

    :cond_11
    return-void
.end method

.method private updateResource()V
    .registers 3

    .line 356
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    if-eqz v0, :cond_a

    .line 357
    sget v0, Lcom/android/systemui/R$drawable;->filter_notification_on:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_41

    .line 359
    :cond_a
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mShowUnreadNotificationCounts:Z

    if-eqz v0, :cond_32

    .line 360
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    sget v1, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    if-le v0, v1, :cond_1a

    .line 361
    sget v0, Lcom/android/systemui/R$drawable;->filter_notification_off_unread_more:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_41

    :cond_1a
    const/16 v1, 0x9

    if-le v0, v1, :cond_24

    .line 363
    sget v0, Lcom/android/systemui/R$drawable;->filter_notification_off_unread_double_num:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_41

    :cond_24
    if-lez v0, :cond_2c

    .line 365
    sget v0, Lcom/android/systemui/R$drawable;->filter_notification_off_unread_single_num:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_41

    .line 367
    :cond_2c
    sget v0, Lcom/android/systemui/R$drawable;->filter_notification_off:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_41

    .line 370
    :cond_32
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    if-lez v0, :cond_3c

    .line 371
    sget v0, Lcom/android/systemui/R$drawable;->filter_notification_off_unread_dot:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_41

    .line 373
    :cond_3c
    sget v0, Lcom/android/systemui/R$drawable;->filter_notification_off:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 377
    :goto_41
    invoke-virtual {p0}, Landroid/widget/ImageButton;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 106
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->draw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getTotalNotificationCounts()I
    .registers 1

    .line 323
    iget p0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mToalNotificationCounts:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 164
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    const-string/jumbo v0, "statusbar"

    .line 166
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 167
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/TimeTickManager;->getInstance(Landroid/content/Context;)Lcom/meizu/common/TimeTickManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/common/TimeTickManager;->addCallback(Lcom/meizu/common/TimeTickManager$Callback;)V

    .line 171
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->loadSetting()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 155
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 156
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/TimeTickManager;->getInstance(Landroid/content/Context;)Lcom/meizu/common/TimeTickManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/common/TimeTickManager;->removeCallback(Lcom/meizu/common/TimeTickManager$Callback;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 114
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mShowUnreadNotificationCounts:Z

    if-eqz v0, :cond_ab

    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    if-nez v0, :cond_ab

    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    if-lez v0, :cond_ab

    sget v1, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->MAX_NOTIFICATION_COUNT:I

    if-gt v0, v1, :cond_ab

    .line 120
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/KeyguardThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/KeyguardThemeUtils;->usedSystemUITheme()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_52

    .line 121
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->filter_num_offset_x_thirdpart_theme:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetX:I

    .line 123
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_45

    .line 124
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->filter_num_offset_y_landscape_thirdpart_theme:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4f

    .line 125
    :cond_45
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->filter_num_offset_y_thirdpart_theme:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_4f
    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetY:I

    goto :goto_81

    .line 127
    :cond_52
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->filter_num_offset_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetX:I

    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_75

    .line 130
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->filter_num_offset_y_landscape:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_7f

    .line 131
    :cond_75
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->filter_num_offset_y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_7f
    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetY:I

    .line 135
    :goto_81
    iget v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    .line 136
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    iget v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetX:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    .line 141
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-direct {p0, v3, v4}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    div-int/2addr v3, v1

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 142
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mNotificationNumOffsetY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mPaint:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_ab
    return-void
.end method

.method public onTimeTick(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 328
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p1, :cond_7

    .line 329
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification()V

    :cond_7
    return-void
.end method

.method public setShowFilterPanel(Z)V
    .registers 3

    .line 347
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    if-eq v0, p1, :cond_d

    .line 348
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    .line 349
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p1, :cond_d

    .line 350
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->updateNotificationCounts()V

    :cond_d
    return-void
.end method

.method public setStackScrollLayout(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .registers 5

    .line 149
    sget-object v0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStackScrollLayout: scrollerNull = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public updateNotificationCounts()V
    .registers 6

    .line 283
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyShadeView()Lcom/android/systemui/statusbar/EmptyShadeView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 286
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-ne v3, v4, :cond_29

    .line 287
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_29

    .line 288
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result v1

    if-nez v1, :cond_29

    add-int/lit8 v0, v0, -0x1

    .line 289
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 291
    :cond_29
    iput v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mToalNotificationCounts:I

    .line 292
    iput v2, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    .line 293
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_33
    if-ge v2, v0, :cond_88

    .line 295
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 296
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_85

    .line 297
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_85

    .line 298
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mFilterPanelShow:Z

    if-eqz v3, :cond_53

    .line 299
    sget v3, Lcom/android/systemui/R$id;->filter_panel:I

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_READ:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_85

    .line 301
    :cond_53
    sget v3, Lcom/android/systemui/R$id;->filter_panel:I

    .line 302
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 303
    sget v3, Lcom/android/systemui/R$id;->filter_panel:I

    iget-object v4, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_UNREAD:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 304
    iget v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    goto :goto_85

    .line 305
    :cond_6f
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->NOTIFICATION_UNREAD:Ljava/lang/String;

    sget v4, Lcom/android/systemui/R$id;->filter_panel:I

    .line 306
    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 307
    iget v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mUnreadNotificationCounts:I

    :cond_85
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 312
    :cond_88
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_8f

    .line 313
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->clearNotification()V

    .line 315
    :cond_8f
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/notification/CornerAlphaOptimizedImageButton;->updateResource()V

    return-void
.end method

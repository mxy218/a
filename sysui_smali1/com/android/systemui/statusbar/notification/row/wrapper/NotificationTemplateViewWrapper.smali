.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field protected mActionsContainer:Landroid/view/View;

.field private mCancelledPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeight:I

.field private final mFullHeaderTranslation:I

.field private mHeaderTranslation:F

.field private mMinHeightHint:I

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInputHistory:Landroid/view/View;

.field private mReplyAction:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 5

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 61
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    .line 74
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance p3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;)V

    const/4 v0, 0x2

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x105019a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x105019e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p2, p3

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$dimen;->notification_content_margin_bottom:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;)Lcom/android/systemui/UiOffloadThread;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-object p0
.end method

.method private blendColorWithBackground(IF)I
    .registers 5

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 227
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 226
    invoke-static {p2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->resolveBackgroundColor()I

    move-result p0

    .line 226
    invoke-static {p1, p0}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method private isOnView(Landroid/view/View;FF)Z
    .registers 7

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_6
    if-eqz v0, :cond_22

    .line 277
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_22

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 280
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_6

    .line 283
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    float-to-int p1, p2

    float-to-int p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$performOnPendingIntentCancellation$4(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .registers 2

    .line 249
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method

.method private performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 6

    const v0, 0x10203a3

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_c

    return-void

    .line 236
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 237
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_43

    .line 239
    :cond_18
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$JW7SqyfmhP6HCTJ8F1p53b90n6s;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$JW7SqyfmhP6HCTJ8F1p53b90n6s;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 245
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    if-nez p2, :cond_2b

    .line 246
    const-class p2, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/UiOffloadThread;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 248
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 249
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$qLtzjAQEVXJmd7CTS0Q7hmNVWkU;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$qLtzjAQEVXJmd7CTS0Q7hmNVWkU;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {p2, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 251
    :cond_3b
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_43
    return-void
.end method

.method private resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_1e

    .line 149
    sget v1, Lcom/android/systemui/statusbar/notification/ImageTransformState;->ICON_TAG:I

    .line 150
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 149
    invoke-virtual {v0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 152
    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 153
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020475

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 154
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 155
    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4a

    .line 156
    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_4d

    :cond_4a
    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 161
    :goto_4d
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 163
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x10203e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    .line 164
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x102036e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updatePendingIntentCancellations()V

    return-void
.end method

.method private updateActionOffset()V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 341
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    .line 345
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->getHeaderTranslation(Z)I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    .line 344
    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1f
    return-void
.end method

.method private updatePendingIntentCancellations()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_1e

    .line 171
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1e

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 174
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$JRq0wlJLDK40PaCOgvvnny6lB0w;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$JRq0wlJLDK40PaCOgvvnny6lB0w;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/widget/Button;)V

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 197
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$Znytf0R_oPxyrIENjI1T5rfvZf4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$Znytf0R_oPxyrIENjI1T5rfvZf4;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_30
    return-void
.end method


# virtual methods
.method public disallowSingleClick(FF)Z
    .registers 4

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->isOnView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->isOnView(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    return p0

    .line 272
    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->disallowSingleClick(FF)Z

    move-result p0

    return p0
.end method

.method public getExtraMeasureHeight()I
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_9

    .line 366
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getExtraMeasureHeight()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 368
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_27

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->remote_input_history_extra_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_27
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getExtraMeasureHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getHeaderTranslation(Z)I
    .registers 2

    if-eqz p1, :cond_5

    .line 351
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    goto :goto_8

    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    float-to-int p0, p0

    :goto_8
    return p0
.end method

.method public synthetic lambda$performOnPendingIntentCancellation$2$NotificationTemplateViewWrapper(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .registers 3

    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$performOnPendingIntentCancellation$3$NotificationTemplateViewWrapper(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V
    .registers 5

    .line 240
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$updatePendingIntentCancellations$0$NotificationTemplateViewWrapper(Landroid/widget/Button;)V
    .registers 8

    .line 175
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v2

    .line 182
    array-length v3, v2

    new-array v3, v3, [I

    .line 183
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105018f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 185
    :goto_22
    array-length v5, v2

    if-ge v0, v5, :cond_30

    .line 186
    aget v5, v2, v0

    .line 187
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->blendColorWithBackground(IF)I

    move-result v5

    .line 188
    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 190
    :cond_30
    new-instance p0, Landroid/content/res/ColorStateList;

    .line 191
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v0

    invoke-direct {p0, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 192
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3c
    return-void
.end method

.method public synthetic lambda$updatePendingIntentCancellations$1$NotificationTemplateViewWrapper()V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/PorterDuffColorFilter;

    .line 210
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    if-eqz v1, :cond_43

    .line 213
    invoke-virtual {v1}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v3

    .line 214
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->blendColorWithBackground(IF)I

    move-result p0

    .line 215
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_48

    .line 217
    :cond_43
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_48
    :goto_48
    return-void
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 4

    .line 291
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V

    .line 292
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    .line 294
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getHeaderVisibleAmount()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->setHeaderVisibleAmount(F)V

    :cond_1b
    return-void
.end method

.method public setContentHeight(II)V
    .registers 3

    .line 322
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setContentHeight(II)V

    .line 324
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mContentHeight:I

    .line 325
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mMinHeightHint:I

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateActionOffset()V

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .registers 3

    .line 356
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setAlpha(F)V

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    .line 358
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mFullHeaderTranslation:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    .line 359
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mHeaderTranslation:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .registers 4

    .line 331
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    if-eqz p2, :cond_17

    .line 334
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz p0, :cond_17

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method protected updateTransformedTypes()V
    .registers 4

    .line 301
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 303
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 306
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 310
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    .line 311
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 314
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2b

    .line 315
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_2b
    return-void
.end method

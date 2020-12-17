.class public abstract Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# instance fields
.field protected mBackgroundColor:I

.field protected final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 80
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 81
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    return-void
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .registers 5

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102045e

    if-ne v0, v1, :cond_80

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bigPicture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 59
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bigText"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 61
    :cond_2d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bigMediaNarrow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_7a

    .line 63
    :cond_46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "messaging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 67
    :cond_58
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    .line 68
    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 71
    :cond_74
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 62
    :cond_7a
    :goto_7a
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 72
    :cond_80
    instance-of v0, p1, Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_8a

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 75
    :cond_8a
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0
.end method


# virtual methods
.method childrenNeedInversion(ILandroid/view/ViewGroup;)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 165
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    move-result v1

    .line 166
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_18

    .line 167
    invoke-static {v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p1

    .line 168
    invoke-static {p1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    :cond_18
    move p1, v0

    .line 170
    :goto_19
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_49

    .line 171
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 172
    instance-of v3, v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    if-eqz v3, :cond_39

    .line 173
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    .line 174
    invoke-static {v2, v1}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v5, 0x4008000000000000L  # 3.0

    cmpg-double v2, v2, v5

    if-gez v2, :cond_46

    return v4

    .line 177
    :cond_39
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_46

    .line 178
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->childrenNeedInversion(ILandroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_46

    return v4

    :cond_46
    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    :cond_49
    return v0
.end method

.method public disallowSingleClick(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method protected getBackgroundColor(Landroid/view/View;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 191
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 192
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_12

    .line 193
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    :cond_12
    return p0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomBackgroundColor()I
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    goto :goto_c

    :cond_a
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    :goto_c
    return p0
.end method

.method public getExtraMeasureHeight()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getHeaderTranslation(Z)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getMinLayoutHeight()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected invertViewLuminosity(Landroid/view/View;)V
    .registers 5

    .line 199
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 200
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 201
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 204
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    const/16 v2, 0x14

    new-array v2, v2, [F

    .line 205
    fill-array-data v2, :array_32

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 212
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    .line 213
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 214
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x2

    .line 215
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_32
    .array-data 4
        -0x40800000  # -1.0f
        0x0
        0x0
        0x0
        0x437f0000  # 255.0f
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public isDimmable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected needsInversion(ILandroid/view/View;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3

    .line 91
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateHeaderIconAndText(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/view/NotificationHeaderView;)V

    return-void
.end method

.method public onReinflated()V
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->shouldClearBackgroundOnReapply()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 97
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 101
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    return-void
.end method

.method protected resolveBackgroundColor()I
    .registers 2

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 290
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10601c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public setContentHeight(II)V
    .registers 3

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .registers 2

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .registers 2

    return-void
.end method

.method public setLegacy(Z)V
    .registers 2

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .registers 2

    return-void
.end method

.method public setRemoved()V
    .registers 1

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 271
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    const/4 p1, 0x4

    :goto_10
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public shouldClipToRounding(ZZ)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .registers 2

    .line 260
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 3

    .line 265
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .registers 3

    .line 254
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .registers 3

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .registers 3

    return-void
.end method

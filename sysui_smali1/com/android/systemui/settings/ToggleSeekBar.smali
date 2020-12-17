.class public Lcom/android/systemui/settings/ToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "ToggleSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;
    }
.end annotation


# instance fields
.field private mAccessibilityLabel:Ljava/lang/String;

.field private mDisableVerticalSeek:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mOnSeekBarTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

.field private mTouchSlop:I

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    .line 40
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTouchSlop:I

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->actInMzNightMode(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    .line 48
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTouchSlop:I

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->actInMzNightMode(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    .line 56
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTouchSlop:I

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->actInMzNightMode(I)V

    return-void
.end method

.method private onTouchEventExt(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 109
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    .line 112
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    if-eqz v0, :cond_70

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_6c

    const/4 v4, 0x1

    if-eq v3, v4, :cond_64

    const/4 v5, 0x2

    if-eq v3, v5, :cond_26

    const/4 v0, 0x3

    if-eq v3, v0, :cond_64

    goto :goto_70

    .line 123
    :cond_26
    iget v3, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchY:F

    sub-float v3, v0, v3

    .line 124
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3f

    .line 125
    iput v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchY:F

    .line 126
    iput v2, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    return v1

    .line 130
    :cond_3f
    iget v3, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTouchSlop:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4f

    goto :goto_70

    .line 134
    :cond_4f
    iput v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchY:F

    .line 135
    iput v2, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    if-nez v0, :cond_70

    .line 137
    iget-object v0, p0, Landroid/widget/SeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_60

    .line 138
    iget-object v0, p0, Landroid/widget/SeekBar;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 140
    :cond_60
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->onTrackingStarted()V

    goto :goto_70

    .line 146
    :cond_64
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    if-eqz v0, :cond_70

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->onTrackingStopped()V

    goto :goto_70

    .line 118
    :cond_6c
    iput v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchY:F

    .line 119
    iput v2, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mLastTouchX:F

    .line 153
    :cond_70
    :goto_70
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 154
    iget-boolean v2, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    if-eqz v2, :cond_88

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_8f

    .line 156
    iget-object p1, p0, Landroid/widget/SeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz p1, :cond_8f

    .line 157
    iget-object p0, p0, Landroid/widget/SeekBar;->mParent:Landroid/view/ViewParent;

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_8f

    .line 161
    :cond_88
    iget-boolean p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    if-eqz p1, :cond_8f

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSeekBar;->onTrackingStopped()V

    :cond_8f
    :goto_8f
    return v0
.end method

.method private onTrackingStarted()V
    .registers 2

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    .line 98
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mOnSeekBarTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    if-eqz p0, :cond_a

    .line 99
    invoke-interface {p0}, Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;->onStartTrackingTouch()V

    :cond_a
    return-void
.end method

.method private onTrackingStopped()V
    .registers 2

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mTracking:Z

    return-void
.end method


# virtual methods
.method public disableVerticalSeek(Z)V
    .registers 3

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 170
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mDisableVerticalSeek:Z

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 85
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 86
    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    if-eqz p0, :cond_a

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 64
    iget-object p1, p0, Landroid/widget/SeekBar;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p0

    .line 66
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return v1

    .line 69
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_23

    .line 70
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 75
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->onTouchEventExt(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAccessibilityLabel(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public setOnSeekBarTrackingListener(Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSeekBar;->mOnSeekBarTrackingListener:Lcom/android/systemui/settings/ToggleSeekBar$OnSeekBarTrackingListener;

    return-void
.end method

.class public Lcom/android/systemui/statusbar/StatusBarIconView;
.super Lcom/android/systemui/statusbar/AnimatedImageView;
.source "StatusBarIconView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final DOT_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_APPEAR_AMOUNT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/statusbar/StatusBarIconView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ANIMATION_DURATION_FAST:I

.field private mAlwaysScaleIcon:Z

.field private mAnimationStartColor:I

.field private final mBlocked:Z

.field private mCachedContrastBackgroundColor:I

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private final mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mContrastedDrawableColor:I

.field private mCurrentSetColor:I

.field private mDecorColor:I

.field private mDensity:I

.field private mDismissed:Z

.field private mDotAnimator:Landroid/animation/ObjectAnimator;

.field private mDotAppearAmount:F

.field private final mDotPaint:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private mDozeAmount:F

.field private final mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field private mDrawableColor:I

.field private mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mIconAppearAmount:F

.field private mIconAppearAnimator:Landroid/animation/ObjectAnimator;

.field private mIconColor:I

.field private mIconScale:F

.field private mIncreasedSize:Z

.field private mIsInShelf:Z

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field private mMatrix:[F

.field private mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mNightMode:Z

.field private mNotification:Landroid/service/notification/StatusBarNotification;

.field private mNumberBackground:Landroid/graphics/drawable/Drawable;

.field private mNumberPain:Landroid/graphics/Paint;

.field private mNumberText:Ljava/lang/String;

.field private mNumberX:I

.field private mNumberY:I

.field private mOnDismissListener:Ljava/lang/Runnable;

.field private mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

.field private mSlot:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStaticDotRadius:I

.field private mStatusBarDotFirstCircleX:F

.field private mStatusBarDotSecondCircleX:F

.field private mStatusBarDotThirdCircleX:F

.field private mStatusBarDotWidth:F

.field private mStatusBarIconDrawingSize:I

.field private mStatusBarIconDrawingSizeIncreased:I

.field private mStatusBarIconSize:I

.field private mSystemIconDefaultScale:F

.field private mSystemIconDesiredHeight:F

.field private mSystemIconIntrinsicHeight:F

.field private mVisibleState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$1;

    const-string v1, "iconAppearAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView$2;

    const-string v1, "dot_appear_amount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41700000  # 15.0f

    .line 77
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    const/high16 p2, 0x41880000  # 17.0f

    .line 78
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    .line 79
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDefaultScale:F

    const/16 p2, 0x64

    .line 80
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    const/4 p2, 0x1

    .line 115
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeIncreased:I

    .line 116
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 117
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    const/high16 v0, 0x3f800000  # 1.0f

    .line 129
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 130
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 133
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 134
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 144
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 145
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 154
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 303
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 304
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    .line 305
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V
    .registers 9

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41700000  # 15.0f

    .line 77
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    const/high16 v0, 0x41880000  # 17.0f

    .line 78
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    .line 79
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDefaultScale:F

    const/16 v0, 0x64

    .line 80
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->ANIMATION_DURATION_FAST:I

    const/4 v0, 0x1

    .line 115
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeIncreased:I

    .line 116
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    .line 117
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    const/high16 v1, 0x3f800000  # 1.0f

    .line 129
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 133
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 134
    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 144
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 145
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    .line 146
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$nRA4PFzS-KIqshXSve3PBqKMX7Q;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 154
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatusBarIconView: mSlot="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StatusBarIconView"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    .line 172
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    .line 173
    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    .line 174
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    .line 175
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 176
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    sget p4, Lcom/android/systemui/R$drawable;->notification_number_text_color:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 181
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 185
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 p2, 0x20

    if-ne p1, p2, :cond_a0

    goto :goto_a1

    :cond_a0
    move v0, v2

    :goto_a1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->initializeDecorColor()V

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/StatusBarIconView;I)I
    .registers 2

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 591
    :try_start_2
    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 592
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_2f

    :catch_b
    move-exception v1

    const-string v2, "StatusBarIconView"

    const-string v3, "Unable to recover builder"

    .line 594
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.appInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 598
    instance-of v2, v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2e

    .line 599
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 599
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2e
    move-object v1, v0

    .line 604
    :goto_2f
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 605
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 606
    iget-object p1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 609
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_48

    move-object v2, v3

    .line 611
    :cond_48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    move-object p1, v2

    goto :goto_58

    .line 612
    :cond_50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_58

    :cond_57
    move-object p1, v0

    .line 614
    :goto_58
    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_notification_icon:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 423
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    .line 428
    :cond_a
    iget-object p1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "StatusBarIconView"

    if-nez p1, :cond_24

    const-string p1, "getIcon: icon null"

    .line 432
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_third_app_notify:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_29

    :cond_24
    const-string v1, "getIcon: icon not null"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_29
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_scale_factor:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 441
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_43

    return-object p1

    .line 448
    :cond_43
    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v0
.end method

.method private getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 412
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private initializeDecorColor()V
    .registers 3

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_1a

    .line 628
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    if-eqz v1, :cond_10

    const v1, 0x10601c4

    goto :goto_13

    :cond_10
    const v1, 0x10601c5

    :goto_13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    :cond_1a
    return-void
.end method

.method private maybeUpdateIconScaleDimens()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAlwaysScaleIcon:Z

    if-eqz v0, :cond_9

    goto :goto_d

    .line 199
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleForSystemIcons()V

    goto :goto_10

    .line 197
    :cond_d
    :goto_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconScaleForNotifications()V

    :goto_10
    return-void
.end method

.method private reloadDimens()V
    .registers 4

    .line 268
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 269
    :goto_c
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 270
    sget v2, Lcom/android/systemui/R$dimen;->overflow_dot_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    .line 271
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconSize:I

    .line 272
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size_dark:I

    .line 273
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeIncreased:I

    .line 274
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size:I

    .line 275
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    if-eqz v0, :cond_37

    .line 277
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStaticDotRadius:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    :cond_37
    const v0, 0x1050214

    .line 279
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    const v0, 0x1050213

    .line 281
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    .line 283
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDesiredHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconIntrinsicHeight:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSystemIconDefaultScale:F

    .line 286
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_dot_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarDotWidth:F

    .line 287
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_dot_first_circle_x:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarDotFirstCircleX:F

    .line 288
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_dot_second_circle_x:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarDotSecondCircleX:F

    .line 289
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_dot_third_circle_x:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarDotThirdCircleX:F

    return-void
.end method

.method private runRunnable(Ljava/lang/Runnable;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 864
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method private setColorInternal(I)V
    .registers 2

    .line 658
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    .line 659
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    return-void
.end method

.method private setContentDescription(Landroid/app/Notification;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 567
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->contentDescForNotification(Landroid/content/Context;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 569
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method private updateAllowAnimation()V
    .registers 4

    .line 916
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_d

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_19

    .line 917
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AnimatedImageView;->setAllowAnimation(Z)V

    :cond_19
    return-void
.end method

.method private updateContrastedStaticColor()V
    .registers 5

    .line 740
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_f

    .line 741
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return-void

    .line 745
    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 746
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v1, v0}, Lcom/android/internal/util/ContrastColorUtil;->satisfiesTextContrast(II)Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 749
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v2, 0x1

    .line 752
    aget v1, v1, v2

    const v3, 0x3e4ccccd  # 0.2f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2c

    const/4 v0, 0x0

    .line 755
    :cond_2c
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v1}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 756
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    .line 759
    :cond_3b
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return-void
.end method

.method private updateDecorColor()V
    .registers 4

    .line 635
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_20

    .line 637
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    .line 640
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_20
    return-void
.end method

.method private updateDrawable(Z)Z
    .registers 5

    const-string v0, "StatusBarIconView"

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 390
    :cond_8
    :try_start_8
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_c} :catch_3c

    if-nez v1, :cond_31

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No icon for slot "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_31
    if-eqz p1, :cond_37

    const/4 p1, 0x0

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_37
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    return p0

    .line 392
    :catch_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOM while inflating "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for slot "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private updateIconColor()V
    .registers 5

    .line 663
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-eqz v0, :cond_3c

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_17

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 665
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    .line 666
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 668
    :cond_17
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    const v2, 0x3f2b851f  # 0.67f

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    mul-float/2addr v3, v2

    invoke-static {v1, v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateTintMatrix([FIF)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;->setColorMatrixArray([F)V

    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_43

    .line 675
    :cond_3c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    :goto_43
    return-void
.end method

.method private updateIconScaleForNotifications()V
    .registers 2

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIncreasedSize:Z

    const/high16 v0, 0x3f800000  # 1.0f

    .line 209
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updatePivot()V

    return-void
.end method

.method private updateIconScaleForSystemIcons()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    .line 226
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    return-void
.end method

.method private updatePivot()V
    .registers 5

    .line 958
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 959
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method

.method private static updateTintMatrix([FIF)V
    .registers 5

    const/4 v0, 0x0

    .line 684
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 685
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x4

    aput v0, p0, v1

    .line 686
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x9

    aput v0, p0, v1

    .line 687
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xe

    aput v0, p0, v1

    .line 688
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p1, v0

    add-float/2addr p1, p2

    const/16 p2, 0x12

    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method protected debug(I)V
    .registers 4

    .line 527
    invoke-super {p0, p1}, Landroid/widget/ImageView;->debug(I)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/widget/ImageView;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/widget/ImageView;->debugIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "icon="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 6

    const/4 p0, 0x1

    if-ne p1, p2, :cond_4

    return p0

    .line 326
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return v2

    .line 327
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1b

    return v2

    .line 331
    :cond_1b
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 329
    :cond_28
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p2

    if-ne p1, p2, :cond_41

    goto :goto_42

    :cond_41
    move p0, v2

    :goto_42
    return p0
.end method

.method public executeOnLayout(Ljava/lang/Runnable;)V
    .registers 2

    .line 963
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method getContrastedStaticDrawableColor(I)I
    .registers 3

    .line 732
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    if-eq v0, p1, :cond_9

    .line 733
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCachedContrastBackgroundColor:I

    .line 734
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 736
    :cond_9
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mContrastedDrawableColor:I

    return p0
.end method

.method public getDotAppearAmount()F
    .registers 1

    .line 899
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    return p0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 930
    invoke-super {p0, p1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 931
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 932
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result p0

    .line 933
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 934
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 935
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 936
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getIconAppearAmount()F
    .registers 1

    .line 876
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    return p0
.end method

.method public getIconScale()F
    .registers 1

    .line 246
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    return p0
.end method

.method public getIconScaleIncreased()F
    .registers 2

    .line 242
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSizeIncreased:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarIconDrawingSize:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getNotification()Landroid/service/notification/StatusBarNotification;
    .registers 1

    .line 580
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getSlot()Ljava/lang/String;
    .registers 1

    .line 584
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Icon;
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getStaticDrawableColor()I
    .registers 1

    .line 721
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    return p0
.end method

.method public getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    return-object p0
.end method

.method public getVisibleState()I
    .registers 1

    .line 880
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isIconBlocked()Z
    .registers 1

    .line 996
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    return p0
.end method

.method public isIconVisible()Z
    .registers 1

    .line 991
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public synthetic lambda$new$0$StatusBarIconView(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 148
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 148
    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result p1

    .line 150
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    return-void
.end method

.method public synthetic lambda$setDozing$1$StatusBarIconView(Ljava/lang/Float;)V
    .registers 2

    .line 908
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozeAmount:F

    .line 909
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    .line 910
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIconColor()V

    .line 911
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateAllowAnimation()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 251
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 252
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 253
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    if-eq v0, v1, :cond_14

    .line 254
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDensity:I

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->reloadDimens()V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    .line 259
    :cond_14
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 261
    :goto_1f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    if-eq p1, v0, :cond_25

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNightMode:Z

    :cond_25
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 983
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    .line 984
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 985
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 986
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 479
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_28

    .line 480
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 481
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    mul-float v3, v0, v2

    mul-float/2addr v0, v2

    .line 482
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 481
    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 483
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 487
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    .line 488
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 491
    :cond_3c
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9e

    .line 493
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    .line 494
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v4, v2, v3

    const/high16 v5, 0x40000000  # 2.0f

    if-gtz v4, :cond_5b

    .line 497
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    mul-float/2addr v3, v2

    div-float/2addr v3, v5

    goto :goto_6d

    :cond_5b
    sub-float/2addr v2, v3

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    .line 506
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotRadius:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    invoke-static {v3, v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    div-float v3, v2, v5

    .line 510
    :goto_6d
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 516
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarDotFirstCircleX:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 517
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarDotSecondCircleX:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 518
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mStatusBarDotThirdCircleX:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 521
    :cond_9e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDraw: mDotAppearAmount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarIconView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 457
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 458
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p0, :cond_e

    .line 459
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    :cond_e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 949
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 950
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_d

    .line 951
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 952
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 954
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updatePivot()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    .line 473
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRtlPropertiesChanged(I)V

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 466
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    :cond_a
    return-void
.end method

.method placeNumber()V
    .registers 9

    .line 534
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-le v1, v0, :cond_25

    .line 537
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    .line 540
    :cond_25
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_32
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 545
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 546
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    .line 547
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 548
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberPain:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 549
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    .line 550
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 551
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 552
    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    if-ge v5, v0, :cond_6e

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    .line 556
    :cond_6e
    iget v0, v3, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v0

    sub-int v0, v5, v0

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberX:I

    .line 557
    iget v0, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    .line 558
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    if-ge v0, v6, :cond_90

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 561
    :cond_90
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v2, v6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, v3

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberY:I

    .line 562
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    sub-int v3, v1, v5

    sub-int v0, v2, v0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public set(Lcom/android/internal/statusbar/StatusBarIcon;)Z
    .registers 9

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->equalIcons(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-eqz v0, :cond_1f

    .line 341
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v4, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    if-ne v3, v4, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 343
    :goto_20
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v4, :cond_2c

    iget-boolean v4, v4, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-boolean v5, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-ne v4, v5, :cond_2c

    move v4, v1

    goto :goto_2d

    :cond_2c
    move v4, v2

    .line 345
    :goto_2d
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v5, :cond_39

    iget v5, v5, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-ne v5, v6, :cond_39

    move v5, v1

    goto :goto_3a

    :cond_39
    move v5, v2

    .line 347
    :goto_3a
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 348
    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    if-nez v0, :cond_57

    .line 350
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    move-result v0

    if-nez v0, :cond_4f

    return v2

    .line 352
    :cond_4f
    sget v0, Lcom/android/systemui/R$id;->icon_is_grayscale:I

    invoke-virtual {p0, v0, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    :cond_57
    if-nez v3, :cond_5e

    .line 357
    iget v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_5e
    if-nez v5, :cond_93

    .line 361
    iget v0, p1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-lez v0, :cond_8c

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$bool;->config_statusBarShowNumber:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_88

    .line 364
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$drawable;->ic_notification_overlay:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 367
    :cond_88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->placeNumber()V

    goto :goto_90

    .line 369
    :cond_8c
    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberBackground:Landroid/graphics/drawable/Drawable;

    .line 370
    iput-object v6, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNumberText:Ljava/lang/String;

    .line 372
    :goto_90
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_93
    if-nez v4, :cond_a3

    .line 375
    iget-boolean p1, p1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz p1, :cond_9e

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mBlocked:Z

    if-nez p1, :cond_9e

    goto :goto_a0

    :cond_9e
    const/16 v2, 0x8

    :goto_a0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :cond_a3
    return v1
.end method

.method public setDecorColor(I)V
    .registers 2

    .line 622
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDecorColor:I

    .line 623
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDecorColor()V

    return-void
.end method

.method public setDismissed()V
    .registers 2

    const/4 v0, 0x1

    .line 967
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDismissed:Z

    .line 968
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnDismissListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_a

    .line 969
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public setDotAppearAmount(F)V
    .registers 3

    .line 884
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 885
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    .line 886
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_b
    return-void
.end method

.method public setDozing(ZZJ)V
    .registers 12

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$x3AGEt-5vRmE-DqrCK9ien5Lp2M;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$x3AGEt-5vRmE-DqrCK9ien5Lp2M;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->setDozing(Ljava/util/function/Consumer;ZZJLandroid/view/View;)V

    return-void
.end method

.method public setIconAppearAmount(F)V
    .registers 3

    .line 869
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 870
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    .line 871
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_b
    return-void
.end method

.method public setIconColor(IZ)V
    .registers 5

    .line 692
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    if-eq v0, p1, :cond_4c

    .line 693
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    .line 695
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 697
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mCurrentSetColor:I

    if-ne v0, p1, :cond_12

    return-void

    :cond_12
    if-eqz p2, :cond_49

    if-eqz v0, :cond_49

    .line 701
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mAnimationStartColor:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 702
    fill-array-data p1, :array_4e

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 703
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 704
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 705
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 706
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/StatusBarIconView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/StatusBarIconView$3;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 713
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4c

    .line 715
    :cond_49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    :cond_4c
    :goto_4c
    return-void

    nop

    :array_4e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setIncreasedSize(Z)V
    .registers 2

    .line 1000
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIncreasedSize:Z

    .line 1001
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    return-void
.end method

.method public setIsInShelf(Z)V
    .registers 2

    .line 940
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIsInShelf:Z

    return-void
.end method

.method public setNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_b

    .line 296
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setContentDescription(Landroid/app/Notification;)V

    .line 298
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->maybeUpdateIconScaleDimens()V

    return-void
.end method

.method public setOnDismissListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 978
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnDismissListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;)V
    .registers 2

    .line 903
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .registers 2

    .line 650
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    .line 651
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorInternal(I)V

    .line 652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateContrastedStaticColor()V

    .line 653
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconColor:I

    .line 654
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDozer:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->setColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 892
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;

    if-eqz p0, :cond_a

    .line 894
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    :cond_a
    return-void
.end method

.method public setVisibleState(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 764
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 768
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 777
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;J)V

    return-void
.end method

.method public setVisibleState(IZLjava/lang/Runnable;J)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 791
    iget v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    const/4 v4, 0x0

    if-eq v1, v3, :cond_ca

    .line 792
    iput v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    .line 793
    iget-object v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_14

    .line 794
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 796
    :cond_14
    iget-object v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1b

    .line 797
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1b
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_b5

    .line 801
    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_29

    .line 804
    sget-object v8, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v9, v8

    const/high16 v8, 0x3f800000  # 1.0f

    goto :goto_2b

    :cond_29
    move-object v9, v8

    move v8, v6

    .line 806
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconAppearAmount()F

    move-result v10

    cmpl-float v11, v8, v10

    const-wide/16 v12, 0x64

    const-wide/16 v14, 0x0

    const/4 v3, 0x2

    if-eqz v11, :cond_69

    .line 808
    sget-object v11, Lcom/android/systemui/statusbar/StatusBarIconView;->ICON_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v5, v3, [F

    aput v10, v5, v4

    aput v8, v5, v7

    invoke-static {v0, v11, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 810
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 811
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    cmp-long v8, p4, v14

    if-nez v8, :cond_53

    move-wide v8, v12

    goto :goto_55

    :cond_53
    move-wide/from16 v8, p4

    :goto_55
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 813
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView$4;

    invoke-direct {v8, v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$4;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 820
    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    move v5, v7

    goto :goto_6a

    :cond_69
    move v5, v4

    :goto_6a
    if-nez v1, :cond_6f

    const/high16 v16, 0x40000000  # 2.0f

    goto :goto_71

    :cond_6f
    move/from16 v16, v6

    .line 825
    :goto_71
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    if-ne v1, v7, :cond_79

    .line 828
    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/high16 v16, 0x3f800000  # 1.0f

    .line 830
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDotAppearAmount()F

    move-result v1

    cmpl-float v8, v16, v1

    if-eqz v8, :cond_b3

    .line 832
    sget-object v8, Lcom/android/systemui/statusbar/StatusBarIconView;->DOT_APPEAR_AMOUNT:Landroid/util/Property;

    new-array v3, v3, [F

    aput v1, v3, v4

    aput v16, v3, v7

    invoke-static {v0, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    .line 834
    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 835
    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    cmp-long v3, p4, v14

    if-nez v3, :cond_9b

    goto :goto_9d

    :cond_9b
    move-wide/from16 v12, p4

    :goto_9d
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    xor-int/lit8 v1, v5, 0x1

    .line 838
    iget-object v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarIconView$5;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView$5;-><init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 847
    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    move v4, v7

    goto :goto_ca

    :cond_b3
    move v4, v5

    goto :goto_ca

    :cond_b5
    if-nez v1, :cond_ba

    const/high16 v3, 0x3f800000  # 1.0f

    goto :goto_bb

    :cond_ba
    move v3, v6

    .line 851
    :goto_bb
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconAppearAmount(F)V

    if-ne v1, v7, :cond_c3

    const/high16 v6, 0x3f800000  # 1.0f

    goto :goto_c7

    :cond_c3
    if-nez v1, :cond_c7

    const/high16 v6, 0x40000000  # 2.0f

    .line 852
    :cond_c7
    :goto_c7
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    :cond_ca
    :goto_ca
    if-nez v4, :cond_cf

    .line 858
    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->runRunnable(Ljava/lang/Runnable;)V

    :cond_cf
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarIconView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDrawable()V
    .registers 2

    const/4 v0, 0x1

    .line 381
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    return-void
.end method

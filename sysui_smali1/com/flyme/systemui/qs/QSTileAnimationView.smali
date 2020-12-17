.class public Lcom/flyme/systemui/qs/QSTileAnimationView;
.super Landroid/widget/RelativeLayout;
.source "QSTileAnimationView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QSTileAnimationView"


# instance fields
.field private mAllowAnimation:Z

.field private mColorfulPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDisableRoundCakeIds:[I

.field private mEnableRoundCakeIds:[I

.field private mForeground:Landroid/graphics/drawable/Drawable;

.field private mForegroundOpaque:Landroid/graphics/drawable/Drawable;

.field private mIsOn:Z

.field private mIvForeground:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

.field private mIvForegroundOpaque:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

.field private mIvRoundCake:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

.field private mRoundCake:Landroid/graphics/drawable/Drawable;

.field private mUseThirdTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/qs/QSTileAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/qs/QSTileAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mColorfulPaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 40
    sget v0, Lcom/android/systemui/R$drawable;->qs_shortcut_roundcake_disable:I

    const/4 v1, 0x0

    aput v0, p3, v1

    sget v0, Lcom/android/systemui/R$drawable;->qs_shortcut_enable_roundcake_anim:I

    const/4 v2, 0x1

    aput v0, p3, v2

    iput-object p3, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mEnableRoundCakeIds:[I

    new-array p2, p2, [I

    .line 42
    sget p3, Lcom/android/systemui/R$drawable;->qs_shortcut_roundcake_enable:I

    aput p3, p2, v1

    sget p3, Lcom/android/systemui/R$drawable;->qs_shortcut_disable_roundcake_anim:I

    aput p3, p2, v2

    iput-object p2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mDisableRoundCakeIds:[I

    .line 45
    iput-boolean v1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mUseThirdTheme:Z

    .line 46
    iput-boolean v2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mAllowAnimation:Z

    .line 62
    iput-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/flyme/systemui/qs/QSTileAnimationView;->setUp()V

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, v2, p1}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mColorfulPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 66
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mColorfulPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/QSTileAnimationView;->checkCustomizeThemeResourceExists()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mUseThirdTheme:Z

    return-void
.end method

.method public static getThemePath()Ljava/lang/String;
    .registers 4

    .line 231
    new-instance v0, Ljava/io/File;

    const-string v1, "data/media/obb/theme"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    return-object v1

    .line 234
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_28

    new-instance v0, Ljava/io/File;

    const-string v1, "data/media/customizecenter/theme"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    return-object v1

    :cond_28
    const-string v0, "data/data/com.meizu.customizecenter/theme"

    return-object v0
.end method

.method private setUp()V
    .registers 6

    .line 81
    new-instance v0, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    iget-object v1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;-><init>(Lcom/flyme/systemui/qs/QSTileAnimationView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvRoundCake:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    .line 83
    new-instance v0, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    iget-object v1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;-><init>(Lcom/flyme/systemui/qs/QSTileAnimationView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForegroundOpaque:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForegroundOpaque:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;->setColorful(Z)V

    .line 86
    new-instance v0, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    iget-object v1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;-><init>(Lcom/flyme/systemui/qs/QSTileAnimationView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForeground:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForeground:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;->setColorful(Z)V

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    iget-object v3, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvRoundCake:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    iget-object v4, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForegroundOpaque:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    invoke-virtual {p0, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    iget-object v2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForeground:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    invoke-virtual {p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    return-void
.end method


# virtual methods
.method public final checkCustomizeThemeResourceExists()Z
    .registers 4

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-static {}, Lcom/flyme/systemui/qs/QSTileAnimationView;->getThemePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/com.android.systemui"

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    .line 214
    sget-object v0, Lcom/flyme/systemui/qs/QSTileAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[foree] checkCustomizeThemeResourceExists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 12

    .line 116
    move-object v0, p2

    check-cast v0, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    invoke-virtual {v0}, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;->isColorful()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mColorfulPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 120
    :cond_1b
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    if-eqz v0, :cond_2d

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 243
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 244
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/QSTileAnimationView;->checkCustomizeThemeResourceExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mUseThirdTheme:Z

    return-void
.end method

.method public refreshResource()V
    .registers 3

    .line 72
    sget v0, Lcom/android/systemui/R$id;->qs_icon_tag:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 73
    instance-of v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    if-eqz v1, :cond_19

    .line 74
    check-cast v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    .line 75
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/QSTileAnimationView;->checkCustomizeThemeResourceExists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mUseThirdTheme:Z

    .line 76
    iget-boolean v1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIsOn:Z

    invoke-virtual {p0, v0, v1}, Lcom/flyme/systemui/qs/QSTileAnimationView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$Icon;Z)V

    :cond_19
    return-void
.end method

.method public setClickEnabled(Z)V
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForeground:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    if-eqz p1, :cond_8

    const p1, 0x3f666666  # 0.9f

    goto :goto_b

    :cond_8
    const p1, 0x3ee66666  # 0.45f

    :goto_b
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$Icon;Z)V
    .registers 7

    .line 137
    instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    if-eqz v0, :cond_51

    .line 138
    iput-boolean p2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIsOn:Z

    .line 139
    check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->getStaticResIds()[I

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->getAnimatedResIds()[I

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;->getThirdResIds()[I

    move-result-object p1

    .line 142
    iget-boolean v2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mUseThirdTheme:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    .line 143
    iget-object p2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    aget p1, p1, v3

    invoke-virtual {p2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/QSTileAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 145
    :cond_25
    iget-boolean p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mAllowAnimation:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_3e

    .line 146
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    aget v0, v1, v3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flyme/systemui/qs/QSTileAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_51

    .line 148
    :cond_3e
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    aget v1, v0, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flyme/systemui/qs/QSTileAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    :cond_51
    :goto_51
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForeground:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForegroundOpaque:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object p0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvRoundCake:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .registers 4

    .line 155
    iput-object p2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mForegroundOpaque:Landroid/graphics/drawable/Drawable;

    .line 156
    iput-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForegroundOpaque:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    iget-object p2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mForegroundOpaque:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvForeground:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    iget-object p2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-boolean p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mAllowAnimation:Z

    if-eqz p1, :cond_2b

    .line 163
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    if-eqz p3, :cond_20

    iget-object p3, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mEnableRoundCakeIds:[I

    aget p2, p3, p2

    goto :goto_24

    :cond_20
    iget-object p3, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mDisableRoundCakeIds:[I

    aget p2, p3, p2

    :goto_24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mRoundCake:Landroid/graphics/drawable/Drawable;

    goto :goto_3f

    .line 165
    :cond_2b
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    if-eqz p3, :cond_35

    iget-object p3, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mEnableRoundCakeIds:[I

    aget p2, p3, p2

    goto :goto_39

    :cond_35
    iget-object p3, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mDisableRoundCakeIds:[I

    aget p2, p3, p2

    :goto_39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mRoundCake:Landroid/graphics/drawable/Drawable;

    .line 167
    :goto_3f
    iget-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mIvRoundCake:Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;

    iget-object p2, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mRoundCake:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/QSTileAnimationView;->start()V

    return-void
.end method

.method public start()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mRoundCake:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_b

    .line 174
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 175
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mForegroundOpaque:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_16

    .line 179
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 180
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 183
    :cond_16
    iget-object p0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->mForeground:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_21

    .line 184
    check-cast p0, Landroid/graphics/drawable/Animatable;

    .line 185
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 188
    :cond_21
    sget-object p0, Lcom/flyme/systemui/qs/QSTileAnimationView;->TAG:Ljava/lang/String;

    const-string v0, "[foree] start: "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

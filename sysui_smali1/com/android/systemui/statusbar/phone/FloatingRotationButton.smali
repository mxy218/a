.class public Lcom/android/systemui/statusbar/phone/FloatingRotationButton;
.super Ljava/lang/Object;
.source "FloatingRotationButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/RotationButton;


# instance fields
.field private mCanShow:Z

.field private final mContext:Landroid/content/Context;

.field private final mDiameter:I

.field private mIsShowing:Z

.field private mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private final mMargin:I

.field private mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    .line 55
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->rotate_suggestion:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 57
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 60
    sget v0, Lcom/android/systemui/R$dimen;->floating_rotation_button_diameter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mDiameter:I

    .line 61
    sget v0, Lcom/android/systemui/R$dimen;->floating_rotation_button_min_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 61
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mMargin:I

    return-void
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    return-object p0
.end method

.method public getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 9

    .line 153
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getStyleRes()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 155
    sget p0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {v0, p0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p0

    .line 156
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 157
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 158
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 159
    sget p0, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v1, p0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    .line 161
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    .line 162
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3f6b851f  # 0.92f

    .line 161
    invoke-static {p0, v0, v1, v3}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v7

    .line 164
    sget p0, Lcom/android/systemui/R$attr;->singleToneColor:I

    .line 165
    invoke-static {v2, p0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    sget v5, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button:I

    const/4 v6, 0x0

    .line 164
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public hide()Z
    .registers 4

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 117
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 118
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 124
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    return p0
.end method

.method public setCanShowRotationButton(Z)V
    .registers 2

    .line 176
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    .line 177
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    if-nez p1, :cond_9

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->hide()Z

    :cond_9
    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 2

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    return-void
.end method

.method public show()Z
    .registers 11

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mCanShow:Z

    if-eqz v0, :cond_6f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    if-eqz v0, :cond_9

    goto :goto_6f

    :cond_9
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    const/16 v7, 0x8

    .line 82
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mDiameter:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mMargin:I

    const/16 v6, 0x7e8

    const/4 v8, -0x3

    move-object v1, v9

    move v2, v3

    move v4, v5

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 85
    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "FloatingRotationButton"

    .line 86
    invoke-virtual {v9, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_4c

    if-eq v1, v0, :cond_47

    const/4 v2, 0x2

    if-eq v1, v2, :cond_42

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3d

    goto :goto_50

    :cond_3d
    const/16 v1, 0x33

    .line 98
    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_50

    :cond_42
    const/16 v1, 0x35

    .line 95
    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_50

    :cond_47
    const/16 v1, 0x55

    .line 92
    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_50

    :cond_4c
    const/16 v1, 0x53

    .line 89
    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 103
    :goto_50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->updateIcon()V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-interface {v1, v2, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    :cond_6e
    return v0

    :cond_6f
    :goto_6f
    const/4 p0, 0x0

    return p0
.end method

.method public updateIcon()V
    .registers 3

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mIsShowing:Z

    if-nez v0, :cond_5

    return-void

    .line 132
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    :cond_2d
    return-void
.end method

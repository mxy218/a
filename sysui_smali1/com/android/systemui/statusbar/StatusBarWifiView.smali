.class public Lcom/android/systemui/statusbar/StatusBarWifiView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWifiView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field private mAirplaneSpacer:Landroid/view/View;

.field private mSignalSpacer:Landroid/view/View;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mVisibleState:I

.field private mWifiGroup:Landroid/widget/LinearLayout;

.field private mWifiIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .registers 4

    .line 62
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 63
    sget v0, Lcom/android/systemui/R$layout;->status_bar_wifi_group:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarWifiView;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setSlot(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->init()V

    const/4 p1, 0x0

    .line 66
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    return-object p0
.end method

.method private init()V
    .registers 2

    .line 157
    sget v0, Lcom/android/systemui/R$id;->wifi_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    .line 158
    sget v0, Lcom/android/systemui/R$id;->wifi_signal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    .line 159
    sget v0, Lcom/android/systemui/R$id;->wifi_signal_spacer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    .line 160
    sget v0, Lcom/android/systemui/R$id;->wifi_airplane_spacer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->initDotView()V

    return-void
.end method

.method private initDotView()V
    .registers 2

    .line 174
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 175
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p0, 0x800013

    .line 176
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method private initViewState()V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-ltz v0, :cond_1c

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_29

    move v1, v2

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    if-eqz v1, :cond_37

    move v1, v2

    goto :goto_38

    :cond_37
    move v1, v3

    :goto_38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    move v2, v3

    :goto_43
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Z
    .registers 7

    .line 201
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-eq v0, v1, :cond_1c

    if-ltz v1, :cond_1c

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    move v1, v3

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    if-eqz v1, :cond_33

    move v1, v3

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    if-ne v0, v1, :cond_4a

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eq v0, v1, :cond_48

    goto :goto_4a

    :cond_48
    move v0, v3

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    .line 216
    :goto_4b
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eq v1, v4, :cond_5d

    or-int/lit8 v0, v0, 0x1

    .line 218
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v1, :cond_5a

    move v2, v3

    :cond_5a
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 221
    :cond_5d
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return v0
.end method


# virtual methods
.method public applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_15

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    .line 185
    :goto_e
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    goto :goto_33

    .line 187
    :cond_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-nez v2, :cond_23

    .line 189
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->initViewState()V

    goto :goto_33

    .line 191
    :cond_23
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 192
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Z

    move-result v0

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    if-eqz v0, :cond_38

    .line 196
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_38
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    .line 149
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    .line 150
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 151
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 152
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 153
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibleState()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    .line 248
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setDecorColor(I)V
    .registers 2

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .registers 2

    .line 93
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .registers 4

    .line 118
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    if-ne p1, p2, :cond_5

    return-void

    .line 121
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    if-eqz p1, :cond_1a

    const/4 p2, 0x1

    const/16 v0, 0x8

    if-eq p1, p2, :cond_14

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_20

    .line 129
    :cond_14
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_20

    .line 125
    :cond_1a
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarWifiView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

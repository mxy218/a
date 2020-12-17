.class Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
.super Landroid/widget/FrameLayout;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestWindowView"
.end annotation


# instance fields
.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private mLayout:Landroid/view/ViewGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCancel:Z

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/recents/ScreenPinningRequest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequest;Landroid/content/Context;Z)V
    .registers 5

    .line 174
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 175
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 335
    new-instance p2, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 344
    new-instance p2, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 p2, 0x1

    .line 176
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 177
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iput-boolean p3, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/content/Context;
    .registers 1

    .line 166
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Ljava/lang/Runnable;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private inflateView(I)V
    .registers 9

    .line 233
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_b

    .line 234
    sget v2, Lcom/android/systemui/R$layout;->screen_pinning_request_sea_phone:I

    goto :goto_12

    :cond_b
    if-ne p1, v1, :cond_10

    .line 235
    sget v2, Lcom/android/systemui/R$layout;->screen_pinning_request_land_phone:I

    goto :goto_12

    .line 236
    :cond_10
    sget v2, Lcom/android/systemui/R$layout;->screen_pinning_request:I

    :goto_12
    const/4 v3, 0x0

    .line 233
    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    .line 239
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->screen_pinning_text_area:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x3

    .line 244
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_buttons:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v5

    .line 247
    iget-object v6, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v6}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$200(Lcom/android/systemui/recents/ScreenPinningRequest;)I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v6

    if-nez v6, :cond_5d

    iget-object v6, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 249
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 250
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->swapChildrenIfRtlAndVertical(Landroid/view/View;)V

    goto :goto_62

    :cond_5d
    const/16 v4, 0x8

    .line 252
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_62
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v4, Lcom/android/systemui/R$id;->screen_pinning_ok_button:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 256
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    const/4 v4, 0x4

    if-eqz v0, :cond_86

    .line 258
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_cancel_button:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 259
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_93

    .line 261
    :cond_86
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_cancel_button:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 262
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    :goto_93
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v5}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_a3

    .line 267
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    :cond_a3
    if-eqz v3, :cond_ac

    .line 269
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_ac

    goto :goto_ad

    :cond_ac
    move v1, v2

    .line 270
    :goto_ad
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v0}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$300(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 272
    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v5}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$200(Lcom/android/systemui/recents/ScreenPinningRequest;)I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 273
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description_gestural:I

    goto :goto_119

    :cond_c6
    if-eqz v1, :cond_f1

    .line 275
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_recents_group:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_home_bg_light:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_home_bg:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_ee

    .line 279
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description_accessible:I

    goto :goto_119

    .line 280
    :cond_ee
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description:I

    goto :goto_119

    .line 282
    :cond_f1
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_recents_group:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_home_bg_light:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_home_bg:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_117

    .line 286
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description_recents_invisible_accessible:I

    goto :goto_119

    .line 287
    :cond_117
    sget v1, Lcom/android/systemui/R$string;->screen_pinning_description_recents_invisible:I

    :goto_119
    if-eqz v3, :cond_13d

    .line 291
    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/android/systemui/R$id;->screen_pinning_back_icon:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 292
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/android/systemui/R$id;->screen_pinning_home_icon:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 294
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_13d
    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v5, Lcom/android/systemui/R$id;->screen_pinning_description:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 298
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    if-eqz v0, :cond_14d

    move v2, v4

    .line 300
    :cond_14d
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->screen_pinning_back_bg:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->screen_pinning_back_bg_light:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/ScreenPinningRequest;->getRequestLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private swapChildrenIfRtlAndVertical(Landroid/view/View;)V
    .registers 6

    .line 307
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    return-void

    .line 311
    :cond_12
    check-cast p1, Landroid/widget/LinearLayout;

    .line 312
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    if-ne p0, v0, :cond_42

    .line 313
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_24
    if-ge v2, p0, :cond_30

    .line 316
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 318
    :cond_30
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    sub-int/2addr p0, v0

    :goto_34
    if-ltz p0, :cond_42

    .line 320
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_34

    :cond_42
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 9

    .line 184
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v1}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$000(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 186
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 187
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v1

    .line 189
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->inflateView(I)V

    .line 190
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->screen_pinning_request_window_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 192
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 193
    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v3, 0x1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3e

    .line 195
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/high16 v6, -0x3d400000  # -96.0f

    mul-float/2addr v0, v6

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_4f

    :cond_3e
    const/high16 v6, 0x42c00000  # 96.0f

    if-ne v1, v3, :cond_49

    .line 197
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float/2addr v0, v6

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_4f

    .line 199
    :cond_49
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float/2addr v0, v6

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 201
    :goto_4f
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    .line 205
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 209
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_ab

    .line 220
    :cond_a6
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 223
    :goto_ab
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onConfigurationChanged()V
    .registers 2

    .line 331
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 332
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->inflateView(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 327
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconManager"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field protected mDemoable:Z

.field protected final mGroup:Landroid/view/ViewGroup;

.field protected final mIconSize:I

.field private mIsInDemoMode:Z

.field protected mShouldLog:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 4

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    const/4 v1, 0x1

    .line 202
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    .line 207
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 208
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    .line 209
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1050212

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    .line 212
    new-instance p1, Lcom/android/systemui/util/Utils$DisableStateTracker;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/util/Utils$DisableStateTracker;-><init>(II)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/Utils$DisableStateTracker;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_38
    return-void
.end method

.method private onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;
    .registers 5

    .line 308
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-object v0
.end method

.method private onCreateStatusBarMobileView(Ljava/lang/String;ZI)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .registers 4

    .line 318
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->fromContext(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object p0

    return-object p0
.end method

.method private onCreateStatusBarWifiView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .registers 2

    .line 312
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object p0

    return-object p0
.end method

.method private setHeightAndCenter(Landroid/widget/ImageView;I)V
    .registers 4

    .line 347
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 348
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    instance-of p2, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_11

    .line 350
    move-object p2, p0

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x10

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 352
    :cond_11
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;
    .registers 6

    .line 244
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 p3, 0x1

    if-eq v0, p3, :cond_17

    const/4 p3, 0x2

    if-eq v0, p3, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_e
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addMobileIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object p0

    return-object p0

    .line 249
    :cond_17
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addSignalIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object p0

    return-object p0

    .line 246
    :cond_20
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    return-object p0
.end method

.method protected addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 261
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p2

    .line 262
    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 264
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$dimen;->notification_status_icon_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 p4, 0x0

    .line 265
    invoke-virtual {p2, p4, p4, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 267
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p3, p2, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method protected addMobileIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/StatusBarMobileView;
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    .line 290
    iget-boolean v1, p3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->voiceVisible:Z

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    if-eqz p3, :cond_c

    .line 291
    iget v2, p3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    goto :goto_d

    :cond_c
    move v2, v0

    .line 293
    :goto_d
    invoke-direct {p0, p2, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarMobileView(Ljava/lang/String;ZI)Lcom/android/systemui/statusbar/StatusBarMobileView;

    move-result-object p2

    .line 294
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->notification_status_icon_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 297
    invoke-virtual {p2, v0, v0, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_35

    .line 302
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addMobileView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    :cond_35
    return-object p2
.end method

.method protected addSignalIcon(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 273
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarWifiView(Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;

    move-result-object p2

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_status_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p2, v1, v1, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 278
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_29

    .line 282
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addDemoWifiView(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    :cond_29
    return-object p2
.end method

.method protected createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
    .registers 3

    .line 432
    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    return-object v0
.end method

.method protected destroy()V
    .registers 1

    .line 327
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 407
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "exit"

    .line 411
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-eqz v0, :cond_17

    .line 413
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->exitDemoMode()V

    :cond_17
    const/4 p1, 0x0

    .line 416
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    goto :goto_2d

    .line 418
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->createDemoStatusIcons()Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 422
    :cond_28
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2d
    return-void
.end method

.method protected exitDemoMode()V
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->remove()V

    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    return-void
.end method

.method public isDemoable()Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoable:Z

    return p0
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .line 323
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .registers 5

    .line 239
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    return-void
.end method

.method protected onIconExternal(II)V
    .registers 4

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 332
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 333
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    return-void
.end method

.method protected onRemoveIcon(I)V
    .registers 4

    .line 356
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz v0, :cond_11

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->onRemoveIcon(Lcom/android/systemui/statusbar/StatusIconDisplayable;)V

    .line 359
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 3

    .line 363
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 364
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    return-void
.end method

.method public onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .registers 5

    .line 368
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_14

    .line 377
    :cond_d
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetMobileIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    :goto_14
    return-void

    .line 373
    :cond_15
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getWifiState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetSignalIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    return-void

    .line 370
    :cond_1d
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

.method public onSetMobileIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarMobileView;

    if-eqz p1, :cond_d

    .line 397
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarMobileView;->applyMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 400
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_16

    .line 401
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    :cond_16
    return-void
.end method

.method public onSetSignalIcon(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarWifiView;

    if-eqz p1, :cond_d

    .line 386
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarWifiView;->applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 389
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_16

    .line 390
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    :cond_16
    return-void
.end method

.method public setShouldLog(Z)V
    .registers 2

    .line 230
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    return-void
.end method

.method public shouldLog()Z
    .registers 1

    .line 234
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mShouldLog:Z

    return p0
.end method
